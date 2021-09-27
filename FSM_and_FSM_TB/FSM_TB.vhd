LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity FSM_tb is            -- test bench entity 
end entity FSM_tb;

architecture test_bench of FSM_tb is    --architecture of the test bench
  
  component fsm is                      -- defining the component FSM_mealy_2p
    port( clk, reset: IN std_logic;
      x: IN std_logic;
      y: OUT std_logic );
 end component fsm;
 
  for DUT: fsm use entity work.fsm (mealy_2p);  -- getting the component definition into our design
  
  signal  reset,x,y : std_logic;              -- wires that will be connected to our component 
  signal clk :  std_logic:= '0';
  constant clk_period : time := 40 ns;                                               -- signals we can look at in the simulation                                              
  begin                                         
    DUT: fsm port map (clk,reset,x,y);
      
    clk_l: process is                       --producing clk with 40 ns period 
    begin 
      wait for clk_period/2 ;
      clk <= not clk ;
    end process clk_l;
      
    PD: process is 
    begin 
      reset <= '1';     wait for 20 ns;   --state is even
      reset <= '0';     wait for 20 ns;   
      x     <= '0';     wait for 40 ns;   --state dosent change
      assert y = '0'
        report "problem the output change  "
        severity error; 
      x     <= '1';     wait for 40 ns;   --state will be odd at the clk edge
      assert y = '1'                      -- this is not always true this is true for the even state only
        report "problem the output change  "
        severity error; 
      x     <= '0';     wait for 40 ns;   --state dosent change
      assert y = '1'
        report "problem the output change  "
        severity error; 
      x     <= '1';     wait for 40 ns;   --state will be even at the clk edge
      assert y = '0'                      -- this is true only for the odd state changing to even will give an error
        report "problem the output change  "
        severity error; 
      -- total time needed for full simulation is 4*40+20+10 ns= 190 ns 
      
      wait;   
    end process PD;
    
  end architecture test_bench;
      
      
      
      
      


