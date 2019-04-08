using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RolodexApp.Startup))]
namespace RolodexApp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
