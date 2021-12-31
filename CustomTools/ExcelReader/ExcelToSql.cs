using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

using Microsoft.Office.Interop.Excel;

namespace Utilities
{
    public static class ExcelToSql
    {
        // https://coderwall.com/p/app3ya/read-excel-file-in-c


        /// <summary>
        /// Reads in the data from an excel file and outputs the information in a Sql file in the format:
        /// "( '<data>', '<data>', '<data>' );"
        /// </summary>
        public static void ParseExcelDataToSql(string inExcelFileName, string inOutputFileName)
        {
            Application app = new Application();
            Workbook workbook = app.Workbooks.Open(inExcelFileName);
            Worksheet worksheet = (Worksheet)workbook.Sheets[1];
            Range range = worksheet.UsedRange;

            int numRows = range.Rows.Count;
            int numColumns = range.Columns.Count;
            string cellValue = String.Empty;
            string data = String.Empty;

            using (StreamWriter outputFile = new StreamWriter(inOutputFileName))
            { 
                // Excel does not use a zero-based index
                for (int rowCount = 1; rowCount < numRows; rowCount++)
                {
                    outputFile.Write($"{ Environment.NewLine} ( ");

                    for (int colCount = 1; colCount < numColumns; colCount++)
                    {
                        cellValue = range.Cells[rowCount, colCount] != null ? range.Cells[rowCount, colCount].ToString() : "";

                        if (colCount == numColumns)
                        {
                            data = $"{cellValue}, ";
                        }
                        else
                        {
                            data = $"{cellValue}";
                        }

                        outputFile.Write($"{data}");
                    }

                    outputFile.Write($" ),");
                }
            }
        }

    }
}
