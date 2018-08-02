using System;
using System.Threading;

namespace PsxEmulator
{
    class Program
    {
        static Emulator emulator = new Emulator();


        static void Main(string[] args)
        {
            // Thread emulatorThread = new Thread(new ThreadStart(startEmulator));
            // emulatorThread.Start();
            emulator.LaunchEmulatorMainMenu();
        }

        static void startEmulator()
        {
            emulator.LaunchEmulatorMainMenu();
        }
    }
}
