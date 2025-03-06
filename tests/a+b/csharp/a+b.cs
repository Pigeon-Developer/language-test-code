using System;

class APlusB
{
    static void Main()
    {
        string input = Console.ReadLine();
        string[] numbers = input.Split(' ');
        int a = int.Parse(numbers[0]);
        int b = int.Parse(numbers[1]);
        Console.WriteLine(a + b);
    }
}