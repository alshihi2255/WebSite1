<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addFrm.aspx.cs" Inherits="addFrm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem" DataKeyNames="Id">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" OnClick="DeleteButton_Click1" CommandName="Delete" Text="Delete" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="i_nameLabel" runat="server" Text='<%# Eval("i_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="i_dateLabel" runat="server" Text='<%# Eval("i_date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        </td>
                        <td>
                            <asp:Label ID="solutionLabel" runat="server" Text='<%# Eval("solution") %>' />
                        </td>
                        <td>
                            <asp:Label ID="u_nameLabel" runat="server" Text='<%# Eval("u_name") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="i_nameTextBox" runat="server" Text='<%# Bind("i_name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="i_dateTextBox" runat="server" Text='<%# Bind("i_date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="solutionTextBox" runat="server" Text='<%# Bind("solution") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="u_nameTextBox" runat="server" Text='<%# Bind("u_name") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" OnClick="InsertButton_Click" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="i_nameTextBox" runat="server" Text='<%# Bind("i_name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="i_dateTextBox" runat="server" Text='<%# Bind("i_date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="solutionTextBox" runat="server" Text='<%# Bind("solution") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="u_nameTextBox" runat="server" Text='<%# Bind("u_name") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" OnClick="DeleteButton_Click1" CommandName="Delete" Text="Delete" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="i_nameLabel" runat="server" Text='<%# Eval("i_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="i_dateLabel" runat="server" Text='<%# Eval("i_date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        </td>
                        <td>
                            <asp:Label ID="solutionLabel" runat="server" Text='<%# Eval("solution") %>' />
                        </td>
                        <td>
                            <asp:Label ID="u_nameLabel" runat="server" Text='<%# Eval(" u_name") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">Id</th>
                                        <th runat="server">i_name</th>
                                        <th runat="server">i_date</th>
                                        <th runat="server">description</th>
                                        <th runat="server">solution</th>
                                        <th runat="server">u_name</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton"  runat="server" OnClick="DeleteButton_Click1" CommandName="Delete" Text="Delete" /> 
                         
                        </td>
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="i_nameLabel" runat="server" Text='<%# Eval("i_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="i_dateLabel" runat="server" Text='<%# Eval("i_date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        </td>
                        <td>
                            <asp:Label ID="solutionLabel" runat="server" Text='<%# Eval("solution") %>' />
                        </td>
                        <td>
                            <asp:Label ID="u_nameLabel" runat="server" Text='<%# Eval("u_name") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="delete from issue where Id=@Id" InsertCommand="insert into issue values (@i_name,@i_date, @description, @solution, @u_name )
" SelectCommand="SELECT [Id], [i_name], [i_date], [description], [solution], [u_name] FROM [issue] WHERE ([u_name] = @u_name)">
                <DeleteParameters>
                    <asp:Parameter Name="Id" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="i_name" />
                    <asp:Parameter Name="i_date" />
                    <asp:Parameter Name="description" />
                    <asp:Parameter Name="solution" />
                    <asp:Parameter Name="u_name" />
                </InsertParameters>

                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="u_name" PropertyName="Text" />
                </SelectParameters>

            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="adil"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    
        </p>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
