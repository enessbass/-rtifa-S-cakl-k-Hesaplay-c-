
fprintf('\nYükseklik Verilirse (1)');
fprintf('\nSıcaklık Ve Yoğunluk Verilirse (2)');
fprintf('\nSıcaklık Ve Basınç Verilirse (3)');
fprintf('\nYoğunluk Ve Basınç Verilirse (4)\n');

fprintf('\nStratosfer için Hesaplar... [11-25km] (5)\n');

a = input('\nSEÇİMİ YAPINIZ ! \n');

if a == 1;
    
    h = input('\nYüksekliği Gir\n');
    bb = (1 - h / 44308)^5.259;
    b = bb*101325;
    yy = (1 - h / 44308)^4.259;
    y = yy*1.225;
    tt = (bb*101325 )/(287*1.225*yy);
    ttd = tt-273;
    fprintf("\nBasınç Oranı p/p0 : %.3f \n",bb);
    fprintf("Yoğunluk Oranı ro/ro0 : %.3f \n",yy);
    fprintf("Sıcaklık : %.3f Kelvin\n",tt);
    fprintf("Sıcaklık : %.3f Derece\n",ttd);
    fprintf("Yoğunluk (%d İrtifada) : %.3f kg/m^3\n",h,y);
    fprintf("Basınç (%d İrtifada): %.3f Pascal\n",h,b);
    
elseif a == 2;
    tt = input('Sıcaklığı (x metre) Girin : \n');
    y = input('Yoğunluğu (x metre) Girin : \n');
    p = 287*tt*y;
    bb = (p / 101325)^(1 / 5.329);
    h = (bb-1)*(-44308);
    fprintf("Yükseklik : %.3f m\n",h);
    fprintf("Basınç : %.3f Pascal",p);
    
elseif a == 3;
    tt = input('Sıcaklığı (x metre) Girin : \n');
    p = input('Basınç (x metre) Girin : \n');
    ro = p/(287*tt);
    yy = (ro / 1.225)^(1 / 4.259);
    h = (yy-1)*(-44308);
    fprintf("Yükseklik : %.3f m\n",h);
    fprintf("Yoğunluk : %.3f kg/m^3\n",ro);
    
elseif a == 4;
    y = input('Yoğunluğu (x metre) Girin : \n');
    p = input('Basınç (x metre) Girin : \n');
    tt = p /( y*287);
    
    bb = (p / 101325)^(1 / 5.329);
    h = (bb-1)*(-44308);
    
    yy = (y / 1.225)^(1 / 4.259);
    h = (yy-1)*(-44308);
    
    fprintf("Yükseklik : %.3f m\n",h);
    fprintf("Sıcaklık : %.3f K\n",tt);
elseif a == 5;
    h = input('Yüksekliği Girin : \n');
    x = (-1.5776*10^(-4))*(h-11000);
    ssag = exp(x);
    y = ssag*0.363;
    b = ssag*22591.749;
    tt = b/(y*287);
    fprintf("Yoğunluk : %.3f kg/m^3\n",y);
    fprintf("Basınç : %.3f Pascal\n",b);
    fprintf("Sıcaklık : %.3f K\n",tt);
    
    

    
else 
    fprintf("Yanlış Bir Rakam Giridniz");
end
