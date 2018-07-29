using System;

namespace PsxEmulator
{
    class Program
    {
        static string mednafenLocation = @"C:\Users\Nik\Dropbox\Games\PSX Emulator\mednafen-1.21.3-win64\mednafen.exe";
        static string playstationGameLocation = @"C:\Users\Nik\Dropbox\Games\PSX Emulator\Games\";
        static string gameboyGameLocation = @"";

        static int psxEmulatorID = 1;
        static int gameboyEmulatorID = 2;


        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            Console.WriteLine("Which emulator are you looking to play?");
            Console.WriteLine("\t{0}: Playstation One", psxEmulatorID);
            Console.WriteLine("\t{0}: Gameboy / Gambeboy Advance", gameboyEmulatorID);
            string consoleID = Console.ReadLine();

            LaunchEmulator(int.Parse(consoleID));
        }

        static void LaunchEmulator(int consoleID)
        {
            switch(consoleID)
            {
                case 1:
                    LaunchPsxGameSelection();
                    break;
                case 2:
                    LaunchGameboySelection();
                    break;
                default:
                    break;
            }
        }

        static void LaunchPsxGameSelection()
        {
            Console.WriteLine("Which game would you like to play?");
            Console.WriteLine("1: Crash Bandicoot");
            string gameChoice = Console.ReadLine();

            LaunchPsxEmulator(int.Parse(gameChoice));
        }

        static void LaunchGameboySelection()
        {
            Console.WriteLine("Which game would you like to play?");
            Console.WriteLine("1: Pokemon Silver");
            string gameChoice = Console.ReadLine();

            LaunchGameboyEmulator(int.Parse(gameChoice));
        }

        static void LaunchPsxEmulator(int gameChoice)
        {
            string command = "/C " + mednafenLocation + " " + playstationGameLocation + "Suikoden II.cue";
            System.Diagnostics.Process.Start("cmd.exe", command);

        }

        static void LaunchGameboyEmulator(int gameChoice)
        {
            string command = "/C echo hello gameboy";
            System.Diagnostics.Process.Start("cmd.exe", command);
        }
    }
}
