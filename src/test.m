nc = 4;
nq = 12;
n = 18;
h = 0.1;
M = [ %18x18
0.000193756102 0 1.14582165e-21 0 0 0 -7.19150466e-22 0 0 0 0 0 0.000193775071 4.33410215e-08 -0.000354423403 3.04130072e-09 0.00313670553 3.85237964e-07 ;
0 0.000193743465 0 -2.97051876e-21 0 0 0 -4.51712482e-22 0 0 0 0 0.000193727525 3.933753e-08 -0.000354415323 3.04117512e-09 0.00313650668 3.49791832e-07 ;
1.14582165e-21 0 0.000209900297 0 0 0 7.06468285e-05 0 0 0 0 0 -6.3011376e-05 -0.000347994517 -0.000149036373 0.00313670807 1.59880181e-07 -0.00132654818 ;
0 -2.97051876e-21 0 0.000209894586 0 0 0 7.06439728e-05 0 0 0 0 6.30266417e-05 -0.000348023868 0.000148945375 0.00313650922 1.44936542e-07 -0.00132688377 ;
0 0 0 0 0.000189705683 0 0 0 -4.56904914e-21 0 2.3002093e-21 0 0.000189690839 4.2596285e-08 0.000456041073 3.04241533e-09 0.00313652569 -2.94231087e-07 ;
0 0 0 0 0 0.000189718376 0 0 0 -4.84752072e-22 0 -1.59493295e-22 0.000189733136 4.7633498e-08 0.00045605566 3.04267486e-09 0.00313672551 -3.28886401e-07 ;
-7.19150466e-22 0 7.06468285e-05 0 0 0 7.066e-05 0 0 0 0 0 4.30005523e-05 2.35920072e-05 -4.29807558e-05 0.000904919015 -1.12059661e-07 0.000905274303 ;
0 -4.51712482e-22 0 7.06439728e-05 0 0 0 7.066e-05 0 0 0 0 -4.29972587e-05 2.3587827e-05 4.29895327e-05 0.000904987414 -1.0182853e-07 0.000905205927 ;
0 0 0 0 -4.56904914e-21 0 0 0 0.000209895823 0 7.06445913e-05 0 -6.30264157e-05 0.000391014174 0.000148948171 -0.00313652319 -1.21429487e-07 -0.00132687989 ;
0 0 0 0 0 -4.84752072e-22 0 0 0 0.000209901557 0 7.06474583e-05 6.30111498e-05 0.000390973741 -0.000149035337 -0.00313672301 -1.36045622e-07 -0.00132654254 ;
0 0 0 0 2.3002093e-21 0 0 0 7.06445913e-05 0 7.066e-05 0 4.29969908e-05 -5.29156068e-05 4.29921056e-05 -0.000904992457 8.579289e-08 0.000905200887 ;
0 0 0 0 0 -1.59493295e-22 0 0 0 7.06474583e-05 0 7.066e-05 -4.30003602e-05 -5.29220426e-05 -4.2978325e-05 -0.000904923662 9.57955256e-08 0.00090526966 ;
0.000193775071 0.000193727525 -6.3011376e-05 6.30266417e-05 0.000189690839 0.000189733136 4.30005523e-05 -4.29972587e-05 -6.30264157e-05 6.30111498e-05 4.29969908e-05 -4.30003602e-05 0.00269515223 1.50174012e-07 0.000203237743 0 0.0125464137 8.65145457e-08 ;
4.33410215e-08 3.933753e-08 -0.000347994517 -0.000348023868 4.2596285e-08 4.7633498e-08 2.35920072e-05 2.3587827e-05 0.000391014174 0.000390973741 -5.29156068e-05 -5.29220426e-05 1.50174012e-07 0.0114460091 5.60691494e-09 -0.0125464137 0 -0.0261881905 ;
-0.000354423403 -0.000354415323 -0.000149036373 0.000148945375 0.000456041073 0.00045605566 -4.29807558e-05 4.29895327e-05 0.000148948171 -0.000149035337 4.29921056e-05 -4.2978325e-05 0.000203237743 5.60691494e-09 0.0126096819 -8.65145457e-08 0.0261881905 0 ;
3.04130072e-09 3.04117512e-09 0.00313670807 0.00313650922 3.04241533e-09 3.04267486e-09 0.000904919015 0.000904987414 -0.00313652319 -0.00313672301 -0.000904992457 -0.000904923662 0 -0.0125464137 -8.65145457e-08 1.163 0 0 ;
0.00313670553 0.00313650668 1.59880181e-07 1.44936542e-07 0.00313652569 0.00313672551 -1.12059661e-07 -1.0182853e-07 -1.21429487e-07 -1.36045622e-07 8.579289e-08 9.57955256e-08 0.0125464137 0 0.0261881905 0 1.163 0 ;
3.85237964e-07 3.49791832e-07 -0.00132654818 -0.00132688377 -2.94231087e-07 -3.28886401e-07 0.000905274303 0.000905205927 -0.00132687989 -0.00132654254 0.000905200887 0.00090526966 8.65145457e-08 -0.0261881905 0 0 0 1.163 ];

v = [ %18
0.122801006 0.111507642 -0.00939021946 -0.129127003 -0.0938230641 -0.104865334 0.203767173 0.247945471 -0.121335073 -0.000984655939 0.238377112 0.194023255 -0.000225699344 -0.00124713892 -0.0111737373 1.51002247e-05 -0.00189710058 -0.000969817371 ]';

vq = [ %12
0.122801006 0.111507642 -0.00939021946 -0.129127003 -0.0938230641 -0.104865334 0.203767173 0.247945471 -0.121335073 -0.000984655939 0.238377112 0.194023255 ]';

vb = [ %6
-0.000225699344 -0.00124713892 -0.0111737373 1.51002247e-05 -0.00189710058 -0.000969817371 ]';

vqstar = [ %12
0.122801006 0.111507642 -0.00939021946 -0.129127003 -0.0938230641 -0.104865334 0.203767173 0.247945471 -0.121335073 -0.000984655939 0.238377112 0.194023255 ]';

fext = [ %18
-3.15216468e-05 -2.72443156e-05 0.120466643 0.120494456 2.30772629e-05 2.7090971e-05 -0.082209013 -0.0822036673 0.120494113 0.120466021 -0.0822028616 -0.0822082741 -2.26911322e-05 2.83921428e-05 -105.612341 -6.29023324e-06 2.37815096 -3.59077164e-05 ]';

A = [ %6x6
0.00269515223 1.50174012e-07 0.000203237743 0 0.0125464137 8.65145457e-08 ;
1.50174012e-07 0.0114460091 5.60691494e-09 -0.0125464137 0 -0.0261881905 ;
0.000203237743 5.60691494e-09 0.0126096819 -8.65145457e-08 0.0261881905 0 ;
0 -0.0125464137 -8.65145457e-08 1.163 0 0 ;
0.0125464137 0 0.0261881905 0 1.163 0 ;
8.65145457e-08 -0.0261881905 0 0 0 1.163 ];

B = [ %6x12
0.000193775071 0.000193727525 -6.3011376e-05 6.30266417e-05 0.000189690839 0.000189733136 4.30005523e-05 -4.29972587e-05 -6.30264157e-05 6.30111498e-05 4.29969908e-05 -4.30003602e-05 ;
4.33410215e-08 3.933753e-08 -0.000347994517 -0.000348023868 4.2596285e-08 4.7633498e-08 2.35920072e-05 2.3587827e-05 0.000391014174 0.000390973741 -5.29156068e-05 -5.29220426e-05 ;
-0.000354423403 -0.000354415323 -0.000149036373 0.000148945375 0.000456041073 0.00045605566 -4.29807558e-05 4.29895327e-05 0.000148948171 -0.000149035337 4.29921056e-05 -4.2978325e-05 ;
3.04130072e-09 3.04117512e-09 0.00313670807 0.00313650922 3.04241533e-09 3.04267486e-09 0.000904919015 0.000904987414 -0.00313652319 -0.00313672301 -0.000904992457 -0.000904923662 ;
0.00313670553 0.00313650668 1.59880181e-07 1.44936542e-07 0.00313652569 0.00313672551 -1.12059661e-07 -1.0182853e-07 -1.21429487e-07 -1.36045622e-07 8.579289e-08 9.57955256e-08 ;
3.85237964e-07 3.49791832e-07 -0.00132654818 -0.00132688377 -2.94231087e-07 -3.28886401e-07 0.000905274303 0.000905205927 -0.00132687989 -0.00132654254 0.000905200887 0.00090526966 ];

C = [ %12x12
0.000193756102 0 1.14582165e-21 0 0 0 -7.19150466e-22 0 0 0 0 0 ;
0 0.000193743465 0 -2.97051876e-21 0 0 0 -4.51712482e-22 0 0 0 0 ;
1.14582165e-21 0 0.000209900297 0 0 0 7.06468285e-05 0 0 0 0 0 ;
0 -2.97051876e-21 0 0.000209894586 0 0 0 7.06439728e-05 0 0 0 0 ;
0 0 0 0 0.000189705683 0 0 0 -4.56904914e-21 0 2.3002093e-21 0 ;
0 0 0 0 0 0.000189718376 0 0 0 -4.84752072e-22 0 -1.59493295e-22 ;
-7.19150466e-22 0 7.06468285e-05 0 0 0 7.066e-05 0 0 0 0 0 ;
0 -4.51712482e-22 0 7.06439728e-05 0 0 0 7.066e-05 0 0 0 0 ;
0 0 0 0 -4.56904914e-21 0 0 0 0.000209895823 0 7.06445913e-05 0 ;
0 0 0 0 0 -4.84752072e-22 0 0 0 0.000209901557 0 7.06474583e-05 ;
0 0 0 0 2.3002093e-21 0 0 0 7.06445913e-05 0 7.066e-05 0 ;
0 0 0 0 0 -1.59493295e-22 0 0 0 7.06474583e-05 0 7.066e-05 ];

M = [C B';B A];
D = [ %6x6
666.318174 -0.00784008492 0.00103534219 8.59223598e-05 8.37517792e-06 -0.000169889503 ;
-0.00784008492 170.93423 0.000325931698 -2.04221559 -5.90530995e-05 4.05921984 ;
0.00103534219 0.000325931698 122.541266 -2.93046099e-05 -2.88954425 2.96258816e-05 ;
8.59223598e-05 -2.04221559 -2.93046099e-05 1.05154346 1.2546294e-05 -0.0484970275 ;
8.37517792e-06 -5.90530995e-05 -2.88954425 1.2546294e-05 1.11227839 -2.01813337e-06 ;
-0.000169889503 4.05921984 2.96258816e-05 -0.0484970275 -2.01813337e-06 1.12356005 ];

E = [ %6x12
-666.381647 -666.261592 507.149167 -507.248177 -666.268665 -666.372637 -912.542092 912.596911 507.244664 -507.148796 -912.595475 912.546789 ;
-0.0368817067 -0.0326112972 553.845641 553.89015 -0.0240205015 -0.0278140954 -636.660574 -636.67661 -512.539505 -512.498133 562.283559 562.267453 ;
270.9331 270.942695 93.3340509 -93.2334008 -246.808195 -246.798059 -18.7831133 18.6545198 -93.2439563 93.3200647 18.6674418 -18.7648145 ;
0.000194092805 0.000143068513 -23.0785636 -23.0773438 0.000143569131 0.000188892027 10.910611 10.9074134 22.5833581 22.584547 -10.0186975 -10.0218962 ;
-23.2922394 -23.2924964 -2.203195 2.19623664 -11.4437292 -11.4439129 0.446788737 -0.43624734 2.20061964 -2.19845756 -0.443249552 0.439166872 ;
-0.00288440197 -0.00259519615 29.6119663 29.6146664 0.000963977182 0.00106141162 -44.7352425 -44.7356137 4.28990007 4.28918077 -16.2637012 -16.2640034 ];

F = [ %12x12
6700.24877 1539.02262 -300.984903 301.015861 400.128131 400.253626 871.271053 -871.269378 -713.378381 713.598244 953.914217 -954.16411 ;
1539.02262 6700.38869 -300.869368 300.934018 399.989269 400.114746 871.083837 -871.124814 -713.304087 713.504375 953.759887 -953.992522 ;
-300.984903 -300.869368 9959.69273 1865.15206 -695.130168 -695.210874 -10478.4338 -1881.56626 -1345.63829 -1975.57889 719.786509 2080.50192 ;
301.015861 300.934018 1865.15206 9959.9046 694.94613 695.008278 -1881.6271 -10478.304 -1975.94537 -1345.62289 2080.74581 719.873501 ;
400.128131 399.989269 -695.130168 694.94613 6720.05852 1448.81777 950.310519 -950.083696 -319.314981 319.243156 874.825871 -874.778243 ;
400.253626 400.114746 -695.210874 695.008278 1448.81777 6719.87111 950.460086 -950.215826 -319.387459 319.344392 874.951925 -874.940078 ;
871.271053 871.083837 -10478.4338 -1881.6271 950.310519 950.460086 25818.6415 1983.22118 806.934857 2167.52859 -3.99675473 -2497.87693 ;
-871.269378 -871.124814 -1881.56626 -10478.304 -950.083696 -950.215826 1983.22118 25818.1132 2167.79358 806.814656 -2497.99119 -3.98646357 ;
-713.378381 -713.304087 -1345.63829 -1975.94537 -319.314981 -319.387459 806.934857 2167.79358 9701.93783 1607.19573 -10101.2971 -1504.55999 ;
713.598244 713.504375 -1975.57889 -1345.62289 319.243156 319.344392 2167.52859 806.814656 1607.19573 9701.73415 -1504.50787 -10101.4366 ;
953.914217 953.759887 719.786509 2080.74581 874.825871 874.951925 -3.99675473 -2497.99119 -10101.2971 -1504.50787 25296.4477 1461.42279 ;
-954.16411 -953.992522 2080.50192 719.873501 -874.778243 -874.940078 -2497.87693 -3.98646357 -1504.55999 -10101.4366 1461.42279 25296.9819 ];

iM = [F E';E D];
N = [ %18x4
0 0 1.16641118e-06 0 ;
0 0 0 1.16641123e-06 ;
0 0 0.0208598295 0 ;
0 0 0 0.0208599217 ;
1.35928914e-06 0 0 0 ;
0 1.35928919e-06 0 0 ;
0 0 0.0565689893 0 ;
0 0 0 0.0565733569 ;
0.0208594703 0 0 0 ;
0 0.0208593782 0 0 ;
0.0565727628 0 0 0 ;
0 0.0565683733 0 0 ;
0 0 0 0 ;
0 0 0 0 ;
1 1 1 1 ;
0.0475012471 -0.0474987529 0.0475012471 -0.0474987529 ;
-0.115640576 -0.115640576 0.0832401243 0.0832401243 ;
0 0 0 0 ];

ST = [ %18x16
0 0 0.0652418998 0 0 0 -0.0652420264 0 -0 -0 -0.0652418998 -0 -0 -0 0.0652420264 -0 ;
0 0 0 0.0652418988 0 0 0 -0.0652420254 -0 -0 -0 -0.0652418988 -0 -0 -0 0.0652420254 ;
0 0 -0.0652438095 0 0 0 -0.0652400599 0 -0 -0 0.0652438095 -0 -0 -0 0.0652400599 -0 ;
0 0 0 -0.065243642 0 0 0 -0.0652402256 -0 -0 -0 0.065243642 -0 -0 -0 0.0652402256 ;
0.0652421666 0 0 0 -0.0652422932 0 0 0 -0.0652421666 -0 -0 -0 0.0652422932 -0 -0 -0 ;
0 0.0652421656 0 0 0 -0.0652422922 0 0 -0 -0.0652421656 -0 -0 -0 0.0652422922 -0 -0 ;
0 0 -0.0399970754 0 0 0 -0.0399871725 0 -0 -0 0.0399970754 -0 -0 -0 0.0399871725 -0 ;
0 0 0 -0.0399996466 0 0 0 -0.0399906465 -0 -0 -0 0.0399996466 -0 -0 -0 0.0399906465 ;
0.0652437044 0 0 0 0.0652408106 0 0 0 -0.0652437044 -0 -0 -0 -0.0652408106 -0 -0 -0 ;
0 0.0652438662 0 0 0 0.0652406466 0 0 -0 -0.0652438662 -0 -0 -0 -0.0652406466 -0 -0 ;
0.0399991607 0 0 0 0.0399915779 0 0 0 -0.0399991607 -0 -0 -0 -0.0399915779 -0 -0 -0 ;
0 0.039996562 0 0 0 0.0399880964 0 0 -0 -0.039996562 -0 -0 -0 -0.0399880964 -0 -0 ;
-0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 0.707106781 0.707106781 0.707106781 0.707106781 0.707106781 0.707106781 0.707106781 0.707106781 ;
0.707106781 0.707106781 0.707106781 0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 0.707106781 0.707106781 0.707106781 0.707106781 ;
0 0 0 0 0 0 0 0 -0 -0 -0 -0 -0 -0 -0 -0 ;
0.0652420743 0.0652420743 0.0652420743 0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 0.0652420743 0.0652420743 0.0652420743 0.0652420743 ;
0.0652420743 0.0652420743 0.0652420743 0.0652420743 0.0652420743 0.0652420743 0.0652420743 0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 ;
0.115358689 0.048183545 -0.0252712024 -0.0924463466 -0.0481817813 -0.115356925 0.0924481103 0.0252729661 -0.115358689 -0.048183545 0.0252712024 0.0924463466 0.0481817813 0.115356925 -0.0924481103 -0.0252729661 ];

MU = [ %4x2
0.5 0.5 ;
0.5 0.5 ;
0.5 0.5 ;
0.5 0.5 ];

R = [ %18x20
0 0 1.16641118e-06 0 0 0 0.0652418998 0 0 0 -0.0652420264 0 -0 -0 -0.0652418998 -0 -0 -0 0.0652420264 -0 ;
0 0 0 1.16641123e-06 0 0 0 0.0652418988 0 0 0 -0.0652420254 -0 -0 -0 -0.0652418988 -0 -0 -0 0.0652420254 ;
0 0 0.0208598295 0 0 0 -0.0652438095 0 0 0 -0.0652400599 0 -0 -0 0.0652438095 -0 -0 -0 0.0652400599 -0 ;
0 0 0 0.0208599217 0 0 0 -0.065243642 0 0 0 -0.0652402256 -0 -0 -0 0.065243642 -0 -0 -0 0.0652402256 ;
1.35928914e-06 0 0 0 0.0652421666 0 0 0 -0.0652422932 0 0 0 -0.0652421666 -0 -0 -0 0.0652422932 -0 -0 -0 ;
0 1.35928919e-06 0 0 0 0.0652421656 0 0 0 -0.0652422922 0 0 -0 -0.0652421656 -0 -0 -0 0.0652422922 -0 -0 ;
0 0 0.0565689893 0 0 0 -0.0399970754 0 0 0 -0.0399871725 0 -0 -0 0.0399970754 -0 -0 -0 0.0399871725 -0 ;
0 0 0 0.0565733569 0 0 0 -0.0399996466 0 0 0 -0.0399906465 -0 -0 -0 0.0399996466 -0 -0 -0 0.0399906465 ;
0.0208594703 0 0 0 0.0652437044 0 0 0 0.0652408106 0 0 0 -0.0652437044 -0 -0 -0 -0.0652408106 -0 -0 -0 ;
0 0.0208593782 0 0 0 0.0652438662 0 0 0 0.0652406466 0 0 -0 -0.0652438662 -0 -0 -0 -0.0652406466 -0 -0 ;
0.0565727628 0 0 0 0.0399991607 0 0 0 0.0399915779 0 0 0 -0.0399991607 -0 -0 -0 -0.0399915779 -0 -0 -0 ;
0 0.0565683733 0 0 0 0.039996562 0 0 0 0.0399880964 0 0 -0 -0.039996562 -0 -0 -0 -0.0399880964 -0 -0 ;
0 0 0 0 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 0.707106781 0.707106781 0.707106781 0.707106781 0.707106781 0.707106781 0.707106781 0.707106781 ;
0 0 0 0 0.707106781 0.707106781 0.707106781 0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 -0.707106781 0.707106781 0.707106781 0.707106781 0.707106781 ;
1 1 1 1 0 0 0 0 0 0 0 0 -0 -0 -0 -0 -0 -0 -0 -0 ;
0.0475012471 -0.0474987529 0.0475012471 -0.0474987529 0.0652420743 0.0652420743 0.0652420743 0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 0.0652420743 0.0652420743 0.0652420743 0.0652420743 ;
-0.115640576 -0.115640576 0.0832401243 0.0832401243 0.0652420743 0.0652420743 0.0652420743 0.0652420743 0.0652420743 0.0652420743 0.0652420743 0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 -0.0652420743 ;
0 0 0 0 0.115358689 0.048183545 -0.0252712024 -0.0924463466 -0.0481817813 -0.115356925 0.0924481103 0.0252729661 -0.115358689 -0.048183545 0.0252712024 0.0924463466 0.0481817813 0.115356925 -0.0924481103 -0.0252729661 ];

zuff = [ %18
3.15216468e-05 2.72443156e-05 -0.120466643 -0.120494456 -2.30772629e-05 -2.7090971e-05 0.082209013 0.0822036673 -0.120494113 -0.120466021 0.0822028616 0.0822082741 0 0 0 0 0 0 ]';

j = [ %= [E,D](fext + zuff)h + vb = [ %6
-0.0126701719 -0.00423137804 -1294.88535 0.000321290982 30.7797727 -0.00127566175 ]';

k = [ % = [F,E'](fext + zuff)h  +  vq = [ %12
-2866.80283 -2866.91552 -986.255775 985.055575 2603.78532 2603.66719 198.683294 -196.874276 985.170621 -986.099195 -197.014525 198.477653 ]';

Z = [ % = ( [E,D] - E inv(F) [F,E'] ) R = [ %6x20
3.07131833 3.07132399 2.2214471 2.22145276 -276.574147 -276.574137 -276.574126 -276.574116 -276.566272 -276.566262 -276.566294 -276.566284 276.574147 276.574137 276.574126 276.574116 276.566272 276.566262 276.566294 276.566284 ;
0.0477182218 -0.0478756122 0.0477304457 -0.0478633884 66.2674252 66.1263337 65.9720529 65.8309614 -66.1184797 -66.2595712 -65.8231074 -65.9641989 -66.2674252 -66.1263337 -65.9720529 -65.8309614 66.1184797 66.2595712 65.8231074 65.9641989 ;
83.4316963 83.4316958 83.0535151 83.0535146 -1.94643792 -1.9464378 -1.94643766 -1.94643754 -1.94633531 -1.94633519 -1.94633557 -1.94633544 1.94643792 1.9464378 1.94643766 1.94643754 1.94633531 1.94633519 1.94633557 1.94633544 ;
0.04136471 -0.0413518504 0.0413648138 -0.0413517467 0.7709892 0.769467109 0.767802731 0.76628064 -0.769382669 -0.77090476 -0.7661962 -0.767718291 -0.7709892 -0.769467109 -0.767802731 -0.76628064 0.769382669 0.77090476 0.7661962 0.767718291 ;
-2.01126377 -2.01126382 -1.82257295 -1.822573 3.08360227 3.08360216 3.08360203 3.08360192 3.083515 3.08351489 3.08351524 3.08351513 -3.08360227 -3.08360216 -3.08360203 -3.08360192 -3.083515 -3.08351489 -3.08351524 -3.08351513 ;
0.00107428045 -0.00107828148 0.00107461893 -0.00107794301 1.5914072 1.5304699 1.46383612 1.40289883 -1.53025038 -1.59118768 -1.40267931 -1.4636166 -1.5914072 -1.5304699 -1.46383612 -1.40289883 1.53025038 1.59118768 1.40267931 1.4636166 ];

p = [ % = j + E inv(F) (vq* - k) = [ %6
-28.2353254 -0.000206549366 -879.282696 -3.96230191e-05 20.3064386 -0.000947372716 ]';

H = [ % = Z'A Z = [ %20x20
83.6662449 83.6623152 83.2662433 83.2623137 -2.26640451 -2.26647668 -2.26655559 -2.26662775 -2.3394614 -2.33953356 -2.33931032 -2.33938248 2.26640451 2.26647668 2.26655559 2.26662775 2.3394614 2.33953356 2.33931032 2.33938248 ;
83.6623152 83.6662437 83.2623137 83.2662421 -2.33964849 -2.33957605 -2.33949685 -2.33942441 -2.26637004 -2.26629761 -2.26652168 -2.26644925 2.33964849 2.33957605 2.33949685 2.33942441 2.26637004 2.26629761 2.26652168 2.26644925 ;
83.2662433 83.2623137 82.9037688 82.8998391 -1.65313553 -1.65320772 -1.65328666 -1.65335884 -1.72620977 -1.72628196 -1.72605865 -1.72613084 1.65313553 1.65320772 1.65328666 1.65335884 1.72620977 1.72628196 1.72605865 1.72613084 ;
83.2623137 83.2662421 82.8998391 82.9037675 -1.72637951 -1.7263071 -1.72622792 -1.72615551 -1.65311842 -1.65304601 -1.65327001 -1.6531976 1.72637951 1.7263071 1.72622792 1.72615551 1.65311842 1.65304601 1.65327001 1.6531976 ;
-2.26640451 -2.33964849 -1.65313553 -1.72637951 242.860665 242.753762 242.636866 242.529963 148.783512 148.676609 149.007312 148.900409 -242.860665 -242.753762 -242.636866 -242.529963 -148.783512 -148.676609 -149.007312 -148.900409 ;
-2.26647668 -2.33957605 -1.65320772 -1.7263071 242.753762 242.650953 242.538532 242.435723 148.886307 148.783498 149.101537 148.998727 -242.753762 -242.650953 -242.538532 -242.435723 -148.886307 -148.783498 -149.101537 -148.998727 ;
-2.26655559 -2.33949685 -1.65328666 -1.72622792 242.636866 242.538532 242.431007 242.332673 148.998711 148.900378 149.20457 149.106237 -242.636866 -242.538532 -242.431007 -242.332673 -148.998711 -148.900378 -149.20457 -149.106237 ;
-2.26662775 -2.33942441 -1.65335884 -1.72615551 242.529963 242.435723 242.332673 242.238433 149.101506 149.007266 149.298796 149.204556 -242.529963 -242.435723 -242.332673 -242.238433 -149.101506 -149.007266 -149.298796 -149.204556 ;
-2.3394614 -2.26637004 -1.72620977 -1.65311842 148.783512 148.886307 148.998711 149.101506 242.639813 242.742608 242.424614 242.527409 -148.783512 -148.886307 -148.998711 -149.101506 -242.639813 -242.742608 -242.424614 -242.527409 ;
-2.33953356 -2.26629761 -1.72628196 -1.65304601 148.676609 148.783498 148.900378 149.007266 242.742608 242.849496 242.518839 242.625728 -148.676609 -148.783498 -148.900378 -149.007266 -242.742608 -242.849496 -242.518839 -242.625728 ;
-2.33931032 -2.26652168 -1.72605865 -1.65327001 149.007312 149.101537 149.20457 149.298796 242.424614 242.518839 242.227356 242.321581 -149.007312 -149.101537 -149.20457 -149.298796 -242.424614 -242.518839 -242.227356 -242.321581 ;
-2.33938248 -2.26644925 -1.72613084 -1.6531976 148.900409 148.998727 149.106237 149.204556 242.527409 242.625728 242.321581 242.419899 -148.900409 -148.998727 -149.106237 -149.204556 -242.527409 -242.625728 -242.321581 -242.419899 ;
2.26640451 2.33964849 1.65313553 1.72637951 -242.860665 -242.753762 -242.636866 -242.529963 -148.783512 -148.676609 -149.007312 -148.900409 242.860665 242.753762 242.636866 242.529963 148.783512 148.676609 149.007312 148.900409 ;
2.26647668 2.33957605 1.65320772 1.7263071 -242.753762 -242.650953 -242.538532 -242.435723 -148.886307 -148.783498 -149.101537 -148.998727 242.753762 242.650953 242.538532 242.435723 148.886307 148.783498 149.101537 148.998727 ;
2.26655559 2.33949685 1.65328666 1.72622792 -242.636866 -242.538532 -242.431007 -242.332673 -148.998711 -148.900378 -149.20457 -149.106237 242.636866 242.538532 242.431007 242.332673 148.998711 148.900378 149.20457 149.106237 ;
2.26662775 2.33942441 1.65335884 1.72615551 -242.529963 -242.435723 -242.332673 -242.238433 -149.101506 -149.007266 -149.298796 -149.204556 242.529963 242.435723 242.332673 242.238433 149.101506 149.007266 149.298796 149.204556 ;
2.3394614 2.26637004 1.72620977 1.65311842 -148.783512 -148.886307 -148.998711 -149.101506 -242.639813 -242.742608 -242.424614 -242.527409 148.783512 148.886307 148.998711 149.101506 242.639813 242.742608 242.424614 242.527409 ;
2.33953356 2.26629761 1.72628196 1.65304601 -148.676609 -148.783498 -148.900378 -149.007266 -242.742608 -242.849496 -242.518839 -242.625728 148.676609 148.783498 148.900378 149.007266 242.742608 242.849496 242.518839 242.625728 ;
2.33931032 2.26652168 1.72605865 1.65327001 -149.007312 -149.101537 -149.20457 -149.298796 -242.424614 -242.518839 -242.227356 -242.321581 149.007312 149.101537 149.20457 149.298796 242.424614 242.518839 242.227356 242.321581 ;
2.33938248 2.26644925 1.72613084 1.6531976 -148.900409 -148.998727 -149.106237 -149.204556 -242.527409 -242.625728 -242.321581 -242.419899 148.900409 148.998727 149.106237 149.204556 242.527409 242.625728 242.321581 242.419899 ];

% >> solve qp positive
%QP variables
Q = [ %20x20
83.6662449 83.6623152 83.2662433 83.2623137 -2.26640451 -2.26647668 -2.26655559 -2.26662775 -2.3394614 -2.33953356 -2.33931032 -2.33938248 2.26640451 2.26647668 2.26655559 2.26662775 2.3394614 2.33953356 2.33931032 2.33938248 ;
83.6623152 83.6662437 83.2623137 83.2662421 -2.33964849 -2.33957605 -2.33949685 -2.33942441 -2.26637004 -2.26629761 -2.26652168 -2.26644925 2.33964849 2.33957605 2.33949685 2.33942441 2.26637004 2.26629761 2.26652168 2.26644925 ;
83.2662433 83.2623137 82.9037688 82.8998391 -1.65313553 -1.65320772 -1.65328666 -1.65335884 -1.72620977 -1.72628196 -1.72605865 -1.72613084 1.65313553 1.65320772 1.65328666 1.65335884 1.72620977 1.72628196 1.72605865 1.72613084 ;
83.2623137 83.2662421 82.8998391 82.9037675 -1.72637951 -1.7263071 -1.72622792 -1.72615551 -1.65311842 -1.65304601 -1.65327001 -1.6531976 1.72637951 1.7263071 1.72622792 1.72615551 1.65311842 1.65304601 1.65327001 1.6531976 ;
-2.26640451 -2.33964849 -1.65313553 -1.72637951 242.860665 242.753762 242.636866 242.529963 148.783512 148.676609 149.007312 148.900409 -242.860665 -242.753762 -242.636866 -242.529963 -148.783512 -148.676609 -149.007312 -148.900409 ;
-2.26647668 -2.33957605 -1.65320772 -1.7263071 242.753762 242.650953 242.538532 242.435723 148.886307 148.783498 149.101537 148.998727 -242.753762 -242.650953 -242.538532 -242.435723 -148.886307 -148.783498 -149.101537 -148.998727 ;
-2.26655559 -2.33949685 -1.65328666 -1.72622792 242.636866 242.538532 242.431007 242.332673 148.998711 148.900378 149.20457 149.106237 -242.636866 -242.538532 -242.431007 -242.332673 -148.998711 -148.900378 -149.20457 -149.106237 ;
-2.26662775 -2.33942441 -1.65335884 -1.72615551 242.529963 242.435723 242.332673 242.238433 149.101506 149.007266 149.298796 149.204556 -242.529963 -242.435723 -242.332673 -242.238433 -149.101506 -149.007266 -149.298796 -149.204556 ;
-2.3394614 -2.26637004 -1.72620977 -1.65311842 148.783512 148.886307 148.998711 149.101506 242.639813 242.742608 242.424614 242.527409 -148.783512 -148.886307 -148.998711 -149.101506 -242.639813 -242.742608 -242.424614 -242.527409 ;
-2.33953356 -2.26629761 -1.72628196 -1.65304601 148.676609 148.783498 148.900378 149.007266 242.742608 242.849496 242.518839 242.625728 -148.676609 -148.783498 -148.900378 -149.007266 -242.742608 -242.849496 -242.518839 -242.625728 ;
-2.33931032 -2.26652168 -1.72605865 -1.65327001 149.007312 149.101537 149.20457 149.298796 242.424614 242.518839 242.227356 242.321581 -149.007312 -149.101537 -149.20457 -149.298796 -242.424614 -242.518839 -242.227356 -242.321581 ;
-2.33938248 -2.26644925 -1.72613084 -1.6531976 148.900409 148.998727 149.106237 149.204556 242.527409 242.625728 242.321581 242.419899 -148.900409 -148.998727 -149.106237 -149.204556 -242.527409 -242.625728 -242.321581 -242.419899 ;
2.26640451 2.33964849 1.65313553 1.72637951 -242.860665 -242.753762 -242.636866 -242.529963 -148.783512 -148.676609 -149.007312 -148.900409 242.860665 242.753762 242.636866 242.529963 148.783512 148.676609 149.007312 148.900409 ;
2.26647668 2.33957605 1.65320772 1.7263071 -242.753762 -242.650953 -242.538532 -242.435723 -148.886307 -148.783498 -149.101537 -148.998727 242.753762 242.650953 242.538532 242.435723 148.886307 148.783498 149.101537 148.998727 ;
2.26655559 2.33949685 1.65328666 1.72622792 -242.636866 -242.538532 -242.431007 -242.332673 -148.998711 -148.900378 -149.20457 -149.106237 242.636866 242.538532 242.431007 242.332673 148.998711 148.900378 149.20457 149.106237 ;
2.26662775 2.33942441 1.65335884 1.72615551 -242.529963 -242.435723 -242.332673 -242.238433 -149.101506 -149.007266 -149.298796 -149.204556 242.529963 242.435723 242.332673 242.238433 149.101506 149.007266 149.298796 149.204556 ;
2.3394614 2.26637004 1.72620977 1.65311842 -148.783512 -148.886307 -148.998711 -149.101506 -242.639813 -242.742608 -242.424614 -242.527409 148.783512 148.886307 148.998711 149.101506 242.639813 242.742608 242.424614 242.527409 ;
2.33953356 2.26629761 1.72628196 1.65304601 -148.676609 -148.783498 -148.900378 -149.007266 -242.742608 -242.849496 -242.518839 -242.625728 148.676609 148.783498 148.900378 149.007266 242.742608 242.849496 242.518839 242.625728 ;
2.33931032 2.26652168 1.72605865 1.65327001 -149.007312 -149.101537 -149.20457 -149.298796 -242.424614 -242.518839 -242.227356 -242.321581 149.007312 149.101537 149.20457 149.298796 242.424614 242.518839 242.227356 242.321581 ;
2.33938248 2.26644925 1.72613084 1.6531976 -148.900409 -148.998727 -149.106237 -149.204556 -242.527409 -242.625728 -242.321581 -242.419899 148.900409 148.998727 149.106237 149.204556 242.527409 242.625728 242.321581 242.419899 ];

c = [ %20
-881.648301 -881.648296 -877.60965 -877.609645 21.2895813 21.2895768 21.2895719 21.2895674 21.2880741 21.2880696 21.2880835 21.288079 -21.2895813 -21.2895768 -21.2895719 -21.2895674 -21.2880741 -21.2880696 -21.2880835 -21.288079 ]';

AA = [ %8x20
83.6662449 83.6623152 83.2662433 83.2623137 -2.26640451 -2.26647668 -2.26655559 -2.26662775 -2.3394614 -2.33953356 -2.33931032 -2.33938248 2.26640451 2.26647668 2.26655559 2.26662775 2.3394614 2.33953356 2.33931032 2.33938248 ;
83.6623152 83.6662437 83.2623137 83.2662421 -2.33964849 -2.33957605 -2.33949685 -2.33942441 -2.26637004 -2.26629761 -2.26652168 -2.26644925 2.33964849 2.33957605 2.33949685 2.33942441 2.26637004 2.26629761 2.26652168 2.26644925 ;
83.2662433 83.2623137 82.9037688 82.8998391 -1.65313553 -1.65320772 -1.65328666 -1.65335884 -1.72620977 -1.72628196 -1.72605865 -1.72613084 1.65313553 1.65320772 1.65328666 1.65335884 1.72620977 1.72628196 1.72605865 1.72613084 ;
83.2623137 83.2662421 82.8998391 82.9037675 -1.72637951 -1.7263071 -1.72622792 -1.72615551 -1.65311842 -1.65304601 -1.65327001 -1.6531976 1.72637951 1.7263071 1.72622792 1.72615551 1.65311842 1.65304601 1.65327001 1.6531976 ;
1 0 0 0 -2.82842712 -2.82842712 -2.82842712 -2.82842712 0 0 0 0 0 0 0 0 0 0 0 0 ;
0 1 0 0 0 0 0 0 -2.82842712 -2.82842712 -2.82842712 -2.82842712 0 0 0 0 0 0 0 0 ;
0 0 1 0 0 0 0 0 0 0 0 0 -2.82842712 -2.82842712 -2.82842712 -2.82842712 0 0 0 0 ;
0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 -2.82842712 -2.82842712 -2.82842712 -2.82842712 ];

bb = [ %8
881.619991 881.619987 877.581056 877.58105 0 0 0 0 ]';

%Solutions
xx = [ %20
2.64032001 2.96391656 2.64036626 2.31702752 0.933279467 0 0 0.000214622926 0 0 0 0 0.933510442 0 0 0 0 0 1.36293271e-05 0 ]';

% << solve qp positive
feas_OP1 =[ % (A*z-b >= 0) = [ %8
0.0283100061 0.0283089438 0.0285943875 0.0285954567 -1.25152709e-14 2.96391656 -4.4408921e-16 2.31698897 ]';

Z_OP1 = [ %20
2.64032001 2.96391656 2.64036626 2.31702752 0.933279467 0 0 0.000214622926 0 0 0 0 0.933510442 0 0 0 0 0 1.36293271e-05 0 ]';

% >> solve qp
%QP variables
Q = [ %14x14
0.0186240531 0.00149990033 0.00324819629 -0.00195788614 -0.00562784927 0.000643933701 -0.000221672076 0.000567815651 -0.00127608093 0.00108410337 0.000443994213 0.00021189886 -0.000559613984 -0.000230859341 ;
0.00149990033 0.0211321146 -0.00030876528 0.00350513981 0.00200480636 0.00417276764 -0.000453339138 -0.00267813005 0.000403189321 -0.00124232658 0.000740420919 0.000838779073 0.00012156708 -0.000445423936 ;
0.00324819629 -0.00030876528 0.0186458523 -0.00241377034 0.00827342488 -0.00137527658 0.000188163181 -0.000757751651 0.00129767339 -0.00116759527 -0.000387956142 -0.000149865994 0.000565160845 0.000197332579 ;
-0.00195788614 0.00350513981 -0.00241377034 0.0142591453 0.00120817609 -0.00634743074 0.00103147057 0.00186739978 0.0023966732 -0.000980184438 -0.0018690524 -0.00146055938 0.00111646821 0.00104265057 ;
-0.00562784927 0.00200480636 0.00827342488 0.00120817609 0.00941851402 -0.00075570002 0.00081060162 0.00159158789 0.00178599381 -0.000658362196 -0.00146273748 -0.00116106476 0.000836191457 0.000818217617 ;
0.000643933701 0.00417276764 -0.00137527658 -0.00634743074 -0.00075570002 0.00809883601 0.000289167568 0.0034349173 -0.00161204942 0.00234811188 -0.000396353209 -0.000717462143 -0.000647074339 0.0002718509 ;
-0.000221672076 -0.000453339138 0.000188163181 0.00103147057 0.00081060162 0.000289167568 0.000505011264 0.00214878158 0.000205015667 0.000632263757 -0.000860965194 -0.000845742337 0.000139534173 0.000501812533 ;
0.000567815651 -0.00267813005 -0.000757751651 0.00186739978 0.00159158789 0.0034349173 0.00214878158 0.0101821658 5.70955878e-05 0.00362647818 -0.00361792063 -0.00370851329 0.000251060845 0.00212793906 ;
-0.00127608093 0.000403189321 0.00129767339 0.0023966732 0.00178599381 -0.00161204942 0.000205015667 5.70955878e-05 0.000722711216 -0.000477736323 -0.000385144773 -0.000257093641 0.000325423899 0.000209390215 ;
0.00108410337 -0.00124232658 -0.00116759527 -0.000980184438 -0.000658362196 0.00234811188 0.000632263757 0.00362647818 -0.000477736323 0.00163501421 -0.00103699724 -0.00115790118 -0.000133983624 0.000621743763 ;
0.000443994213 0.000740420919 -0.000387956142 -0.0018690524 -0.00146273748 -0.000396353209 -0.000860965194 -0.00361792063 -0.000385144773 -0.00103699724 0.00146979567 0.00143705368 -0.0002528574 -0.000855827936 ;
0.00021189886 0.000838779073 -0.000149865994 -0.00146055938 -0.00116106476 -0.000717462143 -0.000845742337 -0.00370851329 -0.000257093641 -0.00115790118 0.00143705368 0.00142799658 -0.000197428135 -0.000839620317 ;
-0.000559613984 0.00012156708 0.000565160845 0.00111646821 0.000836191457 -0.000647074339 0.000139534173 0.000251060845 0.000325423899 -0.000133983624 -0.0002528574 -0.000197428135 0.000151522245 0.000141034815 ;
-0.000230859341 -0.000445423936 0.000197332579 0.00104265057 0.000818217617 0.0002718509 0.000501812533 0.00212793906 0.000209390215 0.000621743763 -0.000855827936 -0.000839620317 0.000141034815 0.000498684409 ];

c = [ %14
-0.022145231 0.0100310497 -0.0215287302 0.0194763073 -5.10210613e-05 -0.00454906855 0.000766616719 0.000292918282 0.00264178578 -0.00171588469 -0.00143780676 -0.000970366998 0.00119148078 0.000783009191 ]';

AA = [ %24x14
0.112100644 0.0485493844 -0.121655514 -0.118304529 0.41213054 -0.168042838 0.0143589659 -0.00975647018 0.0614726808 -0.0458903088 -0.0276132621 -0.0165791172 0.02735623 0.0147816679 ;
-0.112100644 -0.0485493844 0.121655514 0.118304529 -0.41213054 0.168042838 -0.0143589659 0.00975647018 -0.0614726808 0.0458903088 0.0276132621 0.0165791172 -0.02735623 -0.0147816679 ;
-0.112100644 -0.0485493844 0.121655514 0.118304529 -0.41213054 0.168042838 -0.0143589659 0.00975647018 -0.0614726808 0.0458903088 0.0276132621 0.0165791172 -0.02735623 -0.0147816679 ;
0.112100644 0.0485493844 -0.121655514 -0.118304529 0.41213054 -0.168042838 0.0143589659 -0.00975647018 0.0614726808 -0.0458903088 -0.0276132621 -0.0165791172 0.02735623 0.0147816679 ;
-0.229992901 0.374368473 -0.078643151 -0.0110140759 0.0867290818 0.225618922 -0.373293445 0.0941028198 -0.155478543 -0.0190216153 -0.435450443 0.298712618 0.153348554 0.176075263 ;
0.00205907147 -0.289438722 -0.357165786 0.212299464 -0.135508282 -0.284685638 0.0459373915 -0.445846401 -0.0254421452 0.328034641 -0.273321956 -0.307579289 0.00123177176 0.163816053 ;
0.0822752323 -0.189450046 0.417334793 0.10285542 0.144273917 0.00132963451 0.0659513204 0.269371656 -0.318660739 -0.320113451 -0.0496972154 -0.363290577 -0.125704757 0.426276867 ;
0.145638813 0.104522529 0.0185057264 -0.30413125 -0.0954807807 0.0577589384 -0.0729439966 -0.279397104 -0.040408729 -0.223383749 -0.215733875 0.0690009549 -0.521713522 -0.409942873 ;
-0.00577937986 0.305458581 0.147992747 0.394263011 0.0158922788 -0.201929016 -0.0168889183 -0.170272869 0.353604888 0.017310926 0.113930121 0.289152521 -0.376155302 0.395864432 ;
-0.355184215 -0.11121681 -0.237827338 -0.0792355371 0.0747814648 0.130255501 -0.534338766 0.224486161 0.185427045 0.104150295 0.114518443 -0.376656317 -0.0601812446 -0.0145313615 ;
-0.23148754 -0.0879713378 0.302537463 -0.409254933 -0.0533491058 -0.484595933 -0.0801898599 0.00970884562 -0.307604619 0.215554733 0.151986813 0.0971239655 -0.137765104 -0.0820914432 ;
0.553689396 -0.0584821976 -0.181152665 0.197615014 0.125836229 0.335374172 -0.0841476274 0.107658305 -0.399439021 0.314135235 0.163830253 0.0916727068 -0.176781792 -0.0868674697 ;
0.229968416 -0.374382158 0.0786782977 0.0110203114 -0.0867125846 -0.225557004 -0.396995897 -0.0353439592 -0.142668048 -0.0744570222 -0.396312022 0.341433607 0.156235049 0.15273179 ;
-0.00207415522 0.289456875 0.357193803 -0.212286584 0.135519658 0.284667434 0.0556544915 -0.336450518 -0.0749545818 0.401550979 -0.286840095 -0.331025342 -0.0185647835 0.172959993 ;
-0.0822752323 0.189450046 -0.417334793 -0.10285542 -0.144273917 -0.00132963451 -0.0659513204 -0.269371656 -0.389781564 -0.465034058 0.176113708 -0.144799339 -0.169531279 0.295077472 ;
-0.145638813 -0.104522529 -0.0185057264 0.30413125 0.0954807807 -0.0577589384 0.0729439966 0.279397104 0.0674140375 -0.0965440725 -0.46716508 -0.16876522 -0.46097694 -0.264543944 ;
0.00577937986 -0.305458581 -0.147992747 -0.394263011 -0.0158922788 0.201929016 0.0168889183 0.170272869 0.212974474 0.236886533 0.064931707 0.211732959 -0.431699146 0.428068121 ;
0.355210905 0.111206895 0.237850785 0.079276357 -0.0748141478 -0.130199275 -0.59801858 -0.106372592 0.206506283 -0.0295103457 0.220480702 -0.263640264 -0.0580442736 -0.077402051 ;
0.018672147 0.435080969 -0.17279353 0.086759178 -0.143586011 -0.381808386 0.00831624356 0.39960889 -0.282107177 0.338344408 0.00165303585 -0.0524998361 -0.117686618 0.00577340739 ;
-0.41842417 -0.193041047 0.1144857 0.33161503 0.397453305 0.0891833679 -0.142751753 -0.291928726 -0.305385288 0.105430594 0.257200185 0.205700018 -0.143453406 -0.14406532 ;
0.112156602 0.0485430668 -0.121744841 -0.118331562 0.41209112 -0.168104657 0.960039982 1.01348087 1.58879549 0.61733109 2.72785031 0.840876366 1.42131246 -0.992775663 ;
-0.00246589075 -0.183714926 0.0324180525 -0.174119635 -0.873619162 0.79282903 2.00956497 -0.475546305 0.41373619 -1.79584338 -1.51180241 -0.269920402 2.09646287 -0.615466494 ;
-0.112044685 -0.048555702 0.121566187 0.118277495 -0.412169959 0.167981019 0.93132205 1.03299381 1.46585012 0.709111707 2.78307684 0.874034601 1.3666 -1.022339 ;
0.221735396 -0.0866161568 -0.210892976 -0.410728693 -0.0493580824 0.456743354 2.03828291 -0.495059245 0.536681552 -1.88762399 -1.56702893 -0.303078636 2.15117533 -0.585903159 ];

bb = [ %24
-2.64032001 -2.96391656 -2.64036626 -2.31702752 -0.933279467 -0 -0 -0.000214622926 -0 -0 -0 -0 -0.933510442 -0 -0 -0 -0 -0 -1.36293271e-05 -0 1.25152709e-14 -2.96391656 4.4408921e-16 -2.31698897 ]';

%Solutions
xx = [ %14
0.571493171 -0.192330631 0.39576995 -0.48347471 0.300954519 -0.0906000631 0.249015039 -0.148980232 -0.0606836013 0.285780185 0.606271536 -0.672518468 -0.847011991 -0.0678303789 ]';

% << solve qp
W_OP2 = [ %14
0.571493171 -0.192330631 0.39576995 -0.48347471 0.300954519 -0.0906000631 0.249015039 -0.148980232 -0.0606836013 0.285780185 0.606271536 -0.672518468 -0.847011991 -0.0678303789 ]';

feas_OP2 =[ % (A*w - b >= 0) = [ %24
2.80177324 2.80246332 2.47891303 2.47848075 1.21430643e-16 1.73472348e-17 0.438092528 0.438319225 5.20417043e-17 -5.44269491e-17 0.438011976 0.438249666 0.438291328 0.438136777 8.32667268e-17 3.81639165e-17 0.438221369 0.438053903 -8.1857264e-17 2.42861287e-16 0.322906463 0.324021126 -4.99600361e-16 -5.89805982e-16 ]';

fID = [ %12
3.15216468e-05 2.72443156e-05 -0.120466643 -0.120494456 -2.30772629e-05 -2.7090971e-05 0.082209013 0.0822036673 -0.120494113 -0.120466021 0.0822028616 0.0822082741 ]';

final_contact_force = [ %20
2.80177324 2.80246332 2.47891303 2.47848075 1.21430643e-16 1.73472348e-17 0.438092528 0.438319225 5.20417043e-17 -5.44269491e-17 0.438011976 0.438249666 0.438291328 0.438136777 8.32667268e-17 3.81639165e-17 0.438221369 0.438053903 -8.1857264e-17 2.42861287e-16 ]';

%cf = [cN cS cT] -> [z x y]
%[2.80177 -0.438093 -0.438319] 
%[2.80246 -0.438012 -0.43825] 
%[2.47891 0.438291 0.438137] 
%[2.47848 0.438221 0.438054] 

final_joint_torque = [ %12
-0.000108834625 -0.000105934707 -0.0660167821 -0.065571153 0.000155333641 0.000159742737 -0.96972765 -0.969358474 -0.133028446 -0.133438935 -1.15226209 -1.15270243 ]';

%%%%%%%%%%%%%%%%%%%
%%% PASTE ABOVE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%
nvars = nc*5
nk = 4

S = ST(:,1:4:end) 
T = ST(:,2:4:end) 

Cn_v = (N'*v)'
Cs_v = (S'*v)'
Ct_v = (T'*v)'

vb = v(nq+1:end)
vq = v(1:nq)
vqstar = v(1:nq)
j = [E,D]*(fext + zuff)*h + vb
Z = ( [E,D] - E*(F\[F,E']) )*R 
k = [F,E']*(fext + zuff)*h  +  vq 
p = j + E*(F\(vqstar - k))
qM = Z'*A*Z
qc = Z'*A*p + Z'*B*vqstar

% qA*z - qb >= 0
CF = [zeros(nc,nvars)];
polygon_rad = cos(pi/nk);
for i = 1:nc
    CF(i,i) = 1;
    for k = 1:nc
        friction = MU(i,1+mod(k,2))*polygon_rad;
        CF(i,i*nk + k) = -1.0/friction;
    end
end
qA = [
      N'*[Z;zeros(nq,size(Z,2))]; % interpenetration
      eye(nc),zeros(nc,nvars-nc); % encompassed by Coulomb Friction constraint
                    CF          ; % coulomb friction
      ]
qb = [
      -N'*[vqstar;p] ;
      zeros(nc,1)   ;
      zeros(nc,1)   ;
      ]
      
z = quadprog(qM,qc,-qA,-qb,[],[],zeros(size(qc)),[])
feas = qA*z - qb
zz = lemke(MM,qq)
feas = qA*zz(1:nvars) - qb


% - 6:16:29 2:   Cn * v: [-1.3103507, -1.3107062, -1.1344359, -1.1341832] 
% - 6:16:29 2:   Cs * v: [0.67731828, 0.6689106, 0.55187433, 0.56025117] 
% - 6:16:29 2:   Ct * v: [6.6029824e-05, 8.8818726e-05, 6.3878658e-05, 4.9265451e-05]