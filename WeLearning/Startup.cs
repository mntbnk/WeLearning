using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WeLearning.Startup))]
namespace WeLearning
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
