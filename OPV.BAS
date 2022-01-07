PRINT "OPV 1.0 FOR MS-DOS"
PRINT "Pragrama dlja vylic`ennja pakaznikaw vady krynic"
PRINT "Vybjaryce rez`ym pracy:"
PRINT "1 - vylic`enne kaljcyju, magniju i z`orstkasci"
PRINT "2 - vylic`enne gidrakarbanataw"
PRINT "3 - vylic`ennje mutnas`ci"
PRINT "4 - vylic`ennje wdzeljnaga supraciwlennja"
PRINT "5 - vylic`ennje amijaku"
PRINT "6 - rastvorany kislarod u vadze"
PRINT "7 - indeks zabrudz`vannja vady"
INPUT REZYM
IF REZYM = 1 THEN
   INPUT "Nabjaryce k-sc kropelj da zjaljonaga koleru   => "; A
   LET B = A * .3566
   PRINT "Z`orstkasc` = "; B; " mg-ekv/l"
   LET C = A * 6.7134
   PRINT "Kaljcyj = "; C; " mg/l"
   LET D = A * 4.0736
   PRINT "Magnij = "; D; " mg/l"
   IF C > 100 THEN
          PRINT "Peravys`enne pa wzrownju kaljcyju"
   END IF
   IF D >= 85 THEN
          PRINT "Peravys`enne pa wzrownju magniju"
   END IF
END IF
IF REZYM = 2 THEN
   INPUT "Nabjaryce k-sc` kropelj da z`outaga koleru   => "; A2
   LET B2 = A2 * 17.85
   PRINT "Gidrakarbanaty = ",B2," mg/l"
   IF B2>=400 THEN
          PRINT "Peravys`enne pa wzrownju gidrakarbanatau`"
   END IF
END IF
IF REZYM=3 THEN
    INPUT "Nabjaryce mutnasc` u balah pa kaalinu   => ";A3
    LET B3 = A3 * 0.58
    PRINT "Mutnas`c` = ",B3," mg/l"
    IF B3 >= 2 THEN
        PRINT "Peravys`enne pa wzrownju mutnasci"
    END IF
END IF
IF REZYM=4 THEN
    INPUT "Nabjaryce wdzeljnuju elektrapravodnasc` u mkSm/cm   => ";A4
    LET K = A4 * 0.0001
    LET B4 = 1/K
    PRINT "Udzeljnaje supraciwlennje = ",B4," Om/m"
END IF
IF REZYM=5 THEN
    INPUT "Vybjaryce vas` pakaznik pH: 7; 7.5; 8; 8.5   => ";PH
    INPUT "Vybjaryce vas` pakaznik amoniju: 1; 2; 5; 10   => ";AM
    IF PH=7 AND AM=1 THEN PRINT "Amijak = 0.006 mg/l - norma"
    IF PH=7 AND AM=2 THEN PRINT "Amijak = 0.014 mg/l - norma"
    IF PH=7 AND AM=5 THEN PRINT "Amijak = 0.029 mg/l - nebjaspec`na"
    IF PH=7 AND AM=10 THEN PRINT "Amijak = 0.057 mg/l - nebjaspec`na"
    IF PH=7.5 AND AM=1 THEN PRINT "Amijak = 0.018 mg/l - norma"
    IF PH=7.5 AND AM=2 THEN PRINT "Amijak = 0.036 mg/l - nebjaspec`na"
    IF PH=7.5 AND AM=5 THEN PRINT "Amijak = 0.090 mg/l - nebjaspec`na"
    IF PH=7.5 AND AM=10 THEN PRINT "Amijak = 0.179 mg/l - veljmi nebjaspec`na"
    IF PH=8 AND AM=1 THEN PRINT "Amijak = 0.054 mg/l - nebjaspec`na"
    IF PH=8 AND AM=2 THEN PRINT "Amijak = 0.109 mg/l - nebjaspec`na"
    IF PH=8 AND AM=5 THEN PRINT "Amijak = 0.272 mg/l - veljmi nebjaspec`na"
    IF PH=8 AND AM=10 THEN PRINT "Amijak = 0.544 mg/l - veljmi nebjaspec`na"
    IF PH=8.5 AND AM=1 THEN PRINT "Amijak = 0.154 mg/l - nebjaspec`na"
    IF PH=8.5 AND AM=2 THEN PRINT "Amijak = 0.308 mg/l - veljmi nebjaspec`na"
    IF PH=8.5 AND AM=5 THEN PRINT "Amijak = 0.770 mg/l - veljmi nebjaspec`na"
    IF PH=8.5 AND AM=10 THEN PRINT "Amijak = 1.540 mg/l - veljmi nebjaspec`na"
END IF
IF REZYM=6 THEN
    INPUT "Nabjaryce temperaturu ad 0 da 13 gradusaw   => ";T
    IF T=0 THEN PRINT "Kancentracyja O2 u vadze = 14.6 mg/l"
    IF T=1 THEN PRINT "Kancentracyja O2 u vadze = 14.2 mg/l"
    IF T=2 THEN PRINT "Kancentracyja O2 u vadze = 13.8 mg/l"
    IF T=3 THEN PRINT "Kancentracyja O2 u vadze = 13.3 mg/l"
    IF T=4 THEN PRINT "Kancentracyja O2 u vadze = 13.0 mg/l"
    IF T=5 THEN PRINT "Kancentracyja O2 u vadze = 12.6 mg/l"
    IF T=6 THEN PRINT "Kancentracyja O2 u vadze = 12.3 mg/l"
    IF T=7 THEN PRINT "Kancentracyja O2 u vadze = 12.0 mg/l"
    IF T=8 THEN PRINT "Kancentracyja O2 u vadze = 11.7 mg/l"
    IF T=9 THEN PRINT "Kancentracyja O2 u vadze = 11.4 mg/l"
    IF T=10 THEN PRINT "Kancentracyja O2 u vadze = 11.2 mg/l"
    IF T=11 THEN PRINT "Kancentracyja O2 u vadze = 10.9 mg/l"
    IF T=12 THEN PRINT "Kancentracyja O2 u vadze = 10.7 mg/l"
    IF T=13 THEN PRINT "Kancentracyja O2 u vadze = 10.4 mg/l"
END IF
IF REZYM=7 THEN
    INPUT "Nabjaryce pakaznik NO3";ZNO3
    INPUT "Nabjaryce pakaznik NO2";ZNO2
    INPUT "Nabjaryce pakaznik Fe";ZFE
    INPUT "Nabjaryce pakaznik NH4";ZNH4
    INPUT "Nabjaryce pakaznik NH3";ZNH3
    INPUT "Nabjaryce pakaznik Cu";ZCU
    INPUT "Nabjaryce pakaznik PO4";ZPO4
    INPUT "Nabjaryce pakaznik z`orstkasci vady";ZZ
    LET NO3 = ZNO3/45
    LET NO2 = ZNO2/3
    LET FE = ZFE/0.3
    LET NH4 = ZNH4/2
    LET NH3 = ZNH3/0.018
    LET CU = ZCU/1
    LET PO4 = ZPO4/3.5
    LET Z = ZZ/7
    LET SUM = NO3 + NO2 + FE + NH4 + NH3 + CU + PO4 + Z
    LET IZV = SUM/8
    PRINT "Indeks zabrudz`anasci vady = ";IZV
END IF