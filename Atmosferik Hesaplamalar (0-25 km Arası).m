fprintf('\nSadece Yükseklik Verilirse (1)');  
fprintf('\nSýcaklýk Ve Yoðunluk Verilirse (2)');
fprintf('\nSýcaklýk Ve Basýnç Verilirse (3)');
fprintf('\nYoðunluk Ve Basýnç Verilirse (4)\n');

fprintf('\nStratosfer için Hesaplar... [11-25km] (5)\n');

a = input('\nSEÇÝMÝ YAPINIZ ! \n');

if a == 1;
    
    h = input('\nYüksekliði Gir\n');
    bb = (1 - h / 44308)^5.259;
    b = bb*101325;
    yy = (1 - h / 44308)^4.259;
    y = yy*1.225;
    tt = (bb*101325 )/(287*1.225*yy);
    ttd = tt-273;
    fprintf("\nBasýnç Oraný p/p0 : %.3f \n",bb);
    fprintf("Yoðunluk Oraný ro/ro0 : %.3f \n",yy);
    fprintf("Sýcaklýk : %.3f Kelvin\n",tt);
    fprintf("Sýcaklýk : %.3f Derece\n",ttd);
    fprintf("Yoðunluk (%d Ýrtifada) : %.3f kg/m^3\n",h,y);
    fprintf("Basýnç (%d Ýrtifada): %.3f Pascal\n",h,b);
    
elseif a == 2
    tt = input('Sýcaklýðý (x metre) Girin : \n');
    y = input('Yoðunluðu (x metre) Girin : \n');
    p = 287*tt*y;
    bb = (p / 101325)^(1 / 5.329);
    h = (bb-1)*(-44308);
    fprintf("Yükseklik : %.3f m\n",h);
    fprintf("Basýnç : %.3f Pascal",p);
    
elseif a == 3
    tt = input('Sýcaklýðý (x metre) Girin : \n');
    p = input('Basýnç (x metre) Girin : \n');
    ro = p/(287*tt);
    yy = (ro / 1.225)^(1 / 4.259);
    h = (yy-1)*(-44308);
    fprintf("Yükseklik : %.3f m\n",h);
    fprintf("Yoðunluk : %.3f kg/m^3\n",ro);
    
elseif a == 4
    y = input('Yoðunluðu (x metre) Girin : \n');
    p = input('Basýnç (x metre) Girin : \n');
    tt = p /( y*287);
    
    bb = (p / 101325)^(1 / 5.329);
    h = (bb-1)*(-44308);
    
    yy = (y / 1.225)^(1 / 4.259);
    h = (yy-1)*(-44308);
    
    fprintf("Yükseklik : %.3f m\n",h);
    fprintf("Sýcaklýk : %.3f K\n",tt);
elseif a == 5
    h = input('Yüksekliði Girin : \n');
    x = (-1.5776*10^(-4))*(h-11000);
    ssag = exp(x);
    y = ssag*0.363;
    b = ssag*22591.749;
    tt = b/(y*287);
    fprintf("Yoðunluk : %.3f kg/m^3\n",y);
    fprintf("Basýnç : %.3f Pascal\n",b);
    fprintf("Sýcaklýk : %.3f K\n",tt);
    
    

    
else 
    fprintf("Yanlýþ Bir Rakam Giridniz");
end