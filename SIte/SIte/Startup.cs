using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin;
using Owin;
using SIte.Models;

[assembly: OwinStartupAttribute(typeof(SIte.Startup))]
namespace SIte
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
            CreateRolesandUsers();
        }


        // In this method we will create default User roles and Admin user for login    
        private void CreateRolesandUsers()
        {
            ApplicationDbContext context = new ApplicationDbContext();

            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
            if (!roleManager.RoleExists("Customer"))
            { 
                var role1 = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role1.Name = "Customer";
                roleManager.Create(role1);
                var role2 = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role2.Name = "Freelancer";
                roleManager.Create(role2);

            }
        }
    }
}
