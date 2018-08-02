using System;

namespace PsxEmulator
{
    public class Emulator
    {
        public string mednafenLocation = "C:\\Users\\Nik\\Dropbox\\Games\\PsxEmulator\\mednafen-1.21.3-win64\\mednafen.exe";
        public string playstationGameLocation = "C:\\Users\\Nik\\Dropbox\\Games\\PsxEmulator\\Games\\";
        public string gameboyGameLocation = @"";

        public int psxEmulatorID = 1;
        public int gameboyEmulatorID = 2;

        public void LaunchEmulatorMainMenu()
        {
            Console.WriteLine("Hello World!");
            Console.WriteLine("Which emulator are you looking to play?");
            Console.WriteLine("{0}: Playstation One", psxEmulatorID);
            Console.WriteLine("{0}: Gameboy / Gambeboy Advance", gameboyEmulatorID);
            string consoleID = Console.ReadLine();

            LaunchEmulator(int.Parse(consoleID));
        }

        public void LaunchEmulator(int consoleID)
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

        public void LaunchPsxGameSelection()
        {
            Console.WriteLine("Which game would you like to play?");
            Console.WriteLine("1: Crash Bandicoot");
            string gameChoice = Console.ReadLine();

            LaunchPsxEmulator(int.Parse(gameChoice));
        }

        public void LaunchGameboySelection()
        {
            Console.WriteLine("Which game would you like to play?");
            Console.WriteLine("1: Pokemon Silver");
            string gameChoice = Console.ReadLine();

            LaunchGameboyEmulator(int.Parse(gameChoice));
        }

        public void LaunchPsxEmulator(int gameChoice)
        {
            //string command = "/C start cmd.exe /C \"" + mednafenLocation + " \"" + playstationGameLocation + "Suikoden II.cue\"\"";
            string command = "/C " + mednafenLocation + " \"" + playstationGameLocation + "Suikoden II.cue\"";
            Console.WriteLine("Command: {0}", command);
            System.Diagnostics.Process.Start("cmd.exe", command);

        }

        public void LaunchGameboyEmulator(int gameChoice)
        {
            string command = "/K echo hello gameboy";
            System.Diagnostics.Process.Start("cmd.exe", command);
        }

        
    }
}