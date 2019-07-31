using System;
using System.Text;
using System.Security.Cryptography;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{
    public string Hasher(string password, string userName)
    {
        using (var sha = new SHA512CryptoServiceProvider())
        {
            var hashedString = sha.ComputeHash(Encoding.Default.GetBytes(password + userName));
            return Convert.ToBase64String(hashedString);
        }
    }
}
