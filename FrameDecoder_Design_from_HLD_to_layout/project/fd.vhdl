entity FD is
port  (
	ck    	: in	bit;
	vdd   	: in	bit;
	vss   	: in	bit;
	word_in	: in	bit_vector(7 downto 0);
	reset 	: in	bit;
	error_f : out	bit;
	data 	: out   bit_vector(7 downto 0);
	address : out	bit_vector(7 downto 0)

	);
end FD;

architecture MOORE of FD is
  type A_STATE_TYPE is (A_SOF, A_ID,A_add_s1,A_add_s2,A_LSB1_0,A_LSB1_1,A_MSB_0,A_MSB_1,A_LSB2_0,A_LSB2_1,A_LSB3_0,A_LSB3_1,A_EOF1,A_EOF2,A_EOF3,A_EOF4,A_EOF5,A_EOF6,A_EOF7,A_EOF8,A_EOF9,A_EOF10,A_EOF11,A_EOF12,A_Error_s);
  type B_STATE_TYPE is (B_SOF, B_ID,B_add_s1,B_add_s2,B_LSB1_0,B_LSB1_1,B_MSB_0,B_MSB_1,B_LSB2_0,B_LSB2_1,B_LSB3_0,B_LSB3_1,B_EOF1,B_EOF2,B_EOF3,B_EOF4,B_EOF5,B_EOF6,B_EOF7,B_EOF8,B_EOF9,B_EOF10,B_EOF11,B_EOF12,B_Error_s);
  type c_STATE_TYPE is (c_SOF, c_ID,c_add_s1,c_add_s2,c_LSB1_0,c_LSB1_1,c_MSB_0,c_MSB_1,c_LSB2_0,c_LSB2_1,c_LSB3_0,c_LSB3_1,c_EOF1,c_EOF2,c_EOF3,c_EOF4,c_EOF5,c_EOF6,c_EOF7,c_EOF8,c_EOF9,c_EOF10,c_EOF11,c_EOF12,c_Error_s);
  type D_STATE_TYPE is (D_SOF, D_ID,D_add_s1,D_add_s2,D_LSB1_0,D_LSB1_1,D_MSB_0,D_MSB_1,D_LSB2_0,D_LSB2_1,D_LSB3_0,D_LSB3_1,D_EOF1,D_EOF2,D_EOF3,D_EOF4,D_EOF5,D_EOF6,D_EOF7,D_EOF8,D_EOF9,D_EOF10,D_EOF11,D_EOF12,D_Error_s);
  type E_STATE_TYPE is (E_SOF, E_ID,E_add_s1,E_add_s2,E_LSB1_0,E_LSB1_1,E_MSB_0,E_MSB_1,E_LSB2_0,E_LSB2_1,E_LSB3_0,E_LSB3_1,E_EOF1,E_EOF2,E_EOF3,E_EOF4,E_EOF5,E_EOF6,E_EOF7,E_EOF8,E_EOF9,E_EOF10,E_EOF11,E_EOF12,E_Error_s);
  type F_STATE_TYPE is (F_SOF, F_ID,F_add_s1,F_add_s2,F_LSB1_0,F_LSB1_1,F_MSB_0,F_MSB_1,F_LSB2_0,F_LSB2_1,F_LSB3_0,F_LSB3_1,F_EOF1,F_EOF2,F_EOF3,F_EOF4,F_EOF5,F_EOF6,F_EOF7,F_EOF8,F_EOF9,F_EOF10,F_EOF11,F_EOF12,F_Error_s);
  type G_STATE_TYPE is (G_SOF, G_ID,G_add_s1,G_add_s2,G_LSB1_0,G_LSB1_1,G_MSB_0,G_MSB_1,G_LSB2_0,G_LSB2_1,G_LSB3_0,G_LSB3_1,G_EOF1,G_EOF2,G_EOF3,G_EOF4,G_EOF5,G_EOF6,G_EOF7,G_EOF8,G_EOF9,G_EOF10,G_EOF11,G_EOF12,G_Error_s);
  type H_STATE_TYPE is (H_SOF, H_ID,H_add_s1,H_add_s2,H_LSB1_0,H_LSB1_1,H_MSB_0,H_MSB_1,H_LSB2_0,H_LSB2_1,H_LSB3_0,H_LSB3_1,H_EOF1,H_EOF2,H_EOF3,H_EOF4,H_EOF5,H_EOF6,H_EOF7,H_EOF8,H_EOF9,H_EOF10,H_EOF11,H_EOF12,H_Error_s);


 signal A_NS, A_CS 	: A_STATE_TYPE;
 signal B_NS,B_CS	: B_STATE_TYPE;
 signal c_NS, c_CS 	: c_STATE_TYPE;
 signal D_NS, D_CS 	: D_STATE_TYPE;
 signal E_NS, E_CS 	: E_STATE_TYPE;
 signal F_NS, F_CS 	: F_STATE_TYPE;
 signal G_NS, G_CS 	: G_STATE_TYPE;
 signal H_NS, H_CS 	: H_STATE_TYPE;

--pragma CURRENT_STATE A_CS 	FSM_A	
--pragma NEXT_STATE    A_NS	FSM_A
--pragma CLOCK         CK	FSM_A
--pragma frist_state   A_SOF	FSM_A

--pragma CURRENT_STATE B_CS	FSM_B
--pragma NEXT_STATE    B_NS	FSM_B
--pragma CLOCK         CK	FSM_B
--pragma frist_state   B_SOF	FSM_B

--pragma CURRENT_STATE c_CS	FSM_c
--pragma NEXT_STATE    c_NS	FSM_c
--pragma CLOCK         CK	FSM_c
--pragma frist_state   c_SOF	FSM_c

--pragma CURRENT_STATE D_CS	FSM_D
--pragma NEXT_STATE    D_NS	FSM_D
--pragma CLOCK         CK	FSM_D
--pragma frist_state   D_SOF	FSM_D

--pragma CURRENT_STATE E_CS	FSM_E
--pragma NEXT_STATE    E_NS	FSM_E
--pragma CLOCK         CK	FSM_E
--pragma frist_state   E_SOF	FSM_E

--pragma CURRENT_STATE F_CS	FSM_F
--pragma NEXT_STATE    F_NS	FSM_F
--pragma CLOCK         CK	FSM_F
--pragma frist_state   F_SOF	FSM_F

--pragma CURRENT_STATE G_CS	FSM_G
--pragma NEXT_STATE    G_NS	FSM_G
--pragma CLOCK         CK	FSM_G
--pragma frist_state   G_SOF	FSM_G

--pragma CURRENT_STATE H_CS	FSM_H
--pragma NEXT_STATE    H_NS	FSM_H
--pragma CLOCK         CK	FSM_H
--pragma frist_state   H_SOF	FSM_H

begin
-- Process (1): Transition and Generation functions


A_1:  process (A_CS, word_in, reset)
   begin
-- Next state Transition function = f(inputs)
    if (reset='1') then
      A_NS <= A_SOF;
   
    else
   
      case A_CS is

       -- A_SOF state
	when A_SOF =>
          if (word_in="01111110") then    -- 7E input 
            A_NS <= A_ID;
          else
            A_NS <= A_Error_s;
          end if;

	-- A_ID state
        when A_ID =>
          if (word_in ="10000000") then	  -- 80 input	
            A_NS <= A_add_s1;
	  elsif (word_in ="10000001") then -- 81 input	
	    A_NS <= A_add_s2;
          else
            A_NS <= A_Error_s;
          end if;

	-- A_add_s1 state
        when A_add_s1 =>
	   if ( word_in(0) = '1') 
		then A_NS <= A_LSB1_1;
	   else
		A_NS <= A_LSB1_0;
	   end if;


	-- A_add_s2 state
	when A_add_s2 =>
	   if ( word_in(0) = '1') 
		then A_NS <= A_MSB_1;
	   else
		A_NS <= A_MSB_0;
	   end if;


	-- A_MSB_0 state
        when A_MSB_0 =>
       	   if ( word_in(0) = '1') 
		then A_NS <= A_LSB2_1;
	   else
		A_NS <= A_LSB2_0;
	   end if;

	-- A_MSB_1 state
        when A_MSB_1 =>
       	   if ( word_in(0) = '1') 
		then A_NS <= A_LSB3_1;
	   else
		A_NS <= A_LSB3_0;
	   end if;


	--A_LSB1_0 state
	when A_LSB1_0 =>
	   if ( word_in(0) = '1') 
		then A_NS <= A_EOF2;
	   else
		A_NS <= A_EOF1;
	   end if;

	--A_LSB1_1 state
	when A_LSB1_1 =>
	   if ( word_in(0) = '1') 
		then A_NS <= A_EOF4;
	   else
		A_NS <= A_EOF3;
	   end if;

	--A_LSB2_0 state
	when A_LSB2_0 =>
	   if ( word_in(0) = '1') 
		then A_NS <= A_EOF6;
	   else
		A_NS <= A_EOF5;
	   end if;

    	--A_LSB2_1 state
	when A_LSB2_1 =>
	   if ( word_in(0) = '1') 
		then A_NS <= A_EOF8;
	   else
		A_NS <= A_EOF7;
	   end if;

	--A_LSB3_0 state
	when A_LSB3_0 =>
	   if ( word_in(0) = '1') 
		then A_NS <= A_EOF10;
	   else
		A_NS <= A_EOF9;
	   end if;

	--A_LSB3_1 state
	when A_LSB3_1 =>
	   if ( word_in(0) = '1') 
		then A_NS <= A_EOF12;
	   else
		A_NS <= A_EOF11;
	   end if;


	-- A_EOF1 state
	when A_EOF1 => 
	  if (word_in ="11100111" ) then
	    A_NS <= A_SOF;
	  else
	    A_NS <= A_Error_s;
	  end if; 

	-- A_EOF2 state
	when A_EOF2 => 
	  if (word_in ="11100111" ) then
	    A_NS <= A_SOF;
	  else
	    A_NS <= A_Error_s;
	  end if; 

	-- A_EOF3 state
	when A_EOF3 => 
	  if (word_in ="11100111" ) then
	    A_NS <= A_SOF;
	  else
	    A_NS <= A_Error_s;
	  end if; 

	-- A_EOF4 state
	when A_EOF4 => 
	  if (word_in ="11100111" ) then
	    A_NS <= A_SOF;
	  else
	    A_NS <= A_Error_s;
	  end if; 

	-- A_EOF5 state
	when A_EOF5 => 
	  if (word_in ="11100111" ) then
	    A_NS <= A_SOF;
	  else
	    A_NS <= A_Error_s;
	  end if; 

	-- A_EOF6 state
	when A_EOF6 => 
	  if (word_in ="11100111" ) then
	    A_NS <= A_SOF;
	  else
	    A_NS <= A_Error_s;
	  end if; 

	-- A_EOF7 state
	when A_EOF7 => 
	  if (word_in ="11100111" ) then
	    A_NS <= A_SOF;
	  else
	    A_NS <= A_Error_s;
	  end if; 

	-- A_EOF8 state
	when A_EOF8 => 
	  if (word_in ="11100111" ) then
	    A_NS <= A_SOF;
	  else
	    A_NS <= A_Error_s;
	  end if; 

	-- A_EOF9 state
	when A_EOF9 => 
	  if (word_in ="11100111" ) then
	    A_NS <= A_SOF;
	  else
	    A_NS <= A_Error_s;
	  end if; 

	-- A_EOF10 state
	when A_EOF10 => 
	  if (word_in ="11100111" ) then
	    A_NS <= A_SOF;
	  else
	    A_NS <= A_Error_s;
	  end if; 

	-- A_EOF11 state
	when A_EOF11 => 
	  if (word_in ="11100111" ) then
	    A_NS <= A_SOF;
	  else
	    A_NS <= A_Error_s;
	  end if; 

	-- A_EOF12 state
	when A_EOF12 => 
	  if (word_in ="11100111" ) then
	    A_NS <= A_SOF;
	  else
	    A_NS <= A_Error_s;
	  end if; 


	-- A_Error_s state
	when A_Error_s =>
	  if (word_in = "01111110") then
	    A_NS <= A_ID;
	  else
	    A_NS <= A_Error_s;
	  end if;

--	when others =>
--	   NULL;

      end case;
    end if;
-- output generation function =f(states)
    case A_CS is

       -- A_SOF state
	when A_SOF =>
		address(0) <= '0';
		error_f	   <= '0';          
		data(0)	   <= '0';

	-- A_ID state
        when A_ID =>
		error_f	   <= '0';          

	-- A_add_s1 state
        when A_add_s1 =>
		 
		

	-- A_add_s2 state
	when A_add_s2 =>
		 

	-- A_MSB_0 state
        when A_MSB_0 =>
		address(0) <= '0';
		          

	-- A_MSB_1 state
        when A_MSB_1 =>
		address(0) <= '1';
		          

	--A_LSB1_0 state
	when A_LSB1_0 =>
		address(0) <= '0';
		          

	--A_LSB1_1 state
	when A_LSB1_1 =>
		address(0) <= '1';
		          

	--A_LSB2_0 state
	when A_LSB2_0 =>
		          
		data(0)	   <= '0';

    	--A_LSB2_1 state
	when A_LSB2_1 =>
		          
		data(0)	   <= '1';
	--A_LSB3_0 state
	when A_LSB3_0 =>
			address(0) <= '1';	          
		data(0)	   <= '0';

	--A_LSB3_1 state
	when A_LSB3_1 =>
		          		address(0) <= '1';
		data(0)	   <= '1';

	-- A_EOF1 state
	when A_EOF1 => 
		          
		data(0)	   <= '0';
	-- A_EOF2 state
	when A_EOF2 => 
		          
		data(0)	   <= '1';
	-- A_EOF3 state
	when A_EOF3 => 
		          		address(0) <= '1';
		data(0)	   <= '0';

	-- A_EOF4 state
	when A_EOF4 =>
		          		address(0) <= '1';
		data(0)	   <= '1';

	-- A_EOF5 state
	when A_EOF5 => 
		          
		data(0)	   <= '0';

	-- A_EOF6 state
	when A_EOF6 => 
		          
		data(0)	   <= '1';

	-- A_EOF7 state
	when A_EOF7 => 
		          
		data(0)	   <= '0';

	-- A_EOF8 state
	when A_EOF8 => 
		          
		data(0)	   <= '1';

	-- A_EOF9 state
	when A_EOF9 => 
		          		address(0) <= '1';
		data(0)	   <= '0';

	-- A_EOF10 state
	when A_EOF10 => 
		          		address(0) <= '1';
		data(0)	   <= '1';

	-- A_EOF11 state
	when A_EOF11 => 
		          		address(0) <= '1';
		data(0)	   <= '0';

	-- A_EOF12 state
	when A_EOF12 => 
		          		address(0) <= '1';
		data(0)	   <= '1';

	-- A_Error_s state
	when A_Error_s =>
		address(0) <= '0';
		error_f	   <= '1';          
		data(0)	   <= '0';
	when others =>
	   NULL;

  end case;

end process A_1	;

-- Process (2): State update (sequential)
A_2:  process(ck)
  begin
    if (ck='1' and not ck'stable) then
      A_CS <= A_NS;

    end if;
  end process;

--------------------------------------------------------------------------------------------
-- Process (1): Transition and Generation functions


B_1:  process (B_CS, word_in, reset)
   begin
-- Next state Transition function = f(inputs)
    if (reset='1') then
      B_NS <= B_SOF;
   
    else
   
      case B_CS is

       -- B_SOF state
	when B_SOF =>
          if (word_in="01111110") then    -- 7E input 
            B_NS <= B_ID;
          else
            B_NS <= B_Error_s;
          end if;

	-- B_ID state
        when B_ID =>
          if (word_in ="10000000") then	  -- 80 input	
            B_NS <= B_add_s1;
	  elsif (word_in ="10000001") then -- 81 input	
	    B_NS <= B_add_s2;
          else
            B_NS <= B_Error_s;
          end if;

	-- B_add_s1 state
        when B_add_s1 =>
	   if ( word_in(1) = '1') 
		then B_NS <= B_LSB1_1;
	   else
		B_NS <= B_LSB1_0;
	   end if;


	-- B_add_s2 state
	when B_add_s2 =>
	   if ( word_in(1) = '1') 
		then B_NS <= B_MSB_1;
	   else
		B_NS <= B_MSB_0;
	   end if;


	-- B_MSB_0 state
        when B_MSB_0 =>
       	   if ( word_in(1) = '1') 
		then B_NS <= B_LSB2_1;
	   else
		B_NS <= B_LSB2_0;
	   end if;

	-- B_MSB_1 state
        when B_MSB_1 =>
       	   if ( word_in(1) = '1') 
		then B_NS <= B_LSB3_1;
	   else
		B_NS <= B_LSB3_0;
	   end if;


	--B_LSB1_0 state
	when B_LSB1_0 =>
	   if ( word_in(1) = '1') 
		then B_NS <= B_EOF2;
	   else
		B_NS <= B_EOF1;
	   end if;

	--B_LSB1_1 state
	when B_LSB1_1 =>
	   if ( word_in(1) = '1') 
		then B_NS <= B_EOF4;
	   else
		B_NS <= B_EOF3;
	   end if;

	--B_LSB2_0 state
	when B_LSB2_0 =>
	   if ( word_in(1) = '1') 
		then B_NS <= B_EOF6;
	   else
		B_NS <= B_EOF5;
	   end if;

    	--B_LSB2_1 state
	when B_LSB2_1 =>
	   if ( word_in(1) = '1') 
		then B_NS <= B_EOF8;
	   else
		B_NS <= B_EOF7;
	   end if;

	--B_LSB3_0 state
	when B_LSB3_0 =>
	   if ( word_in(1) = '1') 
		then B_NS <= B_EOF10;
	   else
		B_NS <= B_EOF9;
	   end if;

	--B_LSB3_1 state
	when B_LSB3_1 =>
	   if ( word_in(1) = '1') 
		then B_NS <= B_EOF12;
	   else
		B_NS <= B_EOF11;
	   end if;


	-- B_EOF1 state
	when B_EOF1 => 
	  if (word_in ="11100111" ) then
	    B_NS <= B_SOF;
	  else
	    B_NS <= B_Error_s;
	  end if; 

	-- B_EOF2 state
	when B_EOF2 => 
	  if (word_in ="11100111" ) then
	    B_NS <= B_SOF;
	  else
	    B_NS <= B_Error_s;
	  end if; 

	-- B_EOF3 state
	when B_EOF3 => 
	  if (word_in ="11100111" ) then
	    B_NS <= B_SOF;
	  else
	    B_NS <= B_Error_s;
	  end if; 

	-- B_EOF4 state
	when B_EOF4 => 
	  if (word_in ="11100111" ) then
	    B_NS <= B_SOF;
	  else
	    B_NS <= B_Error_s;
	  end if; 

	-- B_EOF5 state
	when B_EOF5 => 
	  if (word_in ="11100111" ) then
	    B_NS <= B_SOF;
	  else
	    B_NS <= B_Error_s;
	  end if; 

	-- B_EOF6 state
	when B_EOF6 => 
	  if (word_in ="11100111" ) then
	    B_NS <= B_SOF;
	  else
	    B_NS <= B_Error_s;
	  end if; 

	-- B_EOF7 state
	when B_EOF7 => 
	  if (word_in ="11100111" ) then
	    B_NS <= B_SOF;
	  else
	    B_NS <= B_Error_s;
	  end if; 

	-- B_EOF8 state
	when B_EOF8 => 
	  if (word_in ="11100111" ) then
	    B_NS <= B_SOF;
	  else
	    B_NS <= B_Error_s;
	  end if; 

	-- B_EOF9 state
	when B_EOF9 => 
	  if (word_in ="11100111" ) then
	    B_NS <= B_SOF;
	  else
	    B_NS <= B_Error_s;
	  end if; 

	-- B_EOF10 state
	when B_EOF10 => 
	  if (word_in ="11100111" ) then
	    B_NS <= B_SOF;
	  else
	    B_NS <= B_Error_s;
	  end if; 

	-- B_EOF11 state
	when B_EOF11 => 
	  if (word_in ="11100111" ) then
	    B_NS <= B_SOF;
	  else
	    B_NS <= B_Error_s;
	  end if; 

	-- B_EOF12 state
	when B_EOF12 => 
	  if (word_in ="11100111" ) then
	    B_NS <= B_SOF;
	  else
	    B_NS <= B_Error_s;
	  end if; 


	-- B_Error_s state
	when B_Error_s =>
	  if (word_in = "01111110") then
	    B_NS <= B_ID;
	  else
	    B_NS <= B_Error_s;
	  end if;

	when others =>
	   NULL;

      end case;
    end if;
-- output generation function =f(states)
    case B_CS is

       -- B_SOF state
	when B_SOF =>
		address(1) <= '0';
		          
		data(1)	   <= '0';

	-- B_ID state
        when B_ID =>
		          

	-- B_add_s1 state
        when B_add_s1 =>
		 
		

	-- B_add_s2 state
	when B_add_s2 =>
		 

	-- B_MSB_0 state
        when B_MSB_0 =>
		address(1) <= '0';
		          

	-- B_MSB_1 state
        when B_MSB_1 =>
		address(1) <= '1';
		          

	--B_LSB1_0 state
	when B_LSB1_0 =>
		address(1) <= '0';
		          

	--B_LSB1_1 state
	when B_LSB1_1 =>
		address(1) <= '1';
		          

	--B_LSB2_0 state
	when B_LSB2_0 =>
          
		data(1)	   <= '0';

    	--B_LSB2_1 state
	when B_LSB2_1 =>
		          
		data(1)	   <= '1';

	--B_LSB3_0 state
	when B_LSB3_0 =>
			address(1) <= '1';	          
		data(1)	   <= '0';

	--B_LSB3_1 state
	when B_LSB3_1 =>
		          		address(1) <= '1';
		data(1)	   <= '1';

	-- B_EOF1 state
	when B_EOF1 => 
		          
		data(1)	   <= '0';
	-- B_EOF2 state
	when B_EOF2 => 
		          
		data(1)	   <= '1';
	-- B_EOF3 state
	when B_EOF3 => 
		          		address(1) <= '1';
		data(1)	   <= '0';

	-- B_EOF4 state
	when B_EOF4 =>
		          		address(1) <= '1';
		data(1)	   <= '1';

	-- B_EOF5 state
	when B_EOF5 => 
		          
		data(1)	   <= '0';

	-- B_EOF6 state
	when B_EOF6 => 
		          
		data(1)	   <= '1';

	-- B_EOF7 state
	when B_EOF7 => 
		          
		data(1)	   <= '0';

	-- B_EOF8 state
	when B_EOF8 => 
		          
		data(1)	   <= '1';

	-- B_EOF9 state
	when B_EOF9 => 
		          		address(1) <= '1';
		data(1)	   <= '0';

	-- B_EOF10 state
	when B_EOF10 => 
		          		address(1) <= '1';
		data(1)	   <= '1';

	-- B_EOF11 state
	when B_EOF11 => 
		          		address(1) <= '1';
		data(1)	   <= '0';

	-- B_EOF12 state
	when B_EOF12 => 
		          		address(1) <= '1';
		data(1)	   <= '1';

	-- B_Error_s state
	when B_Error_s =>
		address(1) <= '0';
		          
		data(1)	   <= '0';
	when others =>
	   NULL;

  end case;

end process B_1	;

-- Process (2): State update (sequential)
B_2:  process(ck)
  begin
    if (ck='1' and not ck'stable) then
      B_CS <= B_NS;

    end if;
  end process;

--------------------------------------------------------------------------------------------

-- Process (1): Transition and Generation functions


c_1:  process (c_CS, word_in, reset)
   begin
-- Next state Transition function = f(inputs)
    if (reset='1') then
      c_NS <= c_SOF;
   
    else
   
      case c_CS is

       -- c_SOF state
	when c_SOF =>
          if (word_in="01111110") then    -- 7E input 
            c_NS <= c_ID;
          else
            c_NS <= c_Error_s;
          end if;

	-- c_ID state
        when c_ID =>
          if (word_in ="10000000") then	  -- 80 input	
            c_NS <= c_add_s1;
	  elsif (word_in ="10000001") then -- 81 input	
	    c_NS <= c_add_s2;
          else
            c_NS <= c_Error_s;
          end if;

	-- c_add_s1 state
        when c_add_s1 =>
	   if ( word_in(2) = '1') 
		then c_NS <= c_LSB1_1;
	   else
		c_NS <= c_LSB1_0;
	   end if;


	-- c_add_s2 state
	when c_add_s2 =>
	   if ( word_in(2) = '1') 
		then c_NS <= c_MSB_1;
	   else
		c_NS <= c_MSB_0;
	   end if;


	-- c_MSB_0 state
        when c_MSB_0 =>
       	   if ( word_in(2) = '1') 
		then c_NS <= c_LSB2_1;
	   else
		c_NS <= c_LSB2_0;
	   end if;

	-- c_MSB_1 state
        when c_MSB_1 =>
       	   if ( word_in(2) = '1') 
		then c_NS <= c_LSB3_1;
	   else
		c_NS <= c_LSB3_0;
	   end if;


	--c_LSB1_0 state
	when c_LSB1_0 =>
	   if ( word_in(2) = '1') 
		then c_NS <= c_EOF2;
	   else
		c_NS <= c_EOF1;
	   end if;

	--c_LSB1_1 state
	when c_LSB1_1 =>
	   if ( word_in(2) = '1') 
		then c_NS <= c_EOF4;
	   else
		c_NS <= c_EOF3;
	   end if;

	--c_LSB2_0 state
	when c_LSB2_0 =>
	   if ( word_in(2) = '1') 
		then c_NS <= c_EOF6;
	   else
		c_NS <= c_EOF5;
	   end if;

    	--c_LSB2_1 state
	when c_LSB2_1 =>
	   if ( word_in(2) = '1') 
		then c_NS <= c_EOF8;
	   else
		c_NS <= c_EOF7;
	   end if;

	--c_LSB3_0 state
	when c_LSB3_0 =>
	   if ( word_in(2) = '1') 
		then c_NS <= c_EOF10;
	   else
		c_NS <= c_EOF9;
	   end if;

	--c_LSB3_1 state
	when c_LSB3_1 =>
	   if ( word_in(2) = '1') 
		then c_NS <= c_EOF12;
	   else
		c_NS <= c_EOF11;
	   end if;


	-- c_EOF1 state
	when c_EOF1 => 
	  if (word_in ="11100111" ) then
	    c_NS <= c_SOF;
	  else
	    c_NS <= c_Error_s;
	  end if; 

	-- c_EOF2 state
	when c_EOF2 => 
	  if (word_in ="11100111" ) then
	    c_NS <= c_SOF;
	  else
	    c_NS <= c_Error_s;
	  end if; 

	-- c_EOF3 state
	when c_EOF3 => 
	  if (word_in ="11100111" ) then
	    c_NS <= c_SOF;
	  else
	    c_NS <= c_Error_s;
	  end if; 

	-- c_EOF4 state
	when c_EOF4 => 
	  if (word_in ="11100111" ) then
	    c_NS <= c_SOF;
	  else
	    c_NS <= c_Error_s;
	  end if; 

	-- c_EOF5 state
	when c_EOF5 => 
	  if (word_in ="11100111" ) then
	    c_NS <= c_SOF;
	  else
	    c_NS <= c_Error_s;
	  end if; 

	-- c_EOF6 state
	when c_EOF6 => 
	  if (word_in ="11100111" ) then
	    c_NS <= c_SOF;
	  else
	    c_NS <= c_Error_s;
	  end if; 

	-- c_EOF7 state
	when c_EOF7 => 
	  if (word_in ="11100111" ) then
	    c_NS <= c_SOF;
	  else
	    c_NS <= c_Error_s;
	  end if; 

	-- c_EOF8 state
	when c_EOF8 => 
	  if (word_in ="11100111" ) then
	    c_NS <= c_SOF;
	  else
	    c_NS <= c_Error_s;
	  end if; 

	-- c_EOF9 state
	when c_EOF9 => 
	  if (word_in ="11100111" ) then
	    c_NS <= c_SOF;
	  else
	    c_NS <= c_Error_s;
	  end if; 

	-- c_EOF10 state
	when c_EOF10 => 
	  if (word_in ="11100111" ) then
	    c_NS <= c_SOF;
	  else
	    c_NS <= c_Error_s;
	  end if; 

	-- c_EOF11 state
	when c_EOF11 => 
	  if (word_in ="11100111" ) then
	    c_NS <= c_SOF;
	  else
	    c_NS <= c_Error_s;
	  end if; 

	-- c_EOF12 state
	when c_EOF12 => 
	  if (word_in ="11100111" ) then
	    c_NS <= c_SOF;
	  else
	    c_NS <= c_Error_s;
	  end if; 


	-- c_Error_s state
	when c_Error_s =>
	  if (word_in = "01111110") then
	    c_NS <= c_ID;
	  else
	    c_NS <= c_Error_s;
	  end if;

	when others =>
	   NULL;

      end case;
    end if;
-- output generation function =f(states)
    case c_CS is

       -- c_SOF state
	when c_SOF =>
		address(2) <= '0';
		          
		data(2)	   <= '0';

	-- c_ID state
        when c_ID =>
		          

	-- c_add_s1 state
        when c_add_s1 =>
		 
		

	-- c_add_s2 state
	when c_add_s2 =>
		 

	-- c_MSB_0 state
        when c_MSB_0 =>
		address(2) <= '0';
		          

	-- c_MSB_1 state
        when c_MSB_1 =>
		address(2) <= '1';
		          

	--c_LSB1_0 state
	when c_LSB1_0 =>
		address(2) <= '0';
		          

	--c_LSB1_1 state
	when c_LSB1_1 =>
		address(2) <= '1';
		          

	--c_LSB2_0 state
	when c_LSB2_0 =>
		          
		data(2)	   <= '0';

    	--c_LSB2_1 state
	when c_LSB2_1 =>
		          
		data(2)	   <= '1'
;
	--c_LSB3_0 state
	when c_LSB3_0 =>
			address(2) <= '1';	          
		data(2)	   <= '0';

	--c_LSB3_1 state
	when c_LSB3_1 =>
		          		address(2) <= '1';
		data(2)	   <= '1';

	-- c_EOF1 state
	when c_EOF1 => 
		          
		data(2)	   <= '0';
	-- c_EOF2 state
	when c_EOF2 => 
		          
		data(2)	   <= '1';
	-- c_EOF3 state
	when c_EOF3 => 
		          		address(2) <= '1';
		data(2)	   <= '0';

	-- c_EOF4 state
	when c_EOF4 =>
		          		address(2) <= '1';
		data(2)	   <= '1';

	-- c_EOF5 state
	when c_EOF5 => 
		          
		data(2)	   <= '0';

	-- c_EOF6 state
	when c_EOF6 => 
		          
		data(2)	   <= '1';

	-- c_EOF7 state
	when c_EOF7 => 
		          
		data(2)	   <= '0';

	-- c_EOF8 state
	when c_EOF8 => 
		          
		data(2)	   <= '1';

	-- c_EOF9 state
	when c_EOF9 => 
		          		address(2) <= '1';
		data(2)	   <= '0';

	-- c_EOF10 state
	when c_EOF10 => 
		          		address(2) <= '1';
		data(2)	   <= '1';

	-- c_EOF11 state
	when c_EOF11 => 
		          		address(2) <= '1';
		data(2)	   <= '0';

	-- c_EOF12 state
	when c_EOF12 => 
		          		address(2) <= '1';
		data(2)	   <= '1';

	-- c_Error_s state
	when c_Error_s =>
		address(2) <= '0';
		          
		data(2)	   <= '0';
	when others =>
	   NULL;

  end case;

end process c_1	;

-- Process (2): State update (sequential)
c_2:  process(ck)
  begin
    if (ck='1' and not ck'stable) then
      c_CS <= c_NS;

    end if;
  end process;

--------------------------------------------------------------------------------------------

-- Process (1): Transition and Generation functions


D_1:  process (D_CS, word_in, reset)
   begin
-- Next state Transition function = f(inputs)
    if (reset='1') then
      D_NS <= D_SOF;
   
    else
   
      case D_CS is

       -- D_SOF state
	when D_SOF =>
          if (word_in="01111110") then    -- 7E input 
            D_NS <= D_ID;
          else
            D_NS <= D_Error_s;
          end if;

	-- D_ID state
        when D_ID =>
          if (word_in ="10000000") then	  -- 80 input	
            D_NS <= D_add_s1;
	  elsif (word_in ="10000001") then -- 81 input	
	    D_NS <= D_add_s2;
          else
            D_NS <= D_Error_s;
          end if;

	-- D_add_s1 state
        when D_add_s1 =>
	   if ( word_in(3) = '1') 
		then D_NS <= D_LSB1_1;
	   else
		D_NS <= D_LSB1_0;
	   end if;


	-- D_add_s2 state
	when D_add_s2 =>
	   if ( word_in(3) = '1') 
		then D_NS <= D_MSB_1;
	   else
		D_NS <= D_MSB_0;
	   end if;


	-- D_MSB_0 state
        when D_MSB_0 =>
       	   if ( word_in(3) = '1') 
		then D_NS <= D_LSB2_1;
	   else
		D_NS <= D_LSB2_0;
	   end if;

	-- D_MSB_1 state
        when D_MSB_1 =>
       	   if ( word_in(3) = '1') 
		then D_NS <= D_LSB3_1;
	   else
		D_NS <= D_LSB3_0;
	   end if;


	--D_LSB1_0 state
	when D_LSB1_0 =>
	   if ( word_in(3) = '1') 
		then D_NS <= D_EOF2;
	   else
		D_NS <= D_EOF1;
	   end if;

	--D_LSB1_1 state
	when D_LSB1_1 =>
	   if ( word_in(3) = '1') 
		then D_NS <= D_EOF4;
	   else
		D_NS <= D_EOF3;
	   end if;

	--D_LSB2_0 state
	when D_LSB2_0 =>
	   if ( word_in(3) = '1') 
		then D_NS <= D_EOF6;
	   else
		D_NS <= D_EOF5;
	   end if;

    	--D_LSB2_1 state
	when D_LSB2_1 =>
	   if ( word_in(3) = '1') 
		then D_NS <= D_EOF8;
	   else
		D_NS <= D_EOF7;
	   end if;

	--D_LSB3_0 state
	when D_LSB3_0 =>
	   if ( word_in(3) = '1') 
		then D_NS <= D_EOF10;
	   else
		D_NS <= D_EOF9;
	   end if;

	--D_LSB3_1 state
	when D_LSB3_1 =>
	   if ( word_in(3) = '1') 
		then D_NS <= D_EOF12;
	   else
		D_NS <= D_EOF11;
	   end if;


	-- D_EOF1 state
	when D_EOF1 => 
	  if (word_in ="11100111" ) then
	    D_NS <= D_SOF;
	  else
	    D_NS <= D_Error_s;
	  end if; 

	-- D_EOF2 state
	when D_EOF2 => 
	  if (word_in ="11100111" ) then
	    D_NS <= D_SOF;
	  else
	    D_NS <= D_Error_s;
	  end if; 

	-- D_EOF3 state
	when D_EOF3 => 
	  if (word_in ="11100111" ) then
	    D_NS <= D_SOF;
	  else
	    D_NS <= D_Error_s;
	  end if; 

	-- D_EOF4 state
	when D_EOF4 => 
	  if (word_in ="11100111" ) then
	    D_NS <= D_SOF;
	  else
	    D_NS <= D_Error_s;
	  end if; 

	-- D_EOF5 state
	when D_EOF5 => 
	  if (word_in ="11100111" ) then
	    D_NS <= D_SOF;
	  else
	    D_NS <= D_Error_s;
	  end if; 

	-- D_EOF6 state
	when D_EOF6 => 
	  if (word_in ="11100111" ) then
	    D_NS <= D_SOF;
	  else
	    D_NS <= D_Error_s;
	  end if; 

	-- D_EOF7 state
	when D_EOF7 => 
	  if (word_in ="11100111" ) then
	    D_NS <= D_SOF;
	  else
	    D_NS <= D_Error_s;
	  end if; 

	-- D_EOF8 state
	when D_EOF8 => 
	  if (word_in ="11100111" ) then
	    D_NS <= D_SOF;
	  else
	    D_NS <= D_Error_s;
	  end if; 

	-- D_EOF9 state
	when D_EOF9 => 
	  if (word_in ="11100111" ) then
	    D_NS <= D_SOF;
	  else
	    D_NS <= D_Error_s;
	  end if; 

	-- D_EOF10 state
	when D_EOF10 => 
	  if (word_in ="11100111" ) then
	    D_NS <= D_SOF;
	  else
	    D_NS <= D_Error_s;
	  end if; 

	-- D_EOF11 state
	when D_EOF11 => 
	  if (word_in ="11100111" ) then
	    D_NS <= D_SOF;
	  else
	    D_NS <= D_Error_s;
	  end if; 

	-- D_EOF12 state
	when D_EOF12 => 
	  if (word_in ="11100111" ) then
	    D_NS <= D_SOF;
	  else
	    D_NS <= D_Error_s;
	  end if; 


	-- D_Error_s state
	when D_Error_s =>
	  if (word_in = "01111110") then
	    D_NS <= D_ID;
	  else
	    D_NS <= D_Error_s;
	  end if;

	when others =>
	   NULL;

      end case;
    end if;
-- output generation function =f(states)
    case D_CS is

       -- D_SOF state
	when D_SOF =>
		address(3) <= '0';
		          
		data(3)	   <= '0';

	-- D_ID state
        when D_ID =>
		          

	-- D_add_s1 state
        when D_add_s1 =>
		 
		

	-- D_add_s2 state
	when D_add_s2 =>
		 

	-- D_MSB_0 state
        when D_MSB_0 =>
		address(3) <= '0';
		          

	-- D_MSB_1 state
        when D_MSB_1 =>
		address(3) <= '1';
		          

	--D_LSB1_0 state
	when D_LSB1_0 =>
		address(3) <= '0';
		          

	--D_LSB1_1 state
	when D_LSB1_1 =>
		address(3) <= '1';
		          

	--D_LSB2_0 state
	when D_LSB2_0 =>
		          
		data(3)	   <= '0';

    	--D_LSB2_1 state
	when D_LSB2_1 =>
		          
		data(3)	   <= '1'
;
	--D_LSB3_0 state
	when D_LSB3_0 =>
			address(3) <= '1';	          
		data(3)	   <= '0';

	--D_LSB3_1 state
	when D_LSB3_1 =>
		          		address(3) <= '1';
		data(3)	   <= '1';

	-- D_EOF1 state
	when D_EOF1 => 
		          
		data(3)	   <= '0';
	-- D_EOF2 state
	when D_EOF2 => 
		          
		data(3)	   <= '1';
	-- D_EOF3 state
	when D_EOF3 => 
		          		address(3) <= '1';
		data(3)	   <= '0';

	-- D_EOF4 state
	when D_EOF4 =>
		          		address(3) <= '1';
		data(3)	   <= '1';

	-- D_EOF5 state
	when D_EOF5 => 
		          
		data(3)	   <= '0';

	-- D_EOF6 state
	when D_EOF6 => 
		          
		data(3)	   <= '1';

	-- D_EOF7 state
	when D_EOF7 => 
		          
		data(3)	   <= '0';

	-- D_EOF8 state
	when D_EOF8 => 
		          
		data(3)	   <= '1';

	-- D_EOF9 state
	when D_EOF9 => 
		          		address(3) <= '1';
		data(3)	   <= '0';

	-- D_EOF10 state
	when D_EOF10 => 
		          		address(3) <= '1';
		data(3)	   <= '1';

	-- D_EOF11 state
	when D_EOF11 => 
		          		address(3) <= '1';
		data(3)	   <= '0';

	-- D_EOF12 state
	when D_EOF12 => 
		          		address(3) <= '1';
		data(3)	   <= '1';

	-- D_Error_s state
	when D_Error_s =>
		address(3) <= '0';
		          
		data(3)	   <= '0';
	when others =>
	   NULL;

  end case;

end process D_1	;

-- Process (2): State update (sequential)
D_2:  process(ck)
  begin
    if (ck='1' and not ck'stable) then
      D_CS <= D_NS;

    end if;
  end process;

--------------------------------------------------------------------------------------------

-- Process (1): Transition and Generation functions


E_1:  process (E_CS, word_in, reset)
   begin
-- Next state Transition function = f(inputs)
    if (reset='1') then
      E_NS <= E_SOF;
   
    else
   
      case E_CS is

       -- E_SOF state
	when E_SOF =>
          if (word_in="01111110") then    -- 7E input 
            E_NS <= E_ID;
          else
            E_NS <= E_Error_s;
          end if;

	-- E_ID state
        when E_ID =>
          if (word_in ="10000000") then	  -- 80 input	
            E_NS <= E_add_s1;
	  elsif (word_in ="10000001") then -- 81 input	
	    E_NS <= E_add_s2;
          else
            E_NS <= E_Error_s;
          end if;

	-- E_add_s1 state
        when E_add_s1 =>
	   if ( word_in(4) = '1') 
		then E_NS <= E_LSB1_1;
	   else
		E_NS <= E_LSB1_0;
	   end if;


	-- E_add_s2 state
	when E_add_s2 =>
	   if ( word_in(4) = '1') 
		then E_NS <= E_MSB_1;
	   else
		E_NS <= E_MSB_0;
	   end if;


	-- E_MSB_0 state
        when E_MSB_0 =>
       	   if ( word_in(4) = '1') 
		then E_NS <= E_LSB2_1;
	   else
		E_NS <= E_LSB2_0;
	   end if;

	-- E_MSB_1 state
        when E_MSB_1 =>
       	   if ( word_in(4) = '1') 
		then E_NS <= E_LSB3_1;
	   else
		E_NS <= E_LSB3_0;
	   end if;


	--E_LSB1_0 state
	when E_LSB1_0 =>
	   if ( word_in(4) = '1') 
		then E_NS <= E_EOF2;
	   else
		E_NS <= E_EOF1;
	   end if;

	--E_LSB1_1 state
	when E_LSB1_1 =>
	   if ( word_in(4) = '1') 
		then E_NS <= E_EOF4;
	   else
		E_NS <= E_EOF3;
	   end if;

	--E_LSB2_0 state
	when E_LSB2_0 =>
	   if ( word_in(4) = '1') 
		then E_NS <= E_EOF6;
	   else
		E_NS <= E_EOF5;
	   end if;

    	--E_LSB2_1 state
	when E_LSB2_1 =>
	   if ( word_in(4) = '1') 
		then E_NS <= E_EOF8;
	   else
		E_NS <= E_EOF7;
	   end if;

	--E_LSB3_0 state
	when E_LSB3_0 =>
	   if ( word_in(4) = '1') 
		then E_NS <= E_EOF10;
	   else
		E_NS <= E_EOF9;
	   end if;

	--E_LSB3_1 state
	when E_LSB3_1 =>
	   if ( word_in(4) = '1') 
		then E_NS <= E_EOF12;
	   else
		E_NS <= E_EOF11;
	   end if;


	-- E_EOF1 state
	when E_EOF1 => 
	  if (word_in ="11100111" ) then
	    E_NS <= E_SOF;
	  else
	    E_NS <= E_Error_s;
	  end if; 

	-- E_EOF2 state
	when E_EOF2 => 
	  if (word_in ="11100111" ) then
	    E_NS <= E_SOF;
	  else
	    E_NS <= E_Error_s;
	  end if; 

	-- E_EOF3 state
	when E_EOF3 => 
	  if (word_in ="11100111" ) then
	    E_NS <= E_SOF;
	  else
	    E_NS <= E_Error_s;
	  end if; 

	-- E_EOF4 state
	when E_EOF4 => 
	  if (word_in ="11100111" ) then
	    E_NS <= E_SOF;
	  else
	    E_NS <= E_Error_s;
	  end if; 

	-- E_EOF5 state
	when E_EOF5 => 
	  if (word_in ="11100111" ) then
	    E_NS <= E_SOF;
	  else
	    E_NS <= E_Error_s;
	  end if; 

	-- E_EOF6 state
	when E_EOF6 => 
	  if (word_in ="11100111" ) then
	    E_NS <= E_SOF;
	  else
	    E_NS <= E_Error_s;
	  end if; 

	-- E_EOF7 state
	when E_EOF7 => 
	  if (word_in ="11100111" ) then
	    E_NS <= E_SOF;
	  else
	    E_NS <= E_Error_s;
	  end if; 

	-- E_EOF8 state
	when E_EOF8 => 
	  if (word_in ="11100111" ) then
	    E_NS <= E_SOF;
	  else
	    E_NS <= E_Error_s;
	  end if; 

	-- E_EOF9 state
	when E_EOF9 => 
	  if (word_in ="11100111" ) then
	    E_NS <= E_SOF;
	  else
	    E_NS <= E_Error_s;
	  end if; 

	-- E_EOF10 state
	when E_EOF10 => 
	  if (word_in ="11100111" ) then
	    E_NS <= E_SOF;
	  else
	    E_NS <= E_Error_s;
	  end if; 

	-- E_EOF11 state
	when E_EOF11 => 
	  if (word_in ="11100111" ) then
	    E_NS <= E_SOF;
	  else
	    E_NS <= E_Error_s;
	  end if; 

	-- E_EOF12 state
	when E_EOF12 => 
	  if (word_in ="11100111" ) then
	    E_NS <= E_SOF;
	  else
	    E_NS <= E_Error_s;
	  end if; 


	-- E_Error_s state
	when E_Error_s =>
	  if (word_in = "01111110") then
	    E_NS <= E_ID;
	  else
	    E_NS <= E_Error_s;
	  end if;

	when others =>
	   NULL;

      end case;
    end if;
-- output generation function =f(states)
    case E_CS is

       -- E_SOF state
	when E_SOF =>
		address(4) <= '0';
		          
		data(4)	   <= '0';

	-- E_ID state
        when E_ID =>
		          

	-- E_add_s1 state
        when E_add_s1 =>
		 
		

	-- E_add_s2 state
	when E_add_s2 =>
		 

	-- E_MSB_0 state
        when E_MSB_0 =>
		address(4) <= '0';
		          

	-- E_MSB_1 state
        when E_MSB_1 =>
		address(4) <= '1';
		          

	--E_LSB1_0 state
	when E_LSB1_0 =>
		address(4) <= '0';
		          

	--E_LSB1_1 state
	when E_LSB1_1 =>
		address(4) <= '1';
		          

	--E_LSB2_0 state
	when E_LSB2_0 =>
		          
		data(4)	   <= '0';

    	--E_LSB2_1 state
	when E_LSB2_1 =>
		          
		data(4)	   <= '1'
;
	--E_LSB3_0 state
	when E_LSB3_0 =>
			address(4) <= '1';	          
		data(4)	   <= '0';

	--E_LSB3_1 state
	when E_LSB3_1 =>
		          		address(4) <= '1';
		data(4)	   <= '1';

	-- E_EOF1 state
	when E_EOF1 => 
		          
		data(4)	   <= '0';
	-- E_EOF2 state
	when E_EOF2 => 
		          
		data(4)	   <= '1';
	-- E_EOF3 state
	when E_EOF3 => 
		          		address(4) <= '1';
		data(4)	   <= '0';

	-- E_EOF4 state
	when E_EOF4 =>
		          		address(4) <= '1';
		data(4)	   <= '1';

	-- E_EOF5 state
	when E_EOF5 => 
		          
		data(4)	   <= '0';

	-- E_EOF6 state
	when E_EOF6 => 
		          
		data(4)	   <= '1';

	-- E_EOF7 state
	when E_EOF7 => 
		          
		data(4)	   <= '0';

	-- E_EOF8 state
	when E_EOF8 => 
		          
		data(4)	   <= '1';

	-- E_EOF9 state
	when E_EOF9 => 
		          		address(4) <= '1';
		data(4)	   <= '0';

	-- E_EOF10 state
	when E_EOF10 => 
		          		address(4) <= '1';
		data(4)	   <= '1';

	-- E_EOF11 state
	when E_EOF11 => 
		          		address(4) <= '1';
		data(4)	   <= '0';

	-- E_EOF12 state
	when E_EOF12 => 
		          		address(4) <= '1';
		data(4)	   <= '1';

	-- E_Error_s state
	when E_Error_s =>
		address(4) <= '0';
		          
		data(4)	   <= '0';
	when others =>
	   NULL;

  end case;

end process E_1	;

-- Process (2): State update (sequential)
E_2:  process(ck)
  begin
    if (ck='1' and not ck'stable) then
      E_CS <= E_NS;

    end if;
  end process;

--------------------------------------------------------------------------------------------

-- Process (1): Transition and Generation functions


F_1:  process (F_CS, word_in, reset)
   begin
-- Next state Transition function = f(inputs)
    if (reset='1') then
      F_NS <= F_SOF;
   
    else
   
      case F_CS is

       -- F_SOF state
	when F_SOF =>
          if (word_in="01111110") then    -- 7E input 
            F_NS <= F_ID;
          else
            F_NS <= F_Error_s;
          end if;

	-- F_ID state
        when F_ID =>
          if (word_in ="10000000") then	  -- 80 input	
            F_NS <= F_add_s1;
	  elsif (word_in ="10000001") then -- 81 input	
	    F_NS <= F_add_s2;
          else
            F_NS <= F_Error_s;
          end if;

	-- F_add_s1 state
        when F_add_s1 =>
	   if ( word_in(5) = '1') 
		then F_NS <= F_LSB1_1;
	   else
		F_NS <= F_LSB1_0;
	   end if;


	-- F_add_s2 state
	when F_add_s2 =>
	   if ( word_in(5) = '1') 
		then F_NS <= F_MSB_1;
	   else
		F_NS <= F_MSB_0;
	   end if;


	-- F_MSB_0 state
        when F_MSB_0 =>
       	   if ( word_in(5) = '1') 
		then F_NS <= F_LSB2_1;
	   else
		F_NS <= F_LSB2_0;
	   end if;

	-- F_MSB_1 state
        when F_MSB_1 =>
       	   if ( word_in(5) = '1') 
		then F_NS <= F_LSB3_1;
	   else
		F_NS <= F_LSB3_0;
	   end if;


	--F_LSB1_0 state
	when F_LSB1_0 =>
	   if ( word_in(5) = '1') 
		then F_NS <= F_EOF2;
	   else
		F_NS <= F_EOF1;
	   end if;

	--F_LSB1_1 state
	when F_LSB1_1 =>
	   if ( word_in(5) = '1') 
		then F_NS <= F_EOF4;
	   else
		F_NS <= F_EOF3;
	   end if;

	--F_LSB2_0 state
	when F_LSB2_0 =>
	   if ( word_in(5) = '1') 
		then F_NS <= F_EOF6;
	   else
		F_NS <= F_EOF5;
	   end if;

    	--F_LSB2_1 state
	when F_LSB2_1 =>
	   if ( word_in(5) = '1') 
		then F_NS <= F_EOF8;
	   else
		F_NS <= F_EOF7;
	   end if;

	--F_LSB3_0 state
	when F_LSB3_0 =>
	   if ( word_in(5) = '1') 
		then F_NS <= F_EOF10;
	   else
		F_NS <= F_EOF9;
	   end if;

	--F_LSB3_1 state
	when F_LSB3_1 =>
	   if ( word_in(5) = '1') 
		then F_NS <= F_EOF12;
	   else
		F_NS <= F_EOF11;
	   end if;


	-- F_EOF1 state
	when F_EOF1 => 
	  if (word_in ="11100111" ) then
	    F_NS <= F_SOF;
	  else
	    F_NS <= F_Error_s;
	  end if; 

	-- F_EOF2 state
	when F_EOF2 => 
	  if (word_in ="11100111" ) then
	    F_NS <= F_SOF;
	  else
	    F_NS <= F_Error_s;
	  end if; 

	-- F_EOF3 state
	when F_EOF3 => 
	  if (word_in ="11100111" ) then
	    F_NS <= F_SOF;
	  else
	    F_NS <= F_Error_s;
	  end if; 

	-- F_EOF4 state
	when F_EOF4 => 
	  if (word_in ="11100111" ) then
	    F_NS <= F_SOF;
	  else
	    F_NS <= F_Error_s;
	  end if; 

	-- F_EOF5 state
	when F_EOF5 => 
	  if (word_in ="11100111" ) then
	    F_NS <= F_SOF;
	  else
	    F_NS <= F_Error_s;
	  end if; 

	-- F_EOF6 state
	when F_EOF6 => 
	  if (word_in ="11100111" ) then
	    F_NS <= F_SOF;
	  else
	    F_NS <= F_Error_s;
	  end if; 

	-- F_EOF7 state
	when F_EOF7 => 
	  if (word_in ="11100111" ) then
	    F_NS <= F_SOF;
	  else
	    F_NS <= F_Error_s;
	  end if; 

	-- F_EOF8 state
	when F_EOF8 => 
	  if (word_in ="11100111" ) then
	    F_NS <= F_SOF;
	  else
	    F_NS <= F_Error_s;
	  end if; 

	-- F_EOF9 state
	when F_EOF9 => 
	  if (word_in ="11100111" ) then
	    F_NS <= F_SOF;
	  else
	    F_NS <= F_Error_s;
	  end if; 

	-- F_EOF10 state
	when F_EOF10 => 
	  if (word_in ="11100111" ) then
	    F_NS <= F_SOF;
	  else
	    F_NS <= F_Error_s;
	  end if; 

	-- F_EOF11 state
	when F_EOF11 => 
	  if (word_in ="11100111" ) then
	    F_NS <= F_SOF;
	  else
	    F_NS <= F_Error_s;
	  end if; 

	-- F_EOF12 state
	when F_EOF12 => 
	  if (word_in ="11100111" ) then
	    F_NS <= F_SOF;
	  else
	    F_NS <= F_Error_s;
	  end if; 


	-- F_Error_s state
	when F_Error_s =>
	  if (word_in = "01111110") then
	    F_NS <= F_ID;
	  else
	    F_NS <= F_Error_s;
	  end if;

	when others =>
	   NULL;

      end case;
    end if;
-- output generation function =f(states)
    case F_CS is

       -- F_SOF state
	when F_SOF =>
		address(5) <= '0';
		          
		data(5)	   <= '0';

	-- F_ID state
        when F_ID =>
		          

	-- F_add_s1 state
        when F_add_s1 =>
		 
		

	-- F_add_s2 state
	when F_add_s2 =>
		 

	-- F_MSB_0 state
        when F_MSB_0 =>
		address(5) <= '0';
		          

	-- F_MSB_1 state
        when F_MSB_1 =>
		address(5) <= '1';
		          

	--F_LSB1_0 state
	when F_LSB1_0 =>
		address(5) <= '0';
		          

	--F_LSB1_1 state
	when F_LSB1_1 =>
		address(5) <= '1';
		          

	--F_LSB2_0 state
	when F_LSB2_0 =>
		          
		data(5)	   <= '0';

    	--F_LSB2_1 state
	when F_LSB2_1 =>
		          
		data(5)	   <= '1'
;
	--F_LSB3_0 state
	when F_LSB3_0 =>
			address(5) <= '1';	          
		data(5)	   <= '0';

	--F_LSB3_1 state
	when F_LSB3_1 =>
		          		address(5) <= '1';
		data(5)	   <= '1';

	-- F_EOF1 state
	when F_EOF1 => 
		          
		data(5)	   <= '0';
	-- F_EOF2 state
	when F_EOF2 => 
		          
		data(5)	   <= '1';
	-- F_EOF3 state
	when F_EOF3 => 
		          		address(5) <= '1';
		data(5)	   <= '0';

	-- F_EOF4 state
	when F_EOF4 =>
		          		address(5) <= '1';
		data(5)	   <= '1';

	-- F_EOF5 state
	when F_EOF5 => 
		          
		data(5)	   <= '0';

	-- F_EOF6 state
	when F_EOF6 => 
		          
		data(5)	   <= '1';

	-- F_EOF7 state
	when F_EOF7 => 
		          
		data(5)	   <= '0';

	-- F_EOF8 state
	when F_EOF8 => 
		          
		data(5)	   <= '1';

	-- F_EOF9 state
	when F_EOF9 => 
		          		address(5) <= '1';
		data(5)	   <= '0';

	-- F_EOF10 state
	when F_EOF10 => 
		          		address(5) <= '1';
		data(5)	   <= '1';

	-- F_EOF11 state
	when F_EOF11 => 
		          		address(5) <= '1';
		data(5)	   <= '0';

	-- F_EOF12 state
	when F_EOF12 => 
		          		address(5) <= '1';
		data(5)	   <= '1';

	-- F_Error_s state
	when F_Error_s =>
		address(5) <= '0';
		          
		data(5)	   <= '0';
	when others =>
	   NULL;

  end case;

end process F_1	;

-- Process (2): State update (sequential)
F_2:  process(ck)
  begin
    if (ck='1' and not ck'stable) then
      F_CS <= F_NS;

    end if;
  end process;

--------------------------------------------------------------------------------------------

-- Process (1): Transition and Generation functions


G_1:  process (G_CS, word_in, reset)
   begin
-- Next state Transition function = f(inputs)
    if (reset='1') then
      G_NS <= G_SOF;
   
    else
   
      case G_CS is

       -- G_SOF state
	when G_SOF =>
          if (word_in="01111110") then    -- 7E input 
            G_NS <= G_ID;
          else
            G_NS <= G_Error_s;
          end if;

	-- G_ID state
        when G_ID =>
          if (word_in ="10000000") then	  -- 80 input	
            G_NS <= G_add_s1;
	  elsif (word_in ="10000001") then -- 81 input	
	    G_NS <= G_add_s2;
          else
            G_NS <= G_Error_s;
          end if;

	-- G_add_s1 state
        when G_add_s1 =>
	   if ( word_in(6) = '1') 
		then G_NS <= G_LSB1_1;
	   else
		G_NS <= G_LSB1_0;
	   end if;


	-- G_add_s2 state
	when G_add_s2 =>
	   if ( word_in(6) = '1') 
		then G_NS <= G_MSB_1;
	   else
		G_NS <= G_MSB_0;
	   end if;


	-- G_MSB_0 state
        when G_MSB_0 =>
       	   if ( word_in(6) = '1') 
		then G_NS <= G_LSB2_1;
	   else
		G_NS <= G_LSB2_0;
	   end if;

	-- G_MSB_1 state
        when G_MSB_1 =>
       	   if ( word_in(6) = '1') 
		then G_NS <= G_LSB3_1;
	   else
		G_NS <= G_LSB3_0;
	   end if;


	--G_LSB1_0 state
	when G_LSB1_0 =>
	   if ( word_in(6) = '1') 
		then G_NS <= G_EOF2;
	   else
		G_NS <= G_EOF1;
	   end if;

	--G_LSB1_1 state
	when G_LSB1_1 =>
	   if ( word_in(6) = '1') 
		then G_NS <= G_EOF4;
	   else
		G_NS <= G_EOF3;
	   end if;

	--G_LSB2_0 state
	when G_LSB2_0 =>
	   if ( word_in(6) = '1') 
		then G_NS <= G_EOF6;
	   else
		G_NS <= G_EOF5;
	   end if;

    	--G_LSB2_1 state
	when G_LSB2_1 =>
	   if ( word_in(6) = '1') 
		then G_NS <= G_EOF8;
	   else
		G_NS <= G_EOF7;
	   end if;

	--G_LSB3_0 state
	when G_LSB3_0 =>
	   if ( word_in(6) = '1') 
		then G_NS <= G_EOF10;
	   else
		G_NS <= G_EOF9;
	   end if;

	--G_LSB3_1 state
	when G_LSB3_1 =>
	   if ( word_in(6) = '1') 
		then G_NS <= G_EOF12;
	   else
		G_NS <= G_EOF11;
	   end if;


	-- G_EOF1 state
	when G_EOF1 => 
	  if (word_in ="11100111" ) then
	    G_NS <= G_SOF;
	  else
	    G_NS <= G_Error_s;
	  end if; 

	-- G_EOF2 state
	when G_EOF2 => 
	  if (word_in ="11100111" ) then
	    G_NS <= G_SOF;
	  else
	    G_NS <= G_Error_s;
	  end if; 

	-- G_EOF3 state
	when G_EOF3 => 
	  if (word_in ="11100111" ) then
	    G_NS <= G_SOF;
	  else
	    G_NS <= G_Error_s;
	  end if; 

	-- G_EOF4 state
	when G_EOF4 => 
	  if (word_in ="11100111" ) then
	    G_NS <= G_SOF;
	  else
	    G_NS <= G_Error_s;
	  end if; 

	-- G_EOF5 state
	when G_EOF5 => 
	  if (word_in ="11100111" ) then
	    G_NS <= G_SOF;
	  else
	    G_NS <= G_Error_s;
	  end if; 

	-- G_EOF6 state
	when G_EOF6 => 
	  if (word_in ="11100111" ) then
	    G_NS <= G_SOF;
	  else
	    G_NS <= G_Error_s;
	  end if; 

	-- G_EOF7 state
	when G_EOF7 => 
	  if (word_in ="11100111" ) then
	    G_NS <= G_SOF;
	  else
	    G_NS <= G_Error_s;
	  end if; 

	-- G_EOF8 state
	when G_EOF8 => 
	  if (word_in ="11100111" ) then
	    G_NS <= G_SOF;
	  else
	    G_NS <= G_Error_s;
	  end if; 

	-- G_EOF9 state
	when G_EOF9 => 
	  if (word_in ="11100111" ) then
	    G_NS <= G_SOF;
	  else
	    G_NS <= G_Error_s;
	  end if; 

	-- G_EOF10 state
	when G_EOF10 => 
	  if (word_in ="11100111" ) then
	    G_NS <= G_SOF;
	  else
	    G_NS <= G_Error_s;
	  end if; 

	-- G_EOF11 state
	when G_EOF11 => 
	  if (word_in ="11100111" ) then
	    G_NS <= G_SOF;
	  else
	    G_NS <= G_Error_s;
	  end if; 

	-- G_EOF12 state
	when G_EOF12 => 
	  if (word_in ="11100111" ) then
	    G_NS <= G_SOF;
	  else
	    G_NS <= G_Error_s;
	  end if; 


	-- G_Error_s state
	when G_Error_s =>
	  if (word_in = "01111110") then
	    G_NS <= G_ID;
	  else
	    G_NS <= G_Error_s;
	  end if;

	when others =>
	   NULL;

      end case;
    end if;
-- output generation function =f(states)
    case G_CS is

       -- G_SOF state
	when G_SOF =>
		address(6) <= '0';
		          
		data(6)	   <= '0';

	-- G_ID state
        when G_ID =>
		          

	-- G_add_s1 state
        when G_add_s1 =>
		 
		

	-- G_add_s2 state
	when G_add_s2 =>
		 

	-- G_MSB_0 state
        when G_MSB_0 =>
		address(6) <= '0';
		          

	-- G_MSB_1 state
        when G_MSB_1 =>
		address(6) <= '1';
		          

	--G_LSB1_0 state
	when G_LSB1_0 =>
		address(6) <= '0';
		          

	--G_LSB1_1 state
	when G_LSB1_1 =>
		address(6) <= '1';
		          

	--G_LSB2_0 state
	when G_LSB2_0 =>
		          
		data(6)	   <= '0';

    	--G_LSB2_1 state
	when G_LSB2_1 =>
		          
		data(6)	   <= '1';

	--G_LSB3_0 state
	when G_LSB3_0 =>
			address(6) <= '1';	          
		data(6)	   <= '0';

	--G_LSB3_1 state
	when G_LSB3_1 =>
		          		address(6) <= '1';
		data(6)	   <= '1';

	-- G_EOF1 state
	when G_EOF1 => 
		          
		data(6)	   <= '0';
	-- G_EOF2 state
	when G_EOF2 => 
		          
		data(6)	   <= '1';
	-- G_EOF3 state
	when G_EOF3 => 
		          		address(6) <= '1';
		data(6)	   <= '0';

	-- G_EOF4 state
	when G_EOF4 =>
		          		address(6) <= '1';
		data(6)	   <= '1';

	-- G_EOF5 state
	when G_EOF5 => 
		          
		data(6)	   <= '0';

	-- G_EOF6 state
	when G_EOF6 => 
		          
		data(6)	   <= '1';

	-- G_EOF7 state
	when G_EOF7 => 
		          
		data(6)	   <= '0';

	-- G_EOF8 state
	when G_EOF8 => 
		          
		data(6)	   <= '1';

	-- G_EOF9 state
	when G_EOF9 => 
		          		address(6) <= '1';
		data(6)	   <= '0';

	-- G_EOF10 state
	when G_EOF10 => 
		          		address(6) <= '1';
		data(6)	   <= '1';

	-- G_EOF11 state
	when G_EOF11 => 
		          		address(6) <= '1';
		data(6)	   <= '0';

	-- G_EOF12 state
	when G_EOF12 => 
		          		address(6) <= '1';
		data(6)	   <= '1';

	-- G_Error_s state
	when G_Error_s =>
		address(6) <= '0';
		          
		data(6)	   <= '0';
	when others =>
	   NULL;

  end case;

end process G_1	;

-- Process (2): State update (sequential)
G_2:  process(ck)
  begin
    if (ck='1' and not ck'stable) then
      G_CS <= G_NS;

    end if;
  end process;

--------------------------------------------------------------------------------------------

-- Process (1): Transition and Generation functions


H_1:  process (H_CS, word_in, reset)
   begin
-- Next state Transition function = f(inputs)
    if (reset='1') then
      H_NS <= H_SOF;
   
    else
   
      case H_CS is

       -- H_SOF state
	when H_SOF =>
          if (word_in="01111110") then    -- 7E input 
            H_NS <= H_ID;
          else
            H_NS <= H_Error_s;
          end if;

	-- H_ID state
        when H_ID =>
          if (word_in ="10000000") then	  -- 80 input	
            H_NS <= H_add_s1;
	  elsif (word_in ="10000001") then -- 81 input	
	    H_NS <= H_add_s2;
          else
            H_NS <= H_Error_s;
          end if;

	-- H_add_s1 state
        when H_add_s1 =>
	   if ( word_in(7) = '1') 
		then H_NS <= H_LSB1_1;
	   else
		H_NS <= H_LSB1_0;
	   end if;


	-- H_add_s2 state
	when H_add_s2 =>
	   if ( word_in(7) = '1') 
		then H_NS <= H_MSB_1;
	   else
		H_NS <= H_MSB_0;
	   end if;


	-- H_MSB_0 state
        when H_MSB_0 =>
       	   if ( word_in(7) = '1') 
		then H_NS <= H_LSB2_1;
	   else
		H_NS <= H_LSB2_0;
	   end if;

	-- H_MSB_1 state
        when H_MSB_1 =>
       	   if ( word_in(7) = '1') 
		then H_NS <= H_LSB3_1;
	   else
		H_NS <= H_LSB3_0;
	   end if;


	--H_LSB1_0 state
	when H_LSB1_0 =>
	   if ( word_in(7) = '1') 
		then H_NS <= H_EOF2;
	   else
		H_NS <= H_EOF1;
	   end if;

	--H_LSB1_1 state
	when H_LSB1_1 =>
	   if ( word_in(7) = '1') 
		then H_NS <= H_EOF4;
	   else
		H_NS <= H_EOF3;
	   end if;

	--H_LSB2_0 state
	when H_LSB2_0 =>
	   if ( word_in(7) = '1') 
		then H_NS <= H_EOF6;
	   else
		H_NS <= H_EOF5;
	   end if;

    	--H_LSB2_1 state
	when H_LSB2_1 =>
	   if ( word_in(7) = '1') 
		then H_NS <= H_EOF8;
	   else
		H_NS <= H_EOF7;
	   end if;

	--H_LSB3_0 state
	when H_LSB3_0 =>
	   if ( word_in(7) = '1') 
		then H_NS <= H_EOF10;
	   else
		H_NS <= H_EOF9;
	   end if;

	--H_LSB3_1 state
	when H_LSB3_1 =>
	   if ( word_in(7) = '1') 
		then H_NS <= H_EOF12;
	   else
		H_NS <= H_EOF11;
	   end if;


	-- H_EOF1 state
	when H_EOF1 => 
	  if (word_in ="11100111" ) then
	    H_NS <= H_SOF;
	  else
	    H_NS <= H_Error_s;
	  end if; 

	-- H_EOF2 state
	when H_EOF2 => 
	  if (word_in ="11100111" ) then
	    H_NS <= H_SOF;
	  else
	    H_NS <= H_Error_s;
	  end if; 

	-- H_EOF3 state
	when H_EOF3 => 
	  if (word_in ="11100111" ) then
	    H_NS <= H_SOF;
	  else
	    H_NS <= H_Error_s;
	  end if; 

	-- H_EOF4 state
	when H_EOF4 => 
	  if (word_in ="11100111" ) then
	    H_NS <= H_SOF;
	  else
	    H_NS <= H_Error_s;
	  end if; 

	-- H_EOF5 state
	when H_EOF5 => 
	  if (word_in ="11100111" ) then
	    H_NS <= H_SOF;
	  else
	    H_NS <= H_Error_s;
	  end if; 

	-- H_EOF6 state
	when H_EOF6 => 
	  if (word_in ="11100111" ) then
	    H_NS <= H_SOF;
	  else
	    H_NS <= H_Error_s;
	  end if; 

	-- H_EOF7 state
	when H_EOF7 => 
	  if (word_in ="11100111" ) then
	    H_NS <= H_SOF;
	  else
	    H_NS <= H_Error_s;
	  end if; 

	-- H_EOF8 state
	when H_EOF8 => 
	  if (word_in ="11100111" ) then
	    H_NS <= H_SOF;
	  else
	    H_NS <= H_Error_s;
	  end if; 

	-- H_EOF9 state
	when H_EOF9 => 
	  if (word_in ="11100111" ) then
	    H_NS <= H_SOF;
	  else
	    H_NS <= H_Error_s;
	  end if; 

	-- H_EOF10 state
	when H_EOF10 => 
	  if (word_in ="11100111" ) then
	    H_NS <= H_SOF;
	  else
	    H_NS <= H_Error_s;
	  end if; 

	-- H_EOF11 state
	when H_EOF11 => 
	  if (word_in ="11100111" ) then
	    H_NS <= H_SOF;
	  else
	    H_NS <= H_Error_s;
	  end if; 

	-- H_EOF12 state
	when H_EOF12 => 
	  if (word_in ="11100111" ) then
	    H_NS <= H_SOF;
	  else
	    H_NS <= H_Error_s;
	  end if; 


	-- H_Error_s state
	when H_Error_s =>
	  if (word_in = "01111110") then
	    H_NS <= H_ID;
	  else
	    H_NS <= H_Error_s;
	  end if;

	when others =>
	   NULL;

      end case;
    end if;
-- output generation function =f(states)
    case H_CS is

       -- H_SOF state
	when H_SOF =>
		address(7) <= '0';
		          
		data(7)	   <= '0';

	-- H_ID state
        when H_ID =>
		          

	-- H_add_s1 state
        when H_add_s1 =>
		 
		

	-- H_add_s2 state
	when H_add_s2 =>
		 

	-- H_MSB_0 state
        when H_MSB_0 =>
		address(7) <= '0';
		          

	-- H_MSB_1 state
        when H_MSB_1 =>
		address(7) <= '1';
		          

	--H_LSB1_0 state
	when H_LSB1_0 =>
		address(7) <= '0';
		          

	--H_LSB1_1 state
	when H_LSB1_1 =>
		address(7) <= '1';
		          

	--H_LSB2_0 state
	when H_LSB2_0 =>
		          
		data(7)	   <= '0';

    	--H_LSB2_1 state
	when H_LSB2_1 =>
		          
		data(7)	   <= '1';

	--H_LSB3_0 state
	when H_LSB3_0 =>
			address(7) <= '1';	          
		data(7)	   <= '0';

	--H_LSB3_1 state
	when H_LSB3_1 =>
		          		address(7) <= '1';
		data(7)	   <= '1';

	-- H_EOF1 state
	when H_EOF1 => 
		          
		data(7)	   <= '0';
	-- H_EOF2 state
	when H_EOF2 => 
		          
		data(7)	   <= '1';
	-- H_EOF3 state
	when H_EOF3 => 
		          		address(7) <= '1';
		data(7)	   <= '0';

	-- H_EOF4 state
	when H_EOF4 =>
		          		address(7) <= '1';
		data(7)	   <= '1';

	-- H_EOF5 state
	when H_EOF5 => 
		          
		data(7)	   <= '0';

	-- H_EOF6 state
	when H_EOF6 => 
		          
		data(7)	   <= '1';

	-- H_EOF7 state
	when H_EOF7 => 
		          
		data(7)	   <= '0';

	-- H_EOF8 state
	when H_EOF8 => 
		          
		data(7)	   <= '1';

	-- H_EOF9 state
	when H_EOF9 => 
		          		address(7) <= '1';
		data(7)	   <= '0';

	-- H_EOF10 state
	when H_EOF10 => 
		          		address(7) <= '1';
		data(7)	   <= '1';

	-- H_EOF11 state
	when H_EOF11 => 
		          		address(7) <= '1';
		data(7)	   <= '0';

	-- H_EOF12 state
	when H_EOF12 => 
		          		address(7) <= '1';
		data(7)	   <= '1';

	-- H_Error_s state
	when H_Error_s =>
		address(7) <= '0';
		          
		data(7)	   <= '0';
	when others =>
	   NULL;

  end case;

end process H_1	;

-- Process (2): State update (sequential)
H_2:  process(ck)
  begin
    if (ck='1' and not ck'stable) then
      H_CS <= H_NS;

    end if;
  end process;

--------------------------------------------------------------------------------------------


end Moore;
