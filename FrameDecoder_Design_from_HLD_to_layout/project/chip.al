entity chip is
   port (
      ck      : in      bit;
      vdd     : in      bit;
      vss     : in      bit;
      word_in : in      bit_vector(7 downto 0);
      reset   : in      bit;
      error_f : out     bit;
      data    : out     bit_vector(7 downto 0);
      address : out     bit_vector(7 downto 0);
      scanin  : in      bit;
      test    : in      bit;
      scanout : out 	bit
 );
end chip;

architecture netlist of chip is 
component fdj_b_l_scanpath 
	port(
	      ck      : in      bit;
	      vdd     : in      bit;
	      vss     : in      bit;
	      word_in : in      bit_vector(7 downto 0);
	      reset   : in      bit;
	      error_f : out     bit;
	      data    : out     bit_vector(7 downto 0);
	      address : out     bit_vector(7 downto 0);
	      scanin  : in      bit;
	      test    : in      bit;
	      scanout : out 	bit     
			 );
end component;

component pi_sp 
  PORT (
  pad  : in BIT; -- pad
  t    : out BIT;  -- t
  ck   : in BIT;  -- ck
  vdde : in BIT;        -- vdde
  vddi : in BIT;        -- vddi
  vsse : in BIT;        -- vsse
  vssi : in BIT -- vssi
  );
end component;

component po_sp
  PORT (
  i    : in BIT;   -- i
  pad  : out BIT;        -- pad
  ck   : in BIT;  -- ck
  vdde : in BIT;        -- vdde
  vddi : in BIT;        -- vddi
  vsse : in BIT;        -- vsse
  vssi : in BIT -- vssi
  );
end component;

component pck_sp
  PORT (
  pad : in BIT; -- pad
  ck : out BIT; -- ck
  vdde : in BIT;        -- vdde
  vddi : in BIT;        -- vddi
  vsse : in BIT;        -- vsse
  vssi : in BIT -- vssi
  );
end component;

component pvddi_sp
    port(
    ck 	 : in BIT;  -- ck
    vdde : in BIT;        -- vdde
    vddi : in BIT;        -- vddi
    vsse : in BIT;        -- vsse
    vssi : in BIT -- vssi
    );
end component;

--component pvssi_sp
--   port (
--  ck   : in BIT;  -- ck
--  vdde : in BIT;        -- vdde
--  vddi : in BIT;        -- vddi
--  vsse : in BIT;        -- vsse
--  vssi : in BIT -- vssi
--  );
--end component;
    
component pvssick_sp
  port (
  cko  : out WOR_BIT BUS;        -- cko
  ck   : in BIT;  -- ck
  vdde : in BIT;        -- vdde
  vddi : in BIT;        -- vddi
  vsse : in BIT;        -- vsse
  vssi : in BIT -- vssi
  );
end component;
  
component pvdde_sp 
  port (
  ck   : in BIT;  -- ck
  vdde : in BIT;        -- vdde
  vddi : in BIT;        -- vddi
  vsse : in BIT;        -- vsse
  vssi : in BIT -- vssi
  );
end component;
   
component pvsse_sp
  PORT (
  ck   : in BIT;  -- ck
  vdde : in BIT;        -- vdde
  vddi : in BIT;        -- vddi
  vsse : in BIT;        -- vsse
  vssi : in BIT -- vssi
  );
end component;

signal ck_core 		: bit;
signal vdd_core 	: bit;
signal vss_core 	: bit;
signal word_in_core 	: bit_vector(7 downto 0);
signal reset_core 	: bit;
signal error_f_core 	: bit;
signal data_core 	: bit_vector(7 downto 0);
signal address_core 	: bit_vector(7 downto 0);
signal scanin_core 	: bit;
signal test_core 	: bit;
signal scanout_core 	: bit;
signal ck_i		: bit;

 begin 
 
 core : fdj_b_l_scanpath
	port map(
    	 ck     => ck_core ,	   
    	 vdd    => vdd_core   , 
    	 vss    => vss_core    ,
    	 word_in=> word_in_core,
    	 reset  => reset_core  ,
    	 error_f=> error_f_core,
    	 data   => data_core   ,
    	 address=> address_core,
    	 scanin => scanin_core ,
    	 test   => test_core,   
    	 scanout=> scanout_core
	);

 p_ck : pck_sp
	port map(
	  pad  => ck,
          ck   => ck_i,
          vdde => vdd,
          vddi => vdd_core,
          vsse => vss,
          vssi => vss_core
	);

 p_vddi : pvddi_sp
	port map ( 
  	  ck   => ck_i,
  	  vdde => vdd,
  	  vddi => vdd_core,
  	  vsse => vss,
  	  vssi => vss_core
	);

-- p_vssi : pvssi_sp
--	port map (
--	  ck   => ck_i,
--  	  vdde => vdd,
--  	  vddi => vdd_core,
--  	  vsse => vss,
--  	  vssi => vss_core 
--	);
--
 p_vdde : pvdde_sp
	port map (
  	  ck   => ck_i,
  	  vdde => vdd,
  	  vddi => vdd_core,
  	  vsse => vss,
  	  vssi => vss_core
	);

 p_vsse : pvsse_sp
	port map (
  	  ck   => ck_i,
  	  vdde => vdd,
  	  vddi => vdd_core,
  	  vsse => vss,
  	  vssi => vss_core
	);

 p_vssick : pvssick_sp
	port map ( 
	  cko  => ck_core,
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
	);

 p_scanin : pi_sp
	port map (
	  pad  => scanin ,
	  t    => scanin_core,
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_test : pi_sp
	port map (
	  pad  => test ,
	  t    => test_core,
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_reset : pi_sp
	port map (
	  pad  => reset ,
	  t    => reset_core,
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_word_in0 : pi_sp
	port map (
	  pad  => word_in(0) ,
	  t    => word_in_core(0),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_word_in1 : pi_sp
	port map (
	  pad  => word_in(1) ,
	  t    => word_in_core(1),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_word_in2 : pi_sp
	port map (
	  pad  => word_in(2) ,
	  t    => word_in_core(2),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_word_in3 : pi_sp
	port map (
	  pad  => word_in(3) ,
	  t    => word_in_core(3),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_word_in4 : pi_sp
	port map (
	  pad  => word_in(4) ,
	  t    => word_in_core(4),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_word_in5 : pi_sp
	port map (
	  pad  => word_in(5) ,
	  t    => word_in_core(5),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_word_in6 : pi_sp
	port map (
	  pad  => word_in(6) ,
	  t    => word_in_core(6),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_word_in7 : pi_sp
	port map (
	  pad  => word_in(7) ,
	  t    => word_in_core(7),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_address0 : po_sp
	port map (
	  i    => address_core(0) ,
	  pad  => address(0),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_address1 : po_sp
	port map (
	  i    => address_core(1) ,
	  pad  => address(1),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_address2 : po_sp
	port map (
	  i    => address_core(2) ,
	  pad  => address(2),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_address3 : po_sp
	port map (
	  i    => address_core(3) ,
	  pad  => address(3),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_address4 : po_sp
	port map (
	  i    => address_core(4) ,
	  pad  => address(4),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_address5 : po_sp
	port map (
	  i    => address_core(5) ,
	  pad  => address(5),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_address6 : po_sp
	port map (
	  i    => address_core(6) ,
	  pad  => address(6),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_address7 : po_sp
	port map (
	  i    => address_core(7) ,
	  pad  => address(7),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_data0 : po_sp
	port map (
	  i    => data_core(0) ,
	  pad  => data(0),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_data1 : po_sp
	port map (
	  i    => data_core(1) ,
	  pad  => data(1),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);


 p_data2 : po_sp
	port map (
	  i    => data_core(2) ,
	  pad  => data(2),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);


 p_data3 : po_sp
	port map (
	  i    => data_core(3) ,
	  pad  => data(3),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);


 p_data4 : po_sp
	port map (
	  i    => data_core(4) ,
	  pad  => data(4),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);


 p_data5 : po_sp
	port map (
	  i    => data_core(5) ,
	  pad  => data(5),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);


 p_data6 : po_sp
	port map (
	  i    => data_core(6) ,
	  pad  => data(6),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);


 p_data7 : po_sp
	port map (
	  i    => data_core(7) ,
	  pad  => data(7),
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);

 p_scanout : po_sp
	port map (
	  i    => scanout_core ,
	  pad  => scanout,
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);


 p_error_f : po_sp
	port map (
	  i    => error_f_core ,
	  pad  => error_f,
	  ck   => ck_i,
	  vdde => vdd,
	  vddi => vdd_core,
	  vsse => vss,
	  vssi => vss_core
);



end netlist;
