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
    
    public partial class customer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public customer()
        {
            this.cust_mor = new HashSet<cust_mor>();
            this.transections = new HashSet<transection>();
        }
    
        public int c_id { get; set; }
        public string c_fname { get; set; }
        public string c_mname { get; set; }
        public string c_lname { get; set; }
        public string address { get; set; }
        public string city { get; set; }
        public string email_id { get; set; }
        public decimal mobile_no { get; set; }
        public string cphoto_path { get; set; }
        public string mphoto_path { get; set; }
        public Nullable<System.DateTime> create_date { get; set; }
        public Nullable<System.DateTime> created_date { get; set; }
        public Nullable<System.DateTime> updated_date { get; set; }
        public Nullable<decimal> interest_rate { get; set; }
        public decimal credit_limit { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<cust_mor> cust_mor { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<transection> transections { get; set; }
    }
}
