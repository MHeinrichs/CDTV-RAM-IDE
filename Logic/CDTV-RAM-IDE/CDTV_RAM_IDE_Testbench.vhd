--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:29:54 06/20/2016
-- Design Name:   
-- Module Name:   C:/Users/Matze/Amiga/Hardwarehacks/CDTV-RAM-IDE/Logic/CDTV-RAM-IDE/CDTV_RAM_IDE_Testbench.vhd
-- Project Name:  CDTV-RAM-IDE
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM_IDE_AUTOCONFIG
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CDTV_RAM_IDE_Testbench IS
END CDTV_RAM_IDE_Testbench;
 
ARCHITECTURE behavior OF CDTV_RAM_IDE_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM_IDE_AUTOCONFIG
    PORT(
         A : IN  std_logic_vector(23 downto 1);
         D : INOUT  std_logic_vector(15 downto 0);
         AS : IN  std_logic;
         AS_AMIGA : INOUT  std_logic;
         DTACK : OUT  std_logic;
         RW : IN  std_logic;
         UDS : IN  std_logic;
         LDS : IN  std_logic;
         BGACK : IN  std_logic;
         BERR : IN  std_logic;
         RESET : IN  std_logic;
         AMIGA_CLK : IN  std_logic;
         ARAM : OUT  std_logic_vector(11 downto 0);
         DRAM : INOUT  std_logic_vector(15 downto 0);
         BA : OUT  std_logic_vector(1 downto 0);
         LDQM : OUT  std_logic;
         UDQM : OUT  std_logic;
         CKE : OUT  std_logic;
         CLK_MEM : OUT  std_logic;
         MEM_WE : OUT  std_logic;
         CAS : OUT  std_logic;
         RAS : OUT  std_logic;
         MEM_CS : OUT  std_logic;
         IDE_A : OUT  std_logic_vector(2 downto 0);
         IDE_CS : OUT  std_logic_vector(1 downto 0);
         IDE_W : OUT  std_logic;
         IDE_R : OUT  std_logic;
         IDE_WAIT : IN  std_logic;
         IDE_IRQ : IN  std_logic;
         ROM_BANK : OUT  std_logic_vector(3 downto 0);
         ROM_OE : OUT  std_logic;
         ROM_WE : OUT  std_logic;
         MEM_OFF : IN  std_logic;
         IDE_OFF : IN  std_logic;
         CLK50M : IN  std_logic
        );
    END COMPONENT;
    COMPONENT mt48lc8m16a2
	 PORT (
        BA0       : IN    std_logic := 'U';
        BA1       : IN    std_logic := 'U';
        DQML      : IN    std_logic := 'U';
        DQMU      : IN    std_logic := 'U';
        DQ0       : INOUT std_logic := 'U';
        DQ1       : INOUT std_logic := 'U';
        DQ2       : INOUT std_logic := 'U';
        DQ3       : INOUT std_logic := 'U';
        DQ4       : INOUT std_logic := 'U';
        DQ5       : INOUT std_logic := 'U';
        DQ6       : INOUT std_logic := 'U';
        DQ7       : INOUT std_logic := 'U';
        DQ8       : INOUT std_logic := 'U';
        DQ9       : INOUT std_logic := 'U';
        DQ10      : INOUT std_logic := 'U';
        DQ11      : INOUT std_logic := 'U';
        DQ12      : INOUT std_logic := 'U';
        DQ13      : INOUT std_logic := 'U';
        DQ14      : INOUT std_logic := 'U';
        DQ15      : INOUT std_logic := 'U';
        CLK       : IN    std_logic := 'U';
        CKE       : IN    std_logic := 'U';
        A0        : IN    std_logic := 'U';
        A1        : IN    std_logic := 'U';
        A2        : IN    std_logic := 'U';
        A3        : IN    std_logic := 'U';
        A4        : IN    std_logic := 'U';
        A5        : IN    std_logic := 'U';
        A6        : IN    std_logic := 'U';
        A7        : IN    std_logic := 'U';
        A8        : IN    std_logic := 'U';
        A9        : IN    std_logic := 'U';
        A10       : IN    std_logic := 'U';
        A11       : IN    std_logic := 'U';
        WENeg     : IN    std_logic := 'U';
        RASNeg    : IN    std_logic := 'U';
        CSNeg     : IN    std_logic := 'U';
        CASNeg    : IN    std_logic := 'U'
    );
	 END COMPONENT;
   --Inputs
   signal A : std_logic_vector(23 downto 1) := (others => '0');
   signal AS : std_logic := '1';
   signal RW : std_logic := '1';
   signal UDS : std_logic := '1';
   signal LDS : std_logic := '1';
   signal BGACK : std_logic := '1';
   signal BERR : std_logic := '1';
   signal RESET : std_logic := '0';
   signal AMIGA_CLK : std_logic := '0';
   signal IDE_WAIT : std_logic := '1';
   signal IDE_IRQ : std_logic := '1';
   signal MEM_OFF : std_logic := '1';
   signal IDE_OFF : std_logic := '1';
   signal CLK50M : std_logic := '0';

	--BiDirs
   signal D : std_logic_vector(15 downto 0);
   signal AS_AMIGA : std_logic;
   signal DRAM : std_logic_vector(15 downto 0);

 	--Outputs
   signal DTACK : std_logic;
   signal ARAM : std_logic_vector(11 downto 0);
   signal BA : std_logic_vector(1 downto 0);
   signal LDQM : std_logic;
   signal UDQM : std_logic;
   signal CKE : std_logic;
   signal CLK_MEM : std_logic;
   signal MEM_WE : std_logic;
   signal CAS : std_logic;
   signal RAS : std_logic;
   signal MEM_CS : std_logic;
   signal IDE_A : std_logic_vector(2 downto 0);
   signal IDE_CS : std_logic_vector(1 downto 0);
   signal IDE_W : std_logic;
   signal IDE_R : std_logic;
   signal ROM_BANK : std_logic_vector(3 downto 0);
   signal ROM_OE : std_logic;
   signal ROM_WE : std_logic;
   -- Clock period definitions
   constant AMIGA_CLK_period : time := 140 ns;
   constant CLK50M_period : time := 20 ns;
	--other
   signal Cycle68000 : std_logic :='0';
	signal Address : std_logic_vector(23 downto 0) := (others => '0');
	signal Word  : std_logic :='0';
	signal Data  : std_logic_vector(15 downto 0) := (others => '0');
	signal ReadData  : std_logic :='0';
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM_IDE_AUTOCONFIG PORT MAP (
          A => A,
          D => D,
          AS => AS,
          AS_AMIGA => AS_AMIGA,
          DTACK => DTACK,
          RW => RW,
          UDS => UDS,
          LDS => LDS,
          BGACK => BGACK,
          BERR => BERR,
          RESET => RESET,
          AMIGA_CLK => AMIGA_CLK,
          ARAM => ARAM,
          DRAM => DRAM,
          BA => BA,
          LDQM => LDQM,
          UDQM => UDQM,
          CKE => CKE,
          CLK_MEM => CLK_MEM,
          MEM_WE => MEM_WE,
          CAS => CAS,
          RAS => RAS,
          MEM_CS => MEM_CS,
          IDE_A => IDE_A,
          IDE_CS => IDE_CS,
          IDE_W => IDE_W,
          IDE_R => IDE_R,
          IDE_WAIT => IDE_WAIT,
          IDE_IRQ => IDE_IRQ,
          ROM_BANK => ROM_BANK,
          ROM_OE => ROM_OE,
          ROM_WE => ROM_WE,
          MEM_OFF => MEM_OFF,
          IDE_OFF => IDE_OFF,
          CLK50M => CLK50M
        );
	SDRAM: mt48lc8m16a2 PORT MAP(
        BA0 	=> BA(0),
        BA1    => BA(1),
        DQML   => LDQM,
        DQMU   => UDQM,
        DQ0    => DRAM(0),
        DQ1    => DRAM(1),
        DQ2    => DRAM(2),
        DQ3    => DRAM(3),
        DQ4    => DRAM(4),
        DQ5    => DRAM(5),
        DQ6    => DRAM(6),
        DQ7    => DRAM(7),
        DQ8    => DRAM(8),
        DQ9    => DRAM(9),
        DQ10   => DRAM(10),
        DQ11   => DRAM(11),
        DQ12   => DRAM(12),
        DQ13   => DRAM(13),
        DQ14   => DRAM(14),
        DQ15   => DRAM(15),
        CLK    => CLK_MEM,
        CKE    => CKE,
        A0     => ARAM(0),
        A1     => ARAM(1),
        A2     => ARAM(2),
        A3     => ARAM(3),
        A4     => ARAM(4),
        A5     => ARAM(5),
        A6     => ARAM(6),
        A7     => ARAM(7),
        A8     => ARAM(8),
        A9     => ARAM(9),
        A10    => ARAM(10),
        A11    => ARAM(11),
        WENeg  => MEM_WE,
        RASNeg => RAS,
        CSNeg  => MEM_CS,
        CASNeg => CAS
		);

   -- Clock process definitions
   AMIGA_CLK_process :process
   begin
		AMIGA_CLK <= '0';
		wait for AMIGA_CLK_period/2;
		AMIGA_CLK <= '1';
		wait for AMIGA_CLK_period/2;
   end process;
  
   CLK50M_process :process
   begin
		CLK50M <= '0';
		wait for CLK50M_period/2;
		CLK50M <= '1';
		wait for CLK50M_period/2;
   end process;
 

   M68k_process :process
   begin		
		AS		<='1';
		UDS	<='1';
		LDS	<='1';
		RW		<='1';
	   A <= "11111111111111111111111";
		D <= "ZZZZZZZZZZZZZZZZ";
		Data <="ZZZZZZZZZZZZZZZZ";
		wait until Cycle68000='1' and rising_edge(AMIGA_CLK);
		AS		<='1';
		UDS	<='1';
		LDS	<='1';
		RW		<='1';
		wait until falling_edge(AMIGA_CLK);
		A(23 downto 1) <= Address(23 downto 1);
		wait until rising_edge(AMIGA_CLK);
		AS		<='0';
		RW		<= ReadData;		
		if(ReadData='1')then
			UDS <= Address(0);
			if(Word = '1' or Address(0)= '1') then
				LDS <= '0';
			else
				LDS <= '1';
			end if;
		else
			UDS <= '1';
			LDS <= '1';
		end if;
		wait until falling_edge(AMIGA_CLK);
		D <= "ZZZZZZZZZZZZZZZZ";
		wait until rising_edge(AMIGA_CLK);
		if(ReadData='0')then
			UDS <= Address(0);
			if(Word = '1' or Address(0)= '1') then
				LDS <= '0';
			else
				LDS <= '1';
			end if;
			D <= Data;
		end if;
		wait until rising_edge(AMIGA_CLK);
		if(ReadData='1')then
			Data <=D;
		end if;
		wait until falling_edge(AMIGA_CLK);
		if(ReadData='1')then
			Data <=D;
		end if;
		AS		<='1';
		UDS	<='1';
		LDS	<='1';
		wait until rising_edge(AMIGA_CLK);
		Data <="ZZZZZZZZZZZZZZZZ";
   end process;


   -- Stimulus process
   stim_proc: process
   begin		
	
	
      -- hold reset state for 100 ns.
      wait for 200 us;	
		RESET <='1';
		Word  <='1';
      wait for AMIGA_CLK_period*10;
		wait until rising_edge(AMIGA_CLK);
      -- insert stimulus here 
		Address <=x"E80048";		
		Data <=x"2000";
		ReadData<='0';
		Cycle68000<='1';
		wait until falling_edge(		AS);
		Cycle68000<='0';
		wait until rising_edge(		AS);

		Address <=x"E80048";		
		Data <=x"E900";
		ReadData<='0';
		Cycle68000<='1';
		wait for AMIGA_CLK_period*2;
		Cycle68000<='0';
		wait until rising_edge(		AS);

		Address <=x"200000";		
		Data <=x"1234";
		ReadData<='0';
		Cycle68000<='1';
		wait until falling_edge(		AS);
		Cycle68000<='0';
		wait until rising_edge(		AS);

		Address <=x"200002";		
		Data <=x"5678";
		ReadData<='0';
		Cycle68000<='1';
		wait until falling_edge(		AS);
		Cycle68000<='0';
		wait until rising_edge(		AS);



		Address <=x"200000";		
		Data <= "ZZZZZZZZZZZZZZZZ";
		ReadData <='1';
		Cycle68000 <='1';
		wait until falling_edge(		AS);
		Cycle68000 <='0';
		wait until rising_edge(		AS);

		Address <=x"200002";		
		Data <= "ZZZZZZZZZZZZZZZZ";
		ReadData<='1';
		Cycle68000<='1';
		wait until falling_edge(		AS);
		Cycle68000<='0';
		wait until rising_edge(		AS);


      wait for AMIGA_CLK_period*4;
      wait for AMIGA_CLK_period*4;
		
      wait;
   end process;

END;
