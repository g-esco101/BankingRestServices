﻿<%@ Page Title="Subtraction" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Subtraction.aspx.cs" Inherits="BankingRestServicesTryMe.Subtraction" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Subtraction</h3>
    <h4>Subtracts two numbers & returns the difference.</h4>
    <div class="row">
        <div class="col-md-8">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Operand1" CssClass="col-md-6 control-label">Operand 1</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="Operand1" CssClass="form-control" placeholder="e.g., 1000 or 1000.50" />
                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator"
                            ControlToValidate="Operand1" ValidationExpression="^\d+(\.\d\d)?$"
                            ErrorMessage="Please Enter Numbers Only (e.g., 1000 or 1000.50)" Display="Dynamic" SetFocusOnError="True" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Operand1"
                            CssClass="text-danger" ErrorMessage="The Operand1 field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Operand2" CssClass="col-md-6 control-label">Operand 2</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="Operand2" CssClass="form-control" placeholder="e.g., 1000 or 1000.50" />
                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1"
                            ControlToValidate="Operand2" ValidationExpression="^\d+(\.\d\d)?$"
                            ErrorMessage="Please Enter Numbers Only (e.g., 1000 or 1000.50)" Display="Dynamic" SetFocusOnError="True" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Operand2"
                            CssClass="text-danger" ErrorMessage="The Operand2 field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-6 col-md-6">
                        <asp:Button runat="server" Text="Subtract" OnClick="subtract" CssClass="btn btn-default" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Result" CssClass="col-md-6 control-label">Difference</asp:Label>
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
            <td>Subtraction</td>
            <td>string (operand1), string (operand2)</td>
            <td>string (difference)</td>
            <td>Subtracts two numbers.</td>
            <td></td>
        </tr>
    </table>
</asp:Content>