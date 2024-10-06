using System;

class Program
{
    static void Main()
    {
        Console.WriteLine("\nSıcaklık Ve Yoğunluk Verilirse (2)");
        Console.WriteLine("Sıcaklık Ve Basınç Verilirse (3)");
        Console.WriteLine("Yoğunluk Ve Basınç Verilirse (4)");
        Console.WriteLine("\nStratosfer için Hesaplar... [11-25km] (5)\n");

        Console.Write("\nSEÇİMİ YAPINIZ ! \n");
        int a = Convert.ToInt32(Console.ReadLine());

        if (a == 1)
        {
            Console.Write('\nYüksekliği Gir\n');
            double h = Convert.ToDouble(Console.ReadLine());
            double bb = Math.Pow((1 - h / 44308), 5.259);
            double b = bb * 101325;
            double yy = Math.Pow((1 - h / 44308), 4.259);
            double y = yy * 1.225;
            double tt = (bb * 101325) / (287 * 1.225 * yy);
            double ttd = tt - 273;
            Console.WriteLine($"\nBasınç Oranı p/p0 : {bb:F3} \n");
            Console.WriteLine($"Yoğunluk Oranı ro/ro0 : {yy:F3} \n");
            Console.WriteLine($"Sıcaklık : {tt:F3} Kelvin\n");
            Console.WriteLine($"Sıcaklık : {ttd:F3} Derece\n");
            Console.WriteLine($"Yoğunluk ({h} İrtifada) : {y:F3} kg/m^3\n");
            Console.WriteLine($"Basınç ({h} İrtifada): {b:F3} Pascal\n");
        }
        else if (a == 2)
        {
            Console.Write("Sıcaklığı (x metre) Girin : \n");
            double tt = Convert.ToDouble(Console.ReadLine());
            Console.Write("Yoğunluğu (x metre) Girin : \n");
            double y = Convert.ToDouble(Console.ReadLine());
            double p = 287 * tt * y;
            double bb = Math.Pow((p / 101325), (1.0 / 5.329));
            double h = (bb - 1) * (-44308);
            Console.WriteLine($"Yükseklik : {h:F3} m\n");
            Console.WriteLine($"Basınç : {p:F3} Pascal");
        }
        else if (a == 3)
        {
            Console.Write("Sıcaklığı (x metre) Girin : \n");
            double tt = Convert.ToDouble(Console.ReadLine());
            Console.Write("Basınç (x metre) Girin : \n");
            double p = Convert.ToDouble(Console.ReadLine());
            double ro = p / (287 * tt);
            double yy = Math.Pow((ro / 1.225), (1.0 / 4.259));
            double h = (yy - 1) * (-44308);
            Console.WriteLine($"Yükseklik : {h:F3} m\n");
            Console.WriteLine($"Yoğunluk : {ro:F3} kg/m^3\n");
        }
        else if (a == 4)
        {
            Console.Write("Yoğunluğu (x metre) Girin : \n");
            double y = Convert.ToDouble(Console.ReadLine());
            Console.Write("Basınç (x metre) Girin : \n");
            double p = Convert.ToDouble(Console.ReadLine());
            double tt = p / (y * 287);

            double bb = Math.Pow((p / 101325), (1.0 / 5.329));
            double h = (bb - 1) * (-44308);

            double yy = Math.Pow((y / 1.225), (1.0 / 4.259));
            h = (yy - 1) * (-44308);

            Console.WriteLine($"Yükseklik : {h:F3} m\n");
            Console.WriteLine($"Sıcaklık : {tt:F3} K\n");
        }
        else if (a == 5)
        {
            Console.Write("Yüksekliği Girin : \n");
            double h = Convert.ToDouble(Console.ReadLine());
            double x = (-1.5776 * Math.Pow(10, -4)) * (h - 11000);
            double ssag = Math.Exp(x);
            double y = ssag * 0.363;
            double b = ssag * 22591.749;
            double tt = b / (y * 287);
            Console.WriteLine($"Yoğunluk : {y:F3} kg/m^3\n");
            Console.WriteLine($"Basınç : {b:F3} Pascal\n");
            Console.WriteLine($"Sıcaklık : {tt:F3} K\n");
        }
        else
        {
            Console.WriteLine("Yanlış Bir Rakam Girdiniz");
        }
    }
}
