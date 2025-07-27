class Rv;
  rand bit [31:0] rs1, rs2;

  rand bit [4:0] addr1, addr2;
  rand bit [4:0] rd_EXE, rd_MEM, rd_WB;
  rand bit [31:0] data_EXE, data_MEM, data_WB;
  rand bit Wreg_EXE, Wreg_MEM, Wreg_WB;

  constraint no_forwarding {
    addr2 != rd_EXE;
    addr2 != rd_MEM;
    addr2 != rd_WB;
    addr1 != rd_EXE;
    addr1 != rd_MEM;
    addr1 != rd_WB;
  }
  constraint forwarding_path_3 {
    rd_WB == addr1;
    rd_WB == addr2;
  }
  constraint forwarding_path_2 {
    rd_MEM == addr1;
    rd_MEM == addr2;
  }
  constraint forwarding_path_1 {
    rd_EXE == addr1;
    rd_EXE == addr2;
  }
	constraint zero {
		addr1 == 0;
		addr2 == 0;
	}

endclass

module forwarding_tb;

  timeunit 1ns; timeprecision 100ps;

  Rv rv;
  wire [31:0] rs1F, rs2F;
  logic [31:0] rs1, rs2;
  logic [4:0] addr1, addr2;
  logic [4:0] rd_EXE, rd_MEM, rd_WB;
  logic [31:0] data_EXE, data_MEM, data_WB;
  logic Wreg_EXE, Wreg_MEM, Wreg_WB;

  forwarding dut (
      .rs1F(rs1F),
      .rs2F(rs2F),
      .rs1(rs1),
      .rs2(rs2),
      .addr1(addr1),
      .addr2(addr2),
      .rd_EXE(rd_EXE),
      .rd_MEM(rd_MEM),
      .rd_WB(rd_WB),
      .data_EXE(data_EXE),
      .data_MEM(data_MEM),
      .data_WB(data_WB),
      .Wreg_EXE(Wreg_EXE),
      .Wreg_MEM(Wreg_MEM),
      .Wreg_WB(Wreg_WB)
  );

  initial begin
    rv = new();
    rv.forwarding_path_1.constraint_mode(0);
    rv.forwarding_path_2.constraint_mode(0);
    rv.forwarding_path_3.constraint_mode(0);
    rv.no_forwarding.constraint_mode(1);
		rv.zero.constraint_mode(1);
		$display("Test 1: no forwarding");
		repeat (5) begin
			void'(rv.randomize());
			rv.zero.constraint_mode(0);
			rs1 = rv.rs1;
			rs2 = rv.rs2;
			addr1 = rv.addr1;
			addr2 = rv.addr2;
			rd_EXE = rv.rd_EXE;
			rd_MEM = rv.rd_MEM;
			rd_WB = rv.rd_WB;
			data_EXE = rv.data_EXE;
			data_MEM = rv.data_MEM;
			data_WB = rv.data_WB;
			Wreg_EXE = rv.Wreg_EXE;
			Wreg_MEM = rv.Wreg_MEM;
			Wreg_WB = rv.Wreg_WB;
    	//$display("rs1F=%d, rs2F=%d, rs1=%d, rs2=%d, addr1=%d, addr2=%d",
				//rs1F, rs2F, rs1, rs2, addr1, addr2);
      #10;
			if (addr1 == 0)zero_test_rs1 : assert(rs1F == 0);
			else rs1_no_forwarding : assert (rs1 == rs1F);
			if (addr2 == 0)zero_test_rs2 : assert(rs2F == 0);
			else rs2_no_forwarding : assert (rs2 == rs2F);
      
      
			 
			 
    end

    rv.forwarding_path_1.constraint_mode(0);
    rv.forwarding_path_2.constraint_mode(0);
    rv.forwarding_path_3.constraint_mode(1);
    rv.no_forwarding.constraint_mode(0);
		rv.zero.constraint_mode(1);
		$display("Test 2: WB forwarding");
    repeat (5) begin
						void'(rv.randomize());
						rv.zero.constraint_mode(0);
						rs1 = rv.rs1;
						rs2 = rv.rs2;
						addr1 = rv.addr1;
						addr2 = rv.addr2;
						rd_EXE = rv.rd_EXE;
						rd_MEM = rv.rd_MEM;
						rd_WB = rv.rd_WB;
						data_EXE = rv.data_EXE;
						data_MEM = rv.data_MEM;
						data_WB = rv.data_WB;
						Wreg_EXE = rv.Wreg_EXE;
						Wreg_MEM = rv.Wreg_MEM;
						Wreg_WB = rv.Wreg_WB;
      #10;
			   //	$display("rs1F=%d, rs2F=%d, rs1=%d, rs2=%d, addr1=%d, addr2=%d, rd_WB=%d, data_WB=%d, Wreg_WB=%d",
				//rs1F, rs2F, rs1, rs2, addr1, addr2, rd_WB, data_WB, Wreg_WB);
      
      
			if (addr1 == 0) zero_test_rs1_WB : assert(rs1F == 0);
			else rs1F_forwarding_path_WB : assert (rs1F == ((Wreg_WB) ? data_WB : rs1));
			if (addr2 == 0) zero_test_rs2_WB : assert(rs2F == 0);
			else rs2F_forwarding_path_WB : assert (rs2F == ((Wreg_WB) ? data_WB : rs2));

    end

    rv.forwarding_path_1.constraint_mode(0);
    rv.forwarding_path_2.constraint_mode(1);
    rv.forwarding_path_3.constraint_mode(1);
    rv.no_forwarding.constraint_mode(0);
		rv.zero.constraint_mode(1);
		$display("Test 3: MEM forwarding");
    repeat (5) begin
						void'(rv.randomize());
						rv.zero.constraint_mode(0);
						rs1 = rv.rs1;
						rs2 = rv.rs2;
						addr1 = rv.addr1;
						addr2 = rv.addr2;
						rd_EXE = rv.rd_EXE;
						rd_MEM = rv.rd_MEM;
						rd_WB = rv.rd_WB;
						data_EXE = rv.data_EXE;
						data_MEM = rv.data_MEM;
						data_WB = rv.data_WB;
						Wreg_EXE = rv.Wreg_EXE;
						Wreg_MEM = rv.Wreg_MEM;
						Wreg_WB = rv.Wreg_WB;
			#10;
      
    
			if (addr1 == 0) zero_test_rs1_MEM : assert(rs1F == 0);
			else rs1F_forwarding_path_MEM : assert (rs1F == ((Wreg_MEM) ? data_MEM : ((Wreg_WB) ? data_WB : rs1)));
			if (addr2 == 0) zero_test_rs2_MEM : assert(rs2F == 0);
			else  rs2F_forwarding_path_MEM : assert (rs2F == ((Wreg_MEM) ? data_MEM : ((Wreg_WB) ? data_WB : rs2)));
    end

    rv.forwarding_path_1.constraint_mode(1);
    rv.forwarding_path_2.constraint_mode(1);
    rv.forwarding_path_3.constraint_mode(1);
    rv.no_forwarding.constraint_mode(0);
		rv.zero.constraint_mode(1);
		$display("Test 4: EXE forwarding");
    repeat (5) begin
						void'(rv.randomize());
						rv.zero.constraint_mode(0);
						rs1 = rv.rs1;
						rs2 = rv.rs2;
						addr1 = rv.addr1;
						addr2 = rv.addr2;
						rd_EXE = rv.rd_EXE;
						rd_MEM = rv.rd_MEM;
						rd_WB = rv.rd_WB;
						data_EXE = rv.data_EXE;
						data_MEM = rv.data_MEM;
						data_WB = rv.data_WB;
						Wreg_EXE = rv.Wreg_EXE;
						Wreg_MEM = rv.Wreg_MEM;
						Wreg_WB = rv.Wreg_WB;
      #10
			
      
			if (addr1 == 0) zero_test_rs1_EXE : assert(rs1F == 0);
			else rs1F_forwarding_path_EXE : assert (rs1F == ((Wreg_EXE) ? data_EXE : ((Wreg_MEM) ? data_MEM : ((Wreg_WB) ? data_WB : rs1))));
			if (addr2 == 0) zero_test_rs2_EXE : assert(rs2F == 0);
			else rs2F_forwarding_path_EXE : assert (rs2F == ((Wreg_EXE) ? data_EXE : ((Wreg_MEM) ? data_MEM : ((Wreg_WB) ? data_WB : rs2))));
    end
		
		$finish;

  end

endmodule
