﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BusinessLayer.DBAccess
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ROUTE_MANAGEMENTEntities1 : DbContext
    {
        public ROUTE_MANAGEMENTEntities1()
            : base("name=ROUTE_MANAGEMENTEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Reflect> Reflects { get; set; }
        public virtual DbSet<ReflectType> ReflectTypes { get; set; }
    }
}