
using IvansApp.Handlers;

namespace IvansApp.Services
{
	public class AppFrameworkConfig
    {
        
        public virtual void Initialize()
        {
            ApplicationServices.FrameworkAppName = "Core Application";
            ApplicationServices.Version = "8.7.4.2";
            ApplicationServices.JqmVersion = "1.4.6";
            ApplicationServices.HostVersion = "1.2.4.0";
            BlobFactoryConfig.Initialize();
        }
    }
}
