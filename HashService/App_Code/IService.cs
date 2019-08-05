using System.ServiceModel;
using System.ServiceModel.Web;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService" in both code and config file together.
[ServiceContract]
public interface IService
{
    [OperationContract]
    [WebGet(UriTemplate = "hash/{password}/{salt}")]      // Since paramters are string use simpler format - in contrast to "hash?password={password}&user={user}"
    string Hasher(string password, string salt);
}
