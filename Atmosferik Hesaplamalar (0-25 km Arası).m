fprintf('\nSadece Y�kseklik Verilirse (1)');  
fprintf('\nS�cakl�k Ve Yo�unluk Verilirse (2)');
fprintf('\nS�cakl�k Ve Bas�n� Verilirse (3)');
fprintf('\nYo�unluk Ve Bas�n� Verilirse (4)\n');

fprintf('\nStratosfer i�in Hesaplar... [11-25km] (5)\n');

a = input('\nSE��M� YAPINIZ ! \n');

if a == 1;
    
    h = input('\nY�ksekli�i Gir\n');
    bb = (1 - h / 44308)^5.259;
    b = bb*101325;
    yy = (1 - h / 44308)^4.259;
    y = yy*1.225;
    tt = (bb*101325 )/(287*1.225*yy);
    ttd = tt-273;
    fprintf("\nBas�n� Oran� p/p0 : %.3f \n",bb);
    fprintf("Yo�unluk Oran� ro/ro0 : %.3f \n",yy);
    fprintf("S�cakl�k : %.3f Kelvin\n",tt);
    fprintf("S�cakl�k : %.3f Derece\n",ttd);
    fprintf("Yo�unluk (%d �rtifada) : %.3f kg/m^3\n",h,y);
    fprintf("Bas�n� (%d �rtifada): %.3f Pascal\n",h,b);
    
elseif a == 2
    tt = input('S�cakl��� (x metre) Girin : \n');
    y = input('Yo�unlu�u (x metre) Girin : \n');
    p = 287*tt*y;
    bb = (p / 101325)^(1 / 5.329);
    h = (bb-1)*(-44308);
    fprintf("Y�kseklik : %.3f m\n",h);
    fprintf("Bas�n� : %.3f Pascal",p);
    
elseif a == 3
    tt = input('S�cakl��� (x metre) Girin : \n');
    p = input('Bas�n� (x metre) Girin : \n');
    ro = p/(287*tt);
    yy = (ro / 1.225)^(1 / 4.259);
    h = (yy-1)*(-44308);
    fprintf("Y�kseklik : %.3f m\n",h);
    fprintf("Yo�unluk : %.3f kg/m^3\n",ro);
    
elseif a == 4
    y = input('Yo�unlu�u (x metre) Girin : \n');
    p = input('Bas�n� (x metre) Girin : \n');
    tt = p /( y*287);
    
    bb = (p / 101325)^(1 / 5.329);
    h = (bb-1)*(-44308);
    
    yy = (y / 1.225)^(1 / 4.259);
    h = (yy-1)*(-44308);
    
    fprintf("Y�kseklik : %.3f m\n",h);
    fprintf("S�cakl�k : %.3f K\n",tt);
elseif a == 5
    h = input('Y�ksekli�i Girin : \n');
    x = (-1.5776*10^(-4))*(h-11000);
    ssag = exp(x);
    y = ssag*0.363;
    b = ssag*22591.749;
    tt = b/(y*287);
    fprintf("Yo�unluk : %.3f kg/m^3\n",y);
    fprintf("Bas�n� : %.3f Pascal\n",b);
    fprintf("S�cakl�k : %.3f K\n",tt);
    
    

    
else 
    fprintf("Yanl�� Bir Rakam Giridniz");
end