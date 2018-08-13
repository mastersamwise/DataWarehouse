using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace PsxEmulator
{
    public class Emulator
    {
        public string mednafenLocation = "C:\\Users\\Nik\\Dropbox\\Games\\PsxEmulator\\mednafen-1.21.3-win64\\mednafen.exe";
        public string playstationGameLocation = "C:\\Users\\Nik\\Dropbox\\Games\\PsxEmulator\\Games\\";
        public string gameboyGameLocation = @"";

        public int psxEmulatorID = 1;
        public int gameboyEmulatorID = 2;

        public string playstationGameExtension = ".cue";

        public List<string> playstationGames = new List<string>();
        public List<string> gameboyGames = new List<string>();

        public Emulator()
        {}

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
                    Console.WriteLine("No valid selection made. Exiting...");
                    break;
            }
        }

        public void LaunchPsxGameSelection()
        {
            PopulateGames();
            Console.WriteLine("Which game would you like to play?");

            for( int i = 0; i < playstationGames.Count; i ++ )
            {
                Console.WriteLine("{0}: {1}", i + 1, playstationGames.ElementAt(i));
            }

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
            string command = "/C " + mednafenLocation + " \"" + playstationGameLocation + playstationGames.ElementAt(gameChoice - 1) + playstationGameExtension;
            Console.WriteLine("Command: {0}", command);
            System.Diagnostics.Process.Start("cmd.exe", command);

        }

        public void LaunchGameboyEmulator(int gameChoice)
        {
            string command = "/K echo hello gameboy";
            System.Diagnostics.Process.Start("cmd.exe", command);
        }

        public void PopulateGames()
        {
            List<string> tempList = new List<string>();
            tempList.AddRange(Directory.GetFiles(playstationGameLocation).Where(element => element.Contains(playstationGameExtension)));

            foreach(string s in tempList)
            {
                string e = s.Substring(playstationGameLocation.Length, s.Length - playstationGameLocation.Length);
                e = e.Substring(0, e.Length - playstationGameExtension.Length);
                playstationGames.Add(e);
            }
        }
    }
}