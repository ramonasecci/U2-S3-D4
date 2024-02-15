<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preventivo.aspx.cs" Inherits="Preventivi.Preventivo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Preventivo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous" defer></script>
</head>
<body>
    <h1 class="my-3">Concessionaria</h1>

    <form id="form1" runat="server">
        <div class="row mt-5">
            <div class="col-6">
                <h2>Seleziona Auto</h2>
                <asp:DropDownList ID="ddlCar" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCar_SelectedIndexChanged">
                    <asp:ListItem Text="Seleziona..." Value="0" />
                    <asp:ListItem Text="Auto A" Value="20000"></asp:ListItem>
                    <asp:ListItem Text="Auto B" Value="25000"></asp:ListItem>
                    <asp:ListItem Text="Auto C" Value="30000"></asp:ListItem>
                </asp:DropDownList>
                <h2>Seleziona Optional</h2>
                <asp:CheckBoxList ID="cblOptions" runat="server">
                    <asp:ListItem Text="Optional 1" Value="1000"></asp:ListItem>
                    <asp:ListItem Text="Optional 2" Value="1500"></asp:ListItem>
                    <asp:ListItem Text="Optional 3" Value="2000"></asp:ListItem>
                </asp:CheckBoxList>
                <h2>Numero di anni di garanzia</h2>
                <asp:TextBox ID="txtWarrantyYears" runat="server">0</asp:TextBox>
                <br />
                <asp:Button ID="btnCalculate" runat="server" Text="Calcola Preventivo" OnClick="btnCalculate_Click" />

            </div>
            <div class="col-6">
                <asp:Image ID="imgCar" runat="server" CssClass="w-100"/>
                <h2 ID="tltprice" runat="server" ></h2>
                <asp:Label ID="lblCosto" runat="server" Text=""></asp:Label>

            </div>
            
        </div>
        <div>
            <h2>Risultati</h2>
            <p>
                Prezzo di base:
                <asp:Label ID="lblBasePrice" runat="server"></asp:Label>
            </p>
            <p>
                Totale optional:
                <asp:Label ID="lblOptionalTotal" runat="server"></asp:Label>
            </p>
            <p>
                Totale garanzia:
                <asp:Label ID="lblWarrantyTotal" runat="server"></asp:Label>
            </p>
            <p>
                Totale complessivo:
                <asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
