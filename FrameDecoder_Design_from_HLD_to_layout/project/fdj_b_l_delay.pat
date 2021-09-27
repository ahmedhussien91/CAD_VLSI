
-- description generated by Pat driver

--			date     : Wed May 27 19:42:06 2015
--			revision : v109

--			sequence : fd

-- input / output list :
in       ck B;;;
in       vdd B;;;
in       vss B;;;
in       word_in (7 downto 0) X;;;
in       reset B;;;
out      error_f B;;;
out      data (7 downto 0) X;;;
out      address (7 downto 0) X;;;

begin

-- Pattern description :

--                                                 c  v  v  w   r   e   d    a    
--                                                 k  d  s  o   e   r   a    d    
--                                                    d  s  r   s   r   t    d    
--                                                          d   e   o   a    r    
--                                                          _   t   r        e    
--                                                          i       _        s    
--                                                          n       f        s    

<          0 ps>select_0_0                       : 1  1  0  00  1  ?u  ?uu  ?uu  ;
<      50000 ps>                                 : 0  1  0  00  1  ?u  ?uu  ?uu  ;
<     100000 ps>                                 : 1  1  0  00  1  ?u  ?uu  ?uu  ;
<     150000 ps>                                 : 0  1  0  7e  1  ?0  ?00  ?00  ;
<     200000 ps>                                 : 1  1  0  7e  1  ?0  ?00  ?00  ;
<     250000 ps>                                 : 0  1  0  80  1  ?0  ?00  ?00  ;
<     300000 ps>                                 : 1  1  0  80  1  ?0  ?00  ?00  ;
<     350000 ps>                                 : 0  1  0  e0  1  ?0  ?00  ?00  ;
<     400000 ps>                                 : 1  1  0  e0  1  ?0  ?00  ?00  ;
<     450000 ps>                                 : 0  1  0  55  1  ?0  ?00  ?00  ;
<     500000 ps>                                 : 1  1  0  55  1  ?0  ?00  ?00  ;
<     550000 ps>                                 : 0  1  0  e7  1  ?0  ?00  ?00  ;
<     600000 ps>                                 : 1  1  0  e7  1  ?0  ?00  ?00  ;
<     650000 ps>                                 : 0  1  0  7e  1  ?0  ?00  ?00  ;
<     700000 ps>                                 : 1  1  0  7e  1  ?0  ?00  ?00  ;
<     750000 ps>                                 : 0  1  0  80  1  ?0  ?00  ?00  ;
<     800000 ps>                                 : 1  1  0  80  1  ?0  ?00  ?00  ;
<     850000 ps>                                 : 0  1  0  e1  1  ?0  ?00  ?00  ;
<     900000 ps>                                 : 1  1  0  e1  1  ?0  ?00  ?00  ;
<     950000 ps>                                 : 0  1  0  66  1  ?0  ?00  ?00  ;
<    1000000 ps>                                 : 1  1  0  66  1  ?0  ?00  ?00  ;
<    1050000 ps>                                 : 0  1  0  e7  1  ?0  ?00  ?00  ;
<    1100000 ps>                                 : 1  1  0  e7  1  ?0  ?00  ?00  ;
<    1150000 ps>                                 : 0  1  0  7e  1  ?0  ?00  ?00  ;
<    1200000 ps>                                 : 1  1  0  7e  1  ?0  ?00  ?00  ;
<    1250000 ps>                                 : 0  1  0  80  1  ?0  ?00  ?00  ;
<    1300000 ps>                                 : 1  1  0  80  1  ?0  ?00  ?00  ;
<    1350000 ps>                                 : 0  1  0  e1  1  ?0  ?00  ?00  ;
<    1400000 ps>                                 : 1  1  0  e1  1  ?0  ?00  ?00  ;
<    1450000 ps>                                 : 0  1  0  66  1  ?0  ?00  ?00  ;
<    1500000 ps>                                 : 1  1  0  66  1  ?0  ?00  ?00  ;
<    1550000 ps>                                 : 0  1  0  77  1  ?0  ?00  ?00  ;
<    1600000 ps>                                 : 1  1  0  77  1  ?0  ?00  ?00  ;
<    1650000 ps>                                 : 0  1  0  e7  1  ?0  ?00  ?00  ;
<    1700000 ps>                                 : 1  1  0  e7  1  ?0  ?00  ?00  ;
<    1750000 ps>                                 : 0  1  0  7e  1  ?0  ?00  ?00  ;
<    1800000 ps>                                 : 1  1  0  7e  1  ?0  ?00  ?00  ;
<    1850000 ps>                                 : 0  1  0  81  1  ?0  ?00  ?00  ;
<    1900000 ps>                                 : 1  1  0  81  1  ?0  ?00  ?00  ;
<    1950000 ps>                                 : 0  1  0  f2  1  ?0  ?00  ?00  ;
<    2000000 ps>                                 : 1  1  0  f2  1  ?0  ?00  ?00  ;
<    2050000 ps>                                 : 0  1  0  88  1  ?0  ?00  ?00  ;
<    2100000 ps>                                 : 1  1  0  88  1  ?0  ?00  ?00  ;
<    2150000 ps>                                 : 0  1  0  99  1  ?0  ?00  ?00  ;
<    2200000 ps>                                 : 1  1  0  99  1  ?0  ?00  ?00  ;
<    2250000 ps>                                 : 0  1  0  e7  1  ?0  ?00  ?00  ;
<    2300000 ps>                                 : 1  1  0  e7  1  ?0  ?00  ?00  ;
<    2350000 ps>                                 : 0  1  0  77  1  ?0  ?00  ?00  ;
<    2400000 ps>                                 : 1  1  0  77  1  ?0  ?00  ?00  ;
<    2450000 ps>                                 : 0  1  0  81  1  ?0  ?00  ?00  ;
<    2500000 ps>                                 : 1  1  0  81  1  ?0  ?00  ?00  ;
<    2550000 ps>                                 : 0  1  0  f2  1  ?0  ?00  ?00  ;
<    2600000 ps>                                 : 1  1  0  f2  1  ?0  ?00  ?00  ;
<    2650000 ps>                                 : 0  1  0  88  1  ?0  ?00  ?00  ;
<    2700000 ps>                                 : 1  1  0  88  1  ?0  ?00  ?00  ;
<    2750000 ps>                                 : 0  1  0  99  1  ?0  ?00  ?00  ;
<    2800000 ps>                                 : 1  1  0  99  1  ?0  ?00  ?00  ;
<    2850000 ps>                                 : 0  1  0  e7  1  ?0  ?00  ?00  ;
<    2900000 ps>                                 : 1  1  0  e7  1  ?0  ?00  ?00  ;
<    2950000 ps>                                 : 0  1  0  7e  1  ?0  ?00  ?00  ;
<    3000000 ps>                                 : 1  1  0  7e  1  ?0  ?00  ?00  ;
<    3050000 ps>                                 : 0  1  0  80  1  ?0  ?00  ?00  ;
<    3100000 ps>                                 : 1  1  0  80  1  ?0  ?00  ?00  ;
<    3150000 ps>                                 : 0  1  0  f2  1  ?0  ?00  ?00  ;
<    3200000 ps>                                 : 1  1  0  f2  1  ?0  ?00  ?00  ;
<    3250000 ps>                                 : 0  1  0  88  1  ?0  ?00  ?00  ;
<    3300000 ps>                                 : 1  1  0  88  1  ?0  ?00  ?00  ;
<    3350000 ps>                                 : 0  1  0  e7  1  ?0  ?00  ?00  ;
<    3400000 ps>                                 : 1  1  0  e7  1  ?0  ?00  ?00  ;
<    3450000 ps>                                 : 0  1  0  7e  1  ?0  ?00  ?00  ;
<    3500000 ps>                                 : 1  1  0  7e  1  ?0  ?00  ?00  ;
<    3550000 ps>                                 : 0  1  0  70  1  ?0  ?00  ?00  ;
<    3600000 ps>                                 : 1  1  0  70  1  ?0  ?00  ?00  ;
<    3650000 ps>                                 : 0  1  0  f2  1  ?0  ?00  ?00  ;
<    3700000 ps>                                 : 1  1  0  f2  1  ?0  ?00  ?00  ;
<    3750000 ps>                                 : 0  1  0  88  1  ?0  ?00  ?00  ;
<    3800000 ps>                                 : 1  1  0  88  1  ?0  ?00  ?00  ;
<    3850000 ps>                                 : 0  1  0  99  1  ?0  ?00  ?00  ;
<    3900000 ps>                                 : 1  1  0  99  1  ?0  ?00  ?00  ;
<    3950000 ps>                                 : 0  1  0  e7  1  ?0  ?00  ?00  ;
<    4000000 ps>                                 : 1  1  0  e7  1  ?0  ?00  ?00  ;
<    4050000 ps>                                 : 0  1  0  7e  1  ?0  ?00  ?00  ;
<    4100000 ps>                                 : 1  1  0  7e  1  ?0  ?00  ?00  ;
<    4150000 ps>                                 : 0  1  0  81  1  ?0  ?00  ?00  ;
<    4200000 ps>                                 : 1  1  0  81  1  ?0  ?00  ?00  ;
<    4250000 ps>                                 : 0  1  0  f2  1  ?0  ?00  ?00  ;
<    4300000 ps>                                 : 1  1  0  f2  1  ?0  ?00  ?00  ;
<    4350000 ps>                                 : 0  1  0  88  1  ?0  ?00  ?00  ;
<    4400000 ps>                                 : 1  1  0  88  1  ?0  ?00  ?00  ;
<    4450000 ps>                                 : 0  1  0  99  1  ?0  ?00  ?00  ;
<    4500000 ps>                                 : 1  1  0  99  1  ?0  ?00  ?00  ;
<    4550000 ps>                                 : 0  1  0  e7  1  ?0  ?00  ?00  ;
<    4600000 ps>                                 : 1  1  0  e7  1  ?0  ?00  ?00  ;
<    4650000 ps>                                 : 0  1  0  7e  0  ?0  ?00  ?00  ;
<    4700000 ps>                                 : 1  1  0  7e  0  ?0  ?00  ?00  ;
<    4750000 ps>                                 : 0  1  0  80  0  ?0  ?00  ?00  ;
<    4800000 ps>                                 : 1  1  0  80  0  ?0  ?00  ?00  ;
<    4850000 ps>                                 : 0  1  0  e0  0  ?0  ?00  ?00  ;
<    4900000 ps>                                 : 1  1  0  e0  0  ?0  ?00  ?00  ;
<    4950000 ps>                                 : 0  1  0  55  0  ?0  ?00  ?e0  ;
<    5000000 ps>                                 : 1  1  0  55  0  ?0  ?00  ?e0  ;
<    5050000 ps>                                 : 0  1  0  e7  0  ?0  ?55  ?e0  ;
<    5100000 ps>                                 : 1  1  0  e7  0  ?0  ?55  ?e0  ;
<    5150000 ps>                                 : 0  1  0  7e  0  ?0  ?00  ?00  ;
<    5200000 ps>                                 : 1  1  0  7e  0  ?0  ?00  ?00  ;
<    5250000 ps>                                 : 0  1  0  80  0  ?0  ?00  ?00  ;
<    5300000 ps>                                 : 1  1  0  80  0  ?0  ?00  ?00  ;
<    5350000 ps>                                 : 0  1  0  e1  0  ?0  ?00  ?00  ;
<    5400000 ps>                                 : 1  1  0  e1  0  ?0  ?00  ?00  ;
<    5450000 ps>                                 : 0  1  0  66  0  ?0  ?00  ?e1  ;
<    5500000 ps>                                 : 1  1  0  66  0  ?0  ?00  ?e1  ;
<    5550000 ps>                                 : 0  1  0  e7  0  ?0  ?66  ?e1  ;
<    5600000 ps>                                 : 1  1  0  e7  0  ?0  ?66  ?e1  ;
<    5650000 ps>                                 : 0  1  0  7e  0  ?0  ?00  ?00  ;
<    5700000 ps>                                 : 1  1  0  7e  0  ?0  ?00  ?00  ;
<    5750000 ps>                                 : 0  1  0  80  0  ?0  ?00  ?00  ;
<    5800000 ps>                                 : 1  1  0  80  0  ?0  ?00  ?00  ;
<    5850000 ps>                                 : 0  1  0  e1  0  ?0  ?00  ?00  ;
<    5900000 ps>                                 : 1  1  0  e1  0  ?0  ?00  ?00  ;
<    5950000 ps>                                 : 0  1  0  66  0  ?0  ?00  ?e1  ;
<    6000000 ps>                                 : 1  1  0  66  0  ?0  ?00  ?e1  ;
<    6050000 ps>                                 : 0  1  0  77  0  ?0  ?66  ?e1  ;
<    6100000 ps>                                 : 1  1  0  77  0  ?0  ?66  ?e1  ;
<    6150000 ps>                                 : 0  1  0  e7  0  ?1  ?00  ?00  ;
<    6200000 ps>                                 : 1  1  0  e7  0  ?1  ?00  ?00  ;
<    6250000 ps>                                 : 0  1  0  7e  0  ?1  ?00  ?00  ;
<    6300000 ps>                                 : 1  1  0  7e  0  ?1  ?00  ?00  ;
<    6350000 ps>                                 : 0  1  0  81  0  ?0  ?00  ?00  ;
<    6400000 ps>                                 : 1  1  0  81  0  ?0  ?00  ?00  ;
<    6450000 ps>                                 : 0  1  0  f2  0  ?0  ?00  ?00  ;
<    6500000 ps>                                 : 1  1  0  f2  0  ?0  ?00  ?00  ;
<    6550000 ps>                                 : 0  1  0  88  0  ?0  ?00  ?f2  ;
<    6600000 ps>                                 : 1  1  0  88  0  ?0  ?00  ?f2  ;
<    6650000 ps>                                 : 0  1  0  99  0  ?0  ?88  ?f2  ;
<    6700000 ps>                                 : 1  1  0  99  0  ?0  ?88  ?f2  ;
<    6750000 ps>                                 : 0  1  0  e7  0  ?0  ?99  ?f2  ;
<    6800000 ps>                                 : 1  1  0  e7  0  ?0  ?99  ?f2  ;
<    6850000 ps>                                 : 0  1  0  77  0  ?0  ?00  ?00  ;
<    6900000 ps>                                 : 1  1  0  77  0  ?0  ?00  ?00  ;
<    6950000 ps>                                 : 0  1  0  81  0  ?1  ?00  ?00  ;
<    7000000 ps>                                 : 1  1  0  81  0  ?1  ?00  ?00  ;
<    7050000 ps>                                 : 0  1  0  f2  0  ?1  ?00  ?00  ;
<    7100000 ps>                                 : 1  1  0  f2  0  ?1  ?00  ?00  ;
<    7150000 ps>                                 : 0  1  0  88  0  ?1  ?00  ?00  ;
<    7200000 ps>                                 : 1  1  0  88  0  ?1  ?00  ?00  ;
<    7250000 ps>                                 : 0  1  0  99  0  ?1  ?00  ?00  ;
<    7300000 ps>                                 : 1  1  0  99  0  ?1  ?00  ?00  ;
<    7350000 ps>                                 : 0  1  0  e7  0  ?1  ?00  ?00  ;
<    7400000 ps>                                 : 1  1  0  e7  0  ?1  ?00  ?00  ;
<    7450000 ps>                                 : 0  1  0  7e  0  ?1  ?00  ?00  ;
<    7500000 ps>                                 : 1  1  0  7e  0  ?1  ?00  ?00  ;
<    7550000 ps>                                 : 0  1  0  80  0  ?0  ?00  ?00  ;
<    7600000 ps>                                 : 1  1  0  80  0  ?0  ?00  ?00  ;
<    7650000 ps>                                 : 0  1  0  f2  0  ?0  ?00  ?00  ;
<    7700000 ps>                                 : 1  1  0  f2  0  ?0  ?00  ?00  ;
<    7750000 ps>                                 : 0  1  0  88  0  ?0  ?00  ?f2  ;
<    7800000 ps>                                 : 1  1  0  88  0  ?0  ?00  ?f2  ;
<    7850000 ps>                                 : 0  1  0  e7  0  ?0  ?88  ?f2  ;
<    7900000 ps>                                 : 1  1  0  e7  0  ?0  ?88  ?f2  ;
<    7950000 ps>                                 : 0  1  0  7e  0  ?0  ?00  ?00  ;
<    8000000 ps>                                 : 1  1  0  7e  0  ?0  ?00  ?00  ;
<    8050000 ps>                                 : 0  1  0  70  0  ?0  ?00  ?00  ;
<    8100000 ps>                                 : 1  1  0  70  0  ?0  ?00  ?00  ;
<    8150000 ps>                                 : 0  1  0  f2  0  ?1  ?00  ?00  ;
<    8200000 ps>                                 : 1  1  0  f2  0  ?1  ?00  ?00  ;
<    8250000 ps>                                 : 0  1  0  88  0  ?1  ?00  ?00  ;
<    8300000 ps>                                 : 1  1  0  88  0  ?1  ?00  ?00  ;
<    8350000 ps>                                 : 0  1  0  99  0  ?1  ?00  ?00  ;
<    8400000 ps>                                 : 1  1  0  99  0  ?1  ?00  ?00  ;
<    8450000 ps>                                 : 0  1  0  e7  0  ?1  ?00  ?00  ;
<    8500000 ps>                                 : 1  1  0  e7  0  ?1  ?00  ?00  ;
<    8550000 ps>                                 : 0  1  0  7e  0  ?1  ?00  ?00  ;
<    8600000 ps>                                 : 1  1  0  7e  0  ?1  ?00  ?00  ;
<    8650000 ps>                                 : 0  1  0  81  0  ?0  ?00  ?00  ;
<    8700000 ps>                                 : 1  1  0  81  0  ?0  ?00  ?00  ;
<    8750000 ps>                                 : 0  1  0  f2  0  ?0  ?00  ?00  ;
<    8800000 ps>                                 : 1  1  0  f2  0  ?0  ?00  ?00  ;
<    8850000 ps>                                 : 0  1  0  88  0  ?0  ?00  ?f2  ;
<    8900000 ps>                                 : 1  1  0  88  0  ?0  ?00  ?f2  ;
<    8950000 ps>                                 : 0  1  0  99  0  ?0  ?88  ?f2  ;
<    9000000 ps>                                 : 1  1  0  99  0  ?0  ?88  ?f2  ;
<    9050000 ps>                                 : 0  1  0  e7  0  ?0  ?99  ?f2  ;
<    9100000 ps>                                 : 1  1  0  e7  0  ?0  ?99  ?f2  ;
<    9150000 ps>                                 : 0  1  0  e7  0  ?0  ?00  ?00  ;

end;