using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using Newtonsoft.Json.Linq;
using IvansCompany.Data;

namespace IvansCompany.Services
{
	public class DataControllerService
    {
        
        public DataControllerService()
        {
        }
        
        public ViewPage GetPage(string controller, string view, PageRequest request)
        {
            return ControllerFactory.CreateDataController().GetPage(controller, view, request);
        }
        
        public ActionResult[] ExecuteList(ActionArgs[] requests)
        {
            return ((DataControllerBase)(ControllerFactory.CreateDataController())).ExecuteList(requests);
        }
        
        public ViewPage[] GetPageList(PageRequest[] requests)
        {
            return ((DataControllerBase)(ControllerFactory.CreateDataController())).GetPageList(requests);
        }
        
        public object[] GetListOfValues(string controller, string view, DistinctValueRequest request)
        {
            return ControllerFactory.CreateDataController().GetListOfValues(controller, view, request);
        }
        
        public ActionResult Execute(string controller, string view, ActionArgs args)
        {
            return ControllerFactory.CreateDataController().Execute(controller, view, args);
        }
        
        public string[] GetCompletionList(string prefixText, int count, string contextKey)
        {
            return ControllerFactory.CreateAutoCompleteManager().GetCompletionList(prefixText, count, contextKey);
        }
        
        public string GetSurvey(string survey)
        {
            return ControllerFactory.GetSurvey(survey);
        }
        
        public object Login(string username, string password, bool createPersistentCookie)
        {
            return ApplicationServices.Login(username, password, createPersistentCookie);
        }
        
        public void Logout()
        {
            ApplicationServices.Logout();
        }
        
        public string[] Roles()
        {
            return ApplicationServices.Roles();
        }
        
        public object Themes()
        {
            return ApplicationServices.Themes();
        }
        
        public virtual object Invoke(string method, JObject args)
        {
            ServiceRequestHandler handler = null;
            object result = null;
            if (ApplicationServices.RequestHandlers.TryGetValue(method.ToLower(), out handler))
            	result = handler.HandleRequest(this, args);
            return result;
        }
    }
}
