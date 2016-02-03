<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AzureCDTest._Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>A Page</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <link rel="stylesheet" href="Content/bootstrap.min.css"/>
    <script src="Scripts/bootstrap.min.js"></script>
    <link rel="stylesheet" href="Content/bootstrap-theme.min.css"/>

</head>
<body>
  <form id="form1" runat="server">
      <div class="container">
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#">WU API Data Getter</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#">Home</a></li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="jumbotron">
        <p>Simple json getter for weather underground</p>
          <div class="form-group">
            <label>City: </label>
            <asp:TextBox CssClass="form-control" ID="city" runat="server"></asp:TextBox>
            <label>State or Country: </label>
            <asp:TextBox CssClass="form-control" ID="state" runat="server"></asp:TextBox>
            <asp:Button ID="getem" runat="server" CssClass="btn" Text="Go Get It" OnClick="getem_Click" />
          </div>
        </div>
          <asp:Literal ID="lit1" runat="server"></asp:Literal>
          <div style="width:600px;word-break:normal;word-wrap:break-word;border: 1px solid black">
              <asp:Literal ID="lit2" runat="server"></asp:Literal>
          </div>
      </div>
  </form>
</body>
</html>
