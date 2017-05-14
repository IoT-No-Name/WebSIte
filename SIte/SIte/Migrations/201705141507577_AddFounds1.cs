namespace SIte.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddFounds1 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Founds", "UserId", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Founds", "UserId");
        }
    }
}
