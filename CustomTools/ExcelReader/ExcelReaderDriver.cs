using System;
using System.IO;

namespace Utilities
{
    public class ExcelReaderDriver
    {
        private string SLASH = Path.DirectorySeparatorChar.ToString();
        public const string EXCEL_FILE = $"C:{SLASH}Users{SLASH}Nik{SLASH}Desktop{SLASH}Confirmation_Numbers_test.xlsx";
        public const string OUTPUT_SQL_FILE = $"output{SLASH}output.txt";

        public static void Main(string[] args)
        {
            Console.WriteLine("Reading excel file");

            ExcelToSql.ParseExcelDataToSql(EXCEL_FILE, OUTPUT_SQL_FILE);
        }
    }
}
