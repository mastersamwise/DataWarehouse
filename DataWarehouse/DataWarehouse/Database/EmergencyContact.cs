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
    
    public partial class EmergencyContact
    {
        public int member_id { get; set; }
        public string contact_name { get; set; }
        public string contact_relation { get; set; }
        public string contact_phone_number { get; set; }
        public string contact_address { get; set; }
        public string added_comment { get; set; }
        public System.DateTime date_created { get; set; }
        public System.DateTime last_modified { get; set; }
        public bool is_deleted { get; set; }
    
        public virtual Member Member { get; set; }
    }
}
