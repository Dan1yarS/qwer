<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="qwerty.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.v21.2, Version=21.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" KeyFieldName="student_id" wight="100">
                <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

                <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True"></SettingsBehavior>

                <SettingsPopup>
                    <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter"></EditForm>

                </SettingsPopup>
                <Columns>
                    <dx:GridViewCommandColumn VisibleIndex="0"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="student_id" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>

                    <dx:GridViewDataTextColumn FieldName="surename" VisibleIndex="2"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="name" VisibleIndex="3"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="course" VisibleIndex="4"></dx:GridViewDataTextColumn>
                </Columns>
                <Toolbars>
                    <dx:GridViewToolbar ItemAlign="Left" Enabled="True">
                        <Items>
                            <dx:GridViewToolbarItem Command="New" Name="New" BeginGroup="True" Text="New">

                            </dx:GridViewToolbarItem>
                            <dx:GridViewToolbarItem Command="Edit" Name="Update" BeginGroup="True" Text="Update"></dx:GridViewToolbarItem>
                            <dx:GridViewToolbarItem Command="Delete" Name="Delete" BeginGroup="True" Text="Delete"></dx:GridViewToolbarItem>
                        </Items>
                    </dx:GridViewToolbar>
                </Toolbars>
            </dx:ASPxGridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1"
                ConnectionString='<%$ ConnectionStrings:qwertyConnectionString %>'
                SelectCommand="SELECT student_id, surename, name, course FROM students"
                DeleteCommand="DELETE FROM students WHERE (student_id = @student_id)"
                InsertCommand="INSERT INTO students(student_id, surename, name, course) VALUES (@student_id, @surename, @name, @course)"
                UpdateCommand="UPDATE students SET student_id = @student_id, surename = @surename, name = @name, course = @course WHERE (student_id = @student_id)">
                <DeleteParameters>
                    <asp:Parameter Name="student_id"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="student_id"></asp:Parameter>
                    <asp:Parameter Name="surename"></asp:Parameter>
                    <asp:Parameter Name="name"></asp:Parameter>
                    <asp:Parameter Name="course"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="student_id"></asp:Parameter>
                    <asp:Parameter Name="surename"></asp:Parameter>
                    <asp:Parameter Name="name"></asp:Parameter>
                    <asp:Parameter Name="course"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
