using System;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{
    public string Addition(string operand1, string operand2)
    {
        string returnStr = "Invalid";
        try
        {
            double operand1Dble = Convert.ToDouble(operand1);
            double operand2Dble = Convert.ToDouble(operand2);
            double value = operand1Dble + operand2Dble;
            returnStr = value.ToString();
        }
        catch { }

        return returnStr;
    }

    public string Subtraction(string operand1, string operand2)
    {
        string returnStr = "Invalid";
        try
        {
            double operand1Dble = Convert.ToDouble(operand1);
            double operand2Dble = Convert.ToDouble(operand2);
            double value = operand1Dble - operand2Dble;
            returnStr = value.ToString();
        }
        catch { }

        return returnStr;
    }
}
