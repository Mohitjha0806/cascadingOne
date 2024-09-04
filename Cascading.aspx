<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cascading.aspx.cs" Inherits="cascadingOne.Cascading" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cascading</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="bootstrap.bundle.min.js"></script>
    <link href="bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid bg-success-subtle" style="height: 100vh">
            <div class="container">
                <div class="row py-4">
                    <div class="col-md-4 mt-md-4 mt-2">
                        <asp:Label Text="Country" CssClass="form-label fw-semibold" runat="server" />
                        <asp:DropDownList runat="server" ID="ddl_Country" CssClass="form-control fw-semibold bg-light border-2 border-primary-subtle" OnSelectedIndexChanged="ddl_Country_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                    </div>
                    <div class="col-md-4 mt-md-4 mt-2">
                        <asp:Label Text="State" CssClass="form-label fw-semibold" runat="server" />
                        <asp:DropDownList runat="server" ID="ddl_State" CssClass="form-control fw-semibold bg-light form-control border-2 border-primary-subtle" OnSelectedIndexChanged="ddl_State_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                    </div>
                    <div class="col-md-4 mt-md-4 mt-2">
                        <asp:Label Text="City" CssClass="form-label fw-semibold" runat="server" />
                        <asp:DropDownList runat="server" ID="ddl_City" CssClass="form-control fw-semibold bg-light form-control border-2 border-primary-subtle "></asp:DropDownList>
                    </div>
                </div>

                <asp:Button Text="Save" ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" />
            </div>
            <div class="container mt-4">
                <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" CssClass="table table-striped">
                    <Columns>
                        <asp:TemplateField HeaderText="Country Name">
                            <ItemTemplate>
                                <asp:Label ID="lblCountryName" runat="server" Text='<%#Eval("Country_Name")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="State Name">
                            <ItemTemplate>
                                <asp:Label ID="lblStateName" runat="server" Text='<%#Eval("State_Name")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="City Name">
                            <ItemTemplate>
                                <asp:Label ID="lblCityName" runat="server" Text='<%#Eval("City_Name")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>

    </form>
</body>
</html>
