﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class authuserEntities : DbContext
    {
        public authuserEntities()
            : base("name=authuserEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<log_user> log_user { get; set; }
        public virtual DbSet<reg_user> reg_user { get; set; }
        public virtual DbSet<customer> customers { get; set; }
        public virtual DbSet<cust_mor> cust_mor { get; set; }
        public virtual DbSet<transection> transections { get; set; }
        public virtual DbSet<account> accounts { get; set; }
    }
}
