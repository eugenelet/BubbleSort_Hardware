`ifdef RTL
  `define CLK_PERIOD  5
`endif

`ifdef GATE
  `define CLK_PERIOD  5
`endif

`ifdef POST
  `define CLK_PERIOD  5
`endif

`define PATTERN_NUM 2
`define MAX_LATENCY 255*255*20*`PATTERN_NUM

module PATTERN(
  clk,
  rst_n,
  in_valid,
  in_data,
  out_valid,
  out_data
);
output reg        clk;
output reg        rst_n;
output reg        in_valid;
output reg  [7:0] in_data;
input             out_valid;
input       [7:0] out_data;

initial clk = 0;
always #(`CLK_PERIOD/2) clk = ~clk;

initial begin
  rst_n = 1;
  repeat(3) @(negedge clk);
  rst_n = 0;
  @(negedge clk);
  rst_n = 1;
end

integer counter;
initial begin
  for(counter=0;counter<`MAX_LATENCY;counter=counter+1)
    @(negedge clk);
  
  $display("");
  $display("FAIL: simulation time over %5d cycles!!",`MAX_LATENCY);
  $display("");
  $finish;
end

integer seed;
integer index,data_num,num,sort1,sort2;
reg [7:0] data[0:255];
reg [7:0] data_tmp;
initial begin
  seed      = 30;
  in_valid  = 0;
  in_data   = 0;
  repeat(5) @(negedge clk);
  
  for(index=0;index<`PATTERN_NUM;index=index+1) begin
    // generate test pattern
    if(index==0)
      data_num  = 2;
    else
      data_num  = 256;
    $display("");
    $display("TEST PATTERN %3d: data_num = %3d",index,data_num);
    for(num=0;num<data_num;num=num+1) begin
      @(negedge clk);
      data[num] = num;
      in_valid  = 1;
      in_data   = data[num];
    end
    @(negedge clk);
    in_valid  = 0;
    in_data   = 0;
    // generate golden output
    for(sort1=0;sort1<data_num-1;sort1=sort1+1)
      for(sort2=0;sort2<data_num-1;sort2=sort2+1)
        if(data[sort2]<data[sort2+1]) begin
          data_tmp      = data[sort2];
          data[sort2]   = data[sort2+1];
          data[sort2+1] = data_tmp;
        end
    // wait out_valid signal
    wait(out_valid==='d1)@(negedge clk);
    // check out_data
    for(num=0;num<data_num;num=num+1) begin
      if(out_valid!=='d1) begin
        $display("");
        $display("FAIL @%3d: out_valid should be 1",num);
        $display("");
        $finish;
      end
      if(out_data!==data[num]) begin
        $display("");
        $display("FAIL @%3d: user out_data=%3d, golden out_data=%3d",num,out_data,data[num]);
        $display("");
        $finish;
      end
      @(negedge clk);
    end
  end
  
  $display("");
  $display("congratulation & you pass the OT2 !!");
  $display("");
  repeat(3) @(negedge clk);
  $finish;
end
endmodule 
