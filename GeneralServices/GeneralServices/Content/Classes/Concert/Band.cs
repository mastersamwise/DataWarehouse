using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.Classes
{
    public class Band
    {
        public int bandID { get; set; }
        public string bandName { get; set; }
        public AuditInfo auditInfo { get; set; }
    }
}
