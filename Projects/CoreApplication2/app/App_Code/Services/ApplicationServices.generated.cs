
using IvansCompany.Handlers;

namespace IvansCompany.Services
{
	public class AppFrameworkConfig
    {
        
        public virtual void Initialize()
        {
            ApplicationServices.FrameworkAppName = "Core Application 2";
            ApplicationServices.Version = "8.7.4.0";
            ApplicationServices.JqmVersion = "1.4.6";
            ApplicationServices.HostVersion = "1.2.4.0";
            BlobFactoryConfig.Initialize();
        }
    }
}
