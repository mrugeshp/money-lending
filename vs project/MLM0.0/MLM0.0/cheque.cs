//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MLM0._0
{
    using System;
    using System.Collections.Generic;
    
    public partial class cheque
    {
        public int t_id { get; set; }
        public int cheque_no { get; set; }
        public int cheque_amt { get; set; }
        public string pay_from { get; set; }
    
        public virtual transection transection { get; set; }
    }
}