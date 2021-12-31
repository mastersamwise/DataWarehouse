using System;

namespace Utilities
{
    public class ExcelReaderDriver
    {
        
        public const string EXCEL_FILE = @"C:\Users\Nik\Desktop\Confirmation_Numbers_test.xlsx";
        public const string OUTPUT_SQL_FILE = @"output\output.txt";

        public static void Main(string[] args)
        {
            Console.WriteLine("Reading excel file");

            ExcelToSql.ParseExcelDataToSql(EXCEL_FILE, OUTPUT_SQL_FILE);
        }
    }
}
