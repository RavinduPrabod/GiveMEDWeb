<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="ComplaintForum.aspx.cs" Inherits="GivMED.Pages.Web.ComplaintForum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../../dist/css/GiveMEDHome.css" rel="stylesheet" />
    <link href="../../dist/js/animate/animate.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="card" style="background-color: navy">
                <div class="card-body">
                    <div class="row justify-content-center">
                        <div class="card" style="width: 1000px">
                            <div class="card-header wow zoomIn">
                                <h3 class="card-title">Complaint Forum</h3>
                                <div class="card-tools">
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <div class="col-md-6 wow zoomIn">
                                    <label for="name">Your Name</label>
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                                </div>
                                <div class="col-md-6 wow zoomIn">
                                    <label for="email">Your Email</label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                                </div>
                                <div class="col-12 wow zoomIn">
                                    <div class="form-floating">
                                        <label for="subject">The complaint is regarding:</label>
                                        <asp:TextBox ID="txtSubject" Height="100px" runat="server" CssClass="form-control" TextMode="MultiLine" MaxLength="500" placeholder="Leave a text here"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-12 wow zoomIn">
                                    <div class="form-floating">
                                        <label for="message">Name of the hospital/donor/oragniation/whom the complaint is filed:</label>
                                        <asp:TextBox ID="txtNameofVict" runat="server" CssClass="form-control" placeholder="Leave a text here" MaxLength="50"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-12 wow zoomIn">
                                    <label for="message">The specific details of the complaint:</label>
                                    <asp:TextBox ID="txtFullComplaint" Height="150px" runat="server" CssClass="form-control" placeholder="Leave a text here" TextMode="MultiLine" MaxLength="1000"></asp:TextBox>

                                </div>
                                &nbsp
                                 <div class="col-2 wow zoomIn">
                                     <asp:Button runat="server" CssClass="btn btn-primary" ID="btnSend" Text="Send" OnClick="btnSend_Click" />
                                 </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">

        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) { var oControl = args.get_postBackElement(); oControl.disabled = true; }

        function pageLoad() {
            $(document).ready(function () {
                Validate = function () {
                    $('#<% = txtName.ClientID %>').addClass('validate[required]');
                    $('#<% = txtEmail.ClientID %>').addClass('validate[required]');
                    $('#<% = txtNameofVict.ClientID %>').addClass('validate[required]');
                    $('#<% = txtSubject.ClientID %>').addClass('validate[required]');
                    $('#<% = txtFullComplaint.ClientID %>').addClass('validate[required]');
                    var valid = $("#form1").validationEngine('validate');
                    var vars = $("#form1").serialize();
                    if (valid == true) {
                        $("#form1").validationEngine('detach');
                    } else {
                        $("#form1").validationEngine('attach', { promptPosition: "inline", scroll: false });
                        return false;
                    }
                }

            });
        }
    </script>
        <script src="../../dist/js/isotope/isotope.pkgd.min.js"></script>
    <script src="../../dist/js/owlcarousel/owl.carousel.min.js"></script>
        <script src="../../dist/js/wow/wow.min.js"></script>
    <script src="../../dist/js/main.js"></script>
</asp:Content>
