<%@ Page Title="Hasher" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hasher.aspx.cs" Inherits="BankingRestServicesTryMe.Hasher" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Hasher</h3>
    <h4>Hashes the password.</h4>
    <div class="row">
        <div class="col-md-8">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Username" CssClass="col-md-6 control-label">Username</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="Username" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Username"
                            CssClass="text-danger" ErrorMessage="The Username field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-6 control-label">Password</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                            CssClass="text-danger" ErrorMessage="The Password field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-6 col-md-6">
                        <asp:Button runat="server" Text="Submit" OnClick="hash" CssClass="btn btn-default" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Result" CssClass="col-md-6 control-label">Result</asp:Label>
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="Result" CssClass="control-label"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(odd) {
            background-color: #dddddd;
        }
    </style>
    <table>
        <tr>
            <th>Name</th>
            <th>Input types</th>
            <th>Output type</th>
            <th>Service description</th>
            <th>Comments</th>
        </tr>
        <tr>
            <td>Hasher</td>
            <td>string (password), string (username)</td>
            <td>string (hashed password)</td>
            <td> It generates a password by using the username as the salt & hashing it with the password (this security measure will be addressed soon).</td>
            <td>It uses SHA512CryptoServiceProvider.</td>
        </tr>
    </table>
</asp:Content>