//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace module2
{
    using System;
    using System.Collections.Generic;
    
    public partial class transection
    {
        public int t_id { get; set; }
        public int c_id { get; set; }
        public string t_type { get; set; }
        public System.DateTime t_date { get; set; }
        public decimal t_amount { get; set; }
        public string t_remark { get; set; }
    
        public virtual customer customer { get; set; }
    }
}
