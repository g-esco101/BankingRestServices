using System.ServiceModel;
using System.ServiceModel.Web;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService" in both code and config file together.
[ServiceContract]
public interface IService
{
    [OperationContract]
    [WebGet(UriTemplate = "add2/{operand1}/{operand2}")]
    string Addition(string operand1, string operand2);

    [OperationContract]
    [WebGet(UriTemplate = "sub2/{operand1}/{operand2}")]
    string Subtraction(string operand1, string operand2);
}
