//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace authwebpart
{
    using System;
    using System.Collections.Generic;
    
    public partial class cust_mor
    {
        public int cust_mor_id { get; set; }
        public int c_id { get; set; }
        public string item_type { get; set; }
        public string item_name { get; set; }
        public decimal gross_weight { get; set; }
        public Nullable<decimal> rate { get; set; }
        public decimal amount { get; set; }
    
        public virtual customer customer { get; set; }
    }
}
