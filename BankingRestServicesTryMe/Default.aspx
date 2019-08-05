<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BankingServicesTryMe._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-4">
            <h2>About</h2>
            <p>
                The Banking Rest Services & HashService APIs are comprised of RESTful services. They are consumed by the project in the BankingServices repository (banking SOAP services), which in turn are consumed by the project in the SOCBankingWebApp repository (banking web application).
            </p>
        </div>
        <div class="col-md-4">
            <h2>Service Testing</h2>
            <p>
                Each service has its own web page where it can be tried. The service name, input & output types, description, & comments are provided on each page.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Research & Development</h2>
            <p>
                The hashing function may be updated. 
            </p>
        </div>
    </div>
    <h2>Contact</h2>
    <h3>Govinda Escobar</h3>
    <address>
        <a href="mailto:govinda.escobar@gmail.com">govinda.escobar@gmail.com</a><br />
    </address>
</asp:Content>
