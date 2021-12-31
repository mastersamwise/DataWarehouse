using System;
using System.IO;

namespace Utilities
{
    public class ExcelReaderDriver
    {

        public static string EXCEL_FILE = $"C:{Path.DirectorySeparatorChar}Users{Path.DirectorySeparatorChar}Nik{Path.DirectorySeparatorChar}Desktop{Path.DirectorySeparatorChar}Confirmation_Numbers_test.xlsx";
        public static string OUTPUT_SQL_FILE = $"output{Path.DirectorySeparatorChar}output.txt";

        public static void Main(string[] args)
        {
            Console.WriteLine("Reading excel file");

            ExcelToSql.ParseExcelDataToSql(EXCEL_FILE, OUTPUT_SQL_FILE);
        }
    }
}
