//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataWarehouse.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class ChangeHistory
    {
        public Nullable<int> changed_by_member_id { get; set; }
        public string table_changed { get; set; }
        public string column_changed { get; set; }
        public int changed_record_id { get; set; }
        public string old_value { get; set; }
        public string new_value { get; set; }
    
        public virtual Member Member { get; set; }
    }
}
