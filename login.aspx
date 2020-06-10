<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>

         <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>

        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [EMPLOYEE]"></asp:SqlDataSource>
     
           
            <div class="container">
                <div class="row">
                    
                    <div class="col-md-4"></div>
                    <div class="col-md-4 formLogin" style="border:1px solid black;margin-top: 30px;margin-bottom: 30px;padding: 20px;">
                        <div class="loginForm">
                               <h1>Login</h1>
                            <hr /><br />
                        
                        <div class="row">     
                            <div class="col-md-12">                  
                            <div class="form-group">
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                        <span class="fa fa-user"></span>
                                    </div>
                                    <label class=" sr-only">User name</label>
                                     <asp:TextBox ID="txtno" class="form-control" placeholder="Civil ID" runat="server" AutoCompleteType="Disabled" ValidationGroup="loginGroup"></asp:TextBox>
                                </div>
                            </div>
                            </div>
                         </div>
                         
                        <div class="row">     
                            <div class="col-md-12"> 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtno" ErrorMessage="Required Fielled" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-12">
                            <div class="form-group">
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                        <span class="fa fa-lock"></span>
                                    </div>
                                    <label class="sr-only">Password</label>
                                    <asp:TextBox ID="txtpass" CssClass="form-control" placeholder="Password" runat="server" AutoCompleteType="Disabled" TextMode="Password" ValidationGroup="loginGroup"></asp:TextBox>

                                </div>
                            </div>
                                </div>
                        </div>
                        <div class="row">     
                            <div class="col-md-12">
                                    <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Required Fielled" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                    <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpass" ErrorMessage="Password must be not less than 8 digits!!" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\s]{8,16}$"></asp:RegularExpressionValidator>
                                
                            </div>
                        </div>
                    
                        <div class="row">     
                            <div class="col-md-12">
                                <a style="color:blue" href="c_forgetpass.aspx">Forgot your Password?</a>
                                 <asp:Button ID="Button1" class="btn btn-success"  ValidationGroup="loginGroup" style="float:right" runat="server" OnClick="Button1_Click1" Text="Login" />
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>
            </div>  
    </form>
</body>
</html>
