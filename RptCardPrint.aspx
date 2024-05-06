<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RptCardPrint.aspx.cs" Inherits="HRSoftware.RptCardPrint" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">
                function Print() {
                      var dvReport = document.getElementById("dvReport");
                      var frame1 = dvReport.getElementsByTagName("iframe")[0];
                      if (navigator.appName.indexOf("Internet Explorer") != -1) {
                          frame1.name = frame1.id;
                          window.frames[frame1.id].focus();
                          window.frames[frame1.id].print();
                      }
                      else {
                          var frameDoc = frame1.contentWindow ? frame1.contentWindow : frame1.contentDocument.document ? frame1.contentDocument.document : frame1.contentDocument;
                          frameDoc.print();
                      }
                  }
     </script>
</head>
 <body  onunload="cleanupCR()">
    <form id="form1" runat="server">
    <div id="dvReport">
           <%--<asp:Button Text="Print PDF" runat="server" OnClick="Print" CommandName="PDF" />
           <asp:Button Text="Print Word" runat="server" OnClick="Print" CommandName="Word" />--%>
       
         <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer2" runat="server" Width="355px" Height="427px" ShowPrintButton="False" ShowBackButton="False" ShowExportControls="False" ShowFindControls="False" ShowPageNavigationControls="False" ShowRefreshButton="False" ShowToolBar="False" ShowZoomControl="False" ShowParameterPrompts="False" >
        </rsweb:ReportViewer>



       <%-- <br />
    Format:
    <asp:RadioButtonList ID="rbFormat" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem Text="Word" Value="WORD" Selected="True" />
        <asp:ListItem Text="Excel" Value="EXCEL" />
        <asp:ListItem Text="PDF" Value="PDF" />
        <asp:ListItem Text="Image" Value="IMAGE" />
    </asp:RadioButtonList>--%>
   <%-- <br />--%>
    <%--<asp:Button ID="btnPrint" Text="Export" runat="server" OnClick="Export" />--%>


    </div>
        <br />
        </form>
</body>
</html>
