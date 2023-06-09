<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModelsGrid.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ValidationSummary ShowModelStateErrors="true" runat="server" />
    <asp:GridView runat="server" ID="employeesGrid"
        ItemType="ModelsGrid.AppLib.Models.Employee" DataKeyNames="EmployeeID"
        SelectMethod="employeesGrid_GetData"
        UpdateMethod="employeesGrid_UpdateItem"
        AutoGenerateEditButton="false"
        AutoGenerateColumns="false" CellPadding="4" ForeColor="Black" AllowPaging="true" AllowSorting="True" BackColor="White" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" CellSpacing="2" CssClass="table w-100  table-responsive-xl" Style="margin-left: 30px" Width="70%" RowStyle-BorderColor="#333333" RowStyle-BorderStyle="Solid" RowStyle-BorderWidth="1">
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
        <RowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField ShowHeader="true" HeaderText="Edit Employee">
                <ItemStyle CssClass="text-nowrap" Width="300" />
                <EditItemTemplate>
                    <asp:Button ID="Button1" class="btn btn-xs" runat="server" CausesValidation="True" CommandName="Update" Text="Update" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1" />
                    <asp:Button ID="Button2" class="btn btn-xs" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="Button3" class="btn btn-xs" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" align="centered" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:DynamicField DataField="EmployeeID" />
            <asp:DynamicField DataField="FirstName" />
            <asp:DynamicField DataField="LastName" />
        </Columns>
    </asp:GridView>
</asp:Content>
