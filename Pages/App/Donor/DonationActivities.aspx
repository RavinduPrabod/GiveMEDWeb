<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DonationActivities.aspx.cs" Inherits="GivMED.Pages.App.Donor.DonationActivities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../../plugins/fontawesome-free/css/all.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-3 col-sm-6 col-12">
                    <%--<span class="progress-description">Donation Points
                            </span>--%>
                </div>
                <div class="col-md-3 col-sm-6 col-12">
                    <%-- <span class="progress-description">Total Donation count
                            </span>--%>
                </div>
            </div>
            &nbsp
            <div class="row">
                <div class="col-md-3 col-sm-6 col-12">
                    <div class="info-box bg-success" runat="server" id="infoBox">
                        <span class="info-box-icon"><i class="fas fa-trophy"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">
                                <asp:Label ID="lblMedal" runat="server" Text=""></asp:Label></span>
                            <span class="info-box-number">
                                <asp:Label ID="lblScore" runat="server" Text=""></asp:Label>
                            </span>
                            <div class="progress">
                                <asp:Label CssClass="progress-bar" ID="lblprogresbar" runat="server" Text=""></asp:Label>
                            </div>
                            <span class="progress-description">
                                <asp:Label ID="lblScorePrecentatge" runat="server" Text=""></asp:Label>
                            </span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <div class="col-md-6 col-sm-6 col-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-danger"><i class="far fa-star"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">
                                <asp:Label ID="Label2" runat="server" Font-Bold="true" Text="Earn 5 Points for Every Donation"></asp:Label>
                            </span>
                            <span class="info-box-number">
                                <asp:LinkButton CssClass="text-primary" Font-Size="Medium" runat="server" ID="btnviewarchdetails" OnClick="btnviewarchdetails_Click"><p>View Medal Archivements Details</i></asp:LinkButton></p>
                            </span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                </div>
                <div class="col-md-3 col-sm-3 col-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-primary"><i class="fa fa-donate"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">
                                <asp:Label ID="Label3" runat="server" Text="Total Contribution"></asp:Label>
                            </span>
                            <span class="info-box-number">
                                <asp:Label ID="lblTotdonation" runat="server" Text=""></asp:Label>
                            </span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 col-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-danger"><i class="fa fa-flag"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">
                                <asp:Label ID="lblText" runat="server" Text="Canceled"></asp:Label>
                            </span>
                            <span class="info-box-number">
                                 <asp:Label ID="lblCancel" runat="server" Text=""></asp:Label>
                            </span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 col-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-warning"><i class="fa fa-box-open"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">
                                <asp:Label ID="Label1" runat="server" Text="Processing"></asp:Label>
                            </span>
                            <span class="info-box-number">
                                <asp:Label ID="lblprocessing" runat="server" Text=""></asp:Label>
                            </span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 col-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-info"><i class="fa fa-truck-moving"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">
                                <asp:Label ID="Label4" runat="server" Text="Deliverd"></asp:Label>
                            </span>
                            <span class="info-box-number">
                                <asp:Label ID="lblDeliverd" runat="server" Text=""></asp:Label>
                            </span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 col-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-success"><i class="fa fa-thumbs-up"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">
                                <asp:Label ID="Label6" runat="server" Text="Complete"></asp:Label>
                            </span>
                            <span class="info-box-number">
                                <asp:Label ID="lblComplete" runat="server" Text=""></asp:Label>
                            </span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                </div>
            </div>
            <div class="modal fade" id="modal-arch">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content bg-secondary">
                        <div class="modal-header">
                            <h4 class="modal-title">Medle Archivements Guide</h4>
                            &nbsp<h8 class="modal-title"></h8>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="info-box bg-info" runat="server" id="Div1">
                                    <span class="info-box-icon"><i class="fas fa-trophy"></i></span>
                                    <p>
                                        1.<b>Bronze</b> Medle:
                                            <br />
                                        &nbsp "Earn the Bronze Medle by scoring less than 200 points in a single game."<br />
                                        &nbsp Criteria: "Points < 200"
                                    </p>
                                </div>

                            </div>
                            <div class="row">
                                <div class="info-box bg-secondary" runat="server" id="Div2">
                                    <span class="info-box-icon"><i class="fas fa-trophy"></i></span>
                                    <p>
                                        2.<b>Silver</b> Medle:
                                            <br />
                                        &nbsp "Achieve the Silver Medle by scoring between 200 and 400 points in a single game."<br />
                                        &nbsp Criteria: "200 < Points < 400"
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="info-box bg-warning" runat="server" id="Div3">
                                    <span class="info-box-icon"><i class="fas fa-trophy"></i></span>
                                    <p>
                                        3.<b>Gold</b> Medle:
                                            <br />
                                        &nbsp "Reach the pinnacle with the Gold Medle by scoring 400 or more points in a single game."<br />
                                        &nbsp Criteria: "Points >= 400"
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <div class="modal fade" id="modal-Feedback">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <div class="card-header text-muted border-bottom-0">
                                <h3><b>Thank You!</b> For Your Contribution</h3>
                            </div>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="post">
                                <div class="user-block">
                                    <asp:Image runat="server" CssClass="img-circle img-bordered-sm" ImageUrl="~/dist/img/letter-h-128.ico" AlternateText="user image" />
                                    <asp:Label ID="lblFeedHlName" runat="server" CssClass="username" Text=""></asp:Label>
                                    <asp:Label ID="lblFeedDate" runat="server" CssClass="description" Text=""></asp:Label>
                                </div>
                                <!-- /.user-block -->
                                <p>
                                    <asp:Label ID="lblFeedbackText" runat="server" Text=""></asp:Label>
                                </p>

                                <p>
                                    <%-- <a href="#" class="link-black text-sm mr-2"><i class="fas fa-share mr-1"></i>Share</a>
                                        <a href="#" class="link-black text-sm"><i class="far fa-thumbs-up mr-1"></i>Like</a>
                                        <span class="float-right">
                                            <a href="#" class="link-black text-sm">
                                                <i class="far fa-comments mr-1"></i>Comments (5)
                                            </a>
                                        </span>--%>
                                </p>

                                <%--<asp:TextBox runat="server" CssClass="form-control form-control-sm" Placeholder="Type a comment"></asp:TextBox>--%>
                            </div>

                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <div class="modal fade" id="modal-Cancel">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Cancel Donation</h4>
                            &nbsp
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                        </div>
                        <div class="modal-body">
                            <h8>Do yo want to cancel this donation ? </h8>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="btnClose" runat="server" Text="Close" data-dismiss="modal" CssClass="btn btn-secondary" />
                            <asp:Button ID="btnCanceltrue" runat="server" Text="Cancel" CssClass="btn btn-danger" OnClick="btnCanceltrue_Click" />
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <div class="modal fade" id="modal-Delivery">
                <div class="modal-dialog modal-md">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Donation is Ready</h4>
                            &nbsp
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <asp:Label ID="lblDonationIDpop" Font-Bold="true" Font-Size="Large" runat="server"></asp:Label>
                            </div>
                            &nbsp
                                <div class="row">
                                    <div class="col-3">
                                        <asp:TextBox ID="txtVehicleNo" runat="server" CssClass="form-control" placeholder="Vehicle No"></asp:TextBox>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="txtDriverName" runat="server" CssClass="form-control" placeholder="Driver Name"></asp:TextBox>
                                    </div>
                                    <div class="col-3">
                                        <asp:TextBox ID="txtTelephone" runat="server" CssClass="form-control" placeholder=" Mobile No"></asp:TextBox>
                                    </div>
                                </div>
                            &nbsp
                                <div class="row">
                                    <div class="col-4">
                                    </div>
                                    <div class="col-4">
                                        Date
                                    </div>
                                    <div class="col-4">
                                        Arrival Time
                                    </div>
                                </div>
                            <div class="row">
                                <div class="col-4">
                                </div>
                                <div class="col-4">
                                    <asp:TextBox ID="txtDate" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-4">
                                    <asp:TextBox ID="txtTime" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="Button1" runat="server" Text="Close" data-dismiss="modal" CssClass="btn btn-secondary" />
                            <asp:Button ID="btnDeliveryNow" runat="server" Text="Delivery Now" CssClass="btn btn-warning" OnClick="btnDeliveryNow_Click" />
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>

            <div class="card-header p-2">
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <div class="modal fade" id="modal-Show">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Donated Medical Supplies Details</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-4">
                                        <h6>Supply Code : #<asp:Label ID="lblSupplyCode" runat="server" Font-Bold="true"></asp:Label></h6>
                                    </div>
                                </div>
                                &nbsp
                                <div class="row">
                                    <div class="col-8">
                                        <asp:GridView ID="gvPopSuppliesShow" runat="server" class="table table-striped table-bordered table-hover" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Code" Visible="false">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSupplyItemID" runat="server" Text='<%# Bind("SupplyItemID") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="10%" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Supplies Category & Name">
                                                    <ItemTemplate>
                                                        <div class="row">
                                                            <div class="col-10">
                                                                <asp:Label ID="lblItemCatName" ForeColor="Purple" runat="server" Text='<%# Bind("ItemCatName") %>' Style="text-decoration: underline;"></asp:Label><br />
                                                            </div>
                                                        </div>
                                                        <div class="col-4">
                                                        </div>
                                                        <div class="col-8">
                                                            <asp:Label ID="lblSupplyItemName" runat="server" Text='<%# Bind("SupplyItemName") %>'></asp:Label>
                                                        </div>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="84%" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Reuest (Qty)">
                                                    <ItemTemplate>
                                                        <div class="row">
                                                            &nbsp
                                                        </div>
                                                        <asp:Label ID="lblSupplyItemQty" ForeColor="Black" runat="server" Text='<%# Bind("RequestQty") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Donated (Qty)">
                                                    <ItemTemplate>
                                                        <div class="row">
                                                            &nbsp
                                                        </div>
                                                        <asp:Label ID="lblDonatedQty" ForeColor="Green" runat="server" Font-Bold="true" Font-Size="Large" Text='<%# Bind("DonatedQty") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                    <div class="col-4">
                                        <div class="card bg-light">
                                            <div class="card-body pt-0">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="row">
                                                            <div class="col-12">
                                                                <h2 class="lead"><b>
                                                                    <asp:Label ID="lblHospitalName" runat="server" Text="Hospital Name" Font-Underline="true" Font-Bold="true"></asp:Label></b></h2>
                                                            </div>
                                                        </div>
                                                        <ul class="ml-4 mb-0 fa-ul text-muted">
                                                            <li class="small"><span class="fa-li"><i class="fas fa-lg fa-registered"></i></span>
                                                                <asp:Label ID="lblRegNo" runat="server" Text=""></asp:Label><br />
                                                            </li>
                                                            &nbsp
                                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-cat"></i></span>
                                                            <asp:Label ID="lbltype" runat="server" Text=""></asp:Label><br />
                                                        </li>
                                                            &nbsp
                                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-times-circle"></i></span>
                                                            <asp:Label ID="lblYear" runat="server" Text=""></asp:Label><br />
                                                        </li>
                                                            &nbsp
                                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-bed"></i></span>
                                                            <asp:Label ID="lblNoofBeds" runat="server" Text=""></asp:Label><br />
                                                        </li>
                                                            &nbsp
                                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-map-marked-alt"></i></span>
                                                            <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label><br />
                                                        </li>
                                                            &nbsp
                                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span>
                                                            <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label><br />
                                                        </li>
                                                            &nbsp
                                                         <li class="small"><span class="fa-li"><i class="fas fa-lg fa-mail-bulk"></i></span>
                                                             <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label></li>
                                                            &nbsp
                                                         <li class="small"><span class="fa-li"><i class="fas fa-lg fa-broadcast-tower"></i></span>
                                                             <asp:Label ID="lblWeb" runat="server" Text="Web"></asp:Label></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Donation Activities</h3>
                        <div class="card-tools">
                            <div class="input-group input-group-sm" style="width: 300px;">
                                <asp:TextBox runat="server" CssClass="form-control float-right" ID="txtSearch" placeholder="Search" TextMode="Search"></asp:TextBox>
                                <div class="input-group-append">
                                    <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-lg btn-default" Text="Search" OnClick="btnSearch_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="input-group input-group-sm" style="width: 300px;">
                            <div class="input-group-append">
                                <asp:DropDownList CssClass="form-control" runat="server" ID="ddlStatus" Font-Size="Small" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Selected="True" Value="1">Prcessing</asp:ListItem>
                                    <asp:ListItem Value="2">Delivered</asp:ListItem>
                                    <asp:ListItem Value="3">Complete</asp:ListItem>
                                    <asp:ListItem Value="4">Canceled</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        &nbsp
                            <asp:GridView ID="gvDonationList" runat="server" AutoGenerateColumns="False" CssClass="table table-hover text-nowrap table-bordered" OnRowCancelingEdit="gvDonationList_RowCancelingEdit" AllowPaging="true" PageSize="10" OnRowDataBound="gvDonationList_RowDataBound" OnRowCommand="gvDonationList_RowCommand" OnPageIndexChanging="gvDonationList_PageIndexChanging">
                                <Columns>
                                    <asp:TemplateField HeaderText="SupplyID" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSupplyID" runat="server" Text='<%# Bind("SupplyID") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="5%" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="DonationID">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDonationID" runat="server" Text='<%# Bind("DonationID") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="5%" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDonationCreateDate" runat="server" Text='<%# Bind("DonationCreateDate", "{0:d}") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="5%" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="HospitalID" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblHospitalID" runat="server" Text='<%# Bind("HospitalID") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Hospital Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblHospitalName" runat="server" Text='<%# Bind("HospitalName") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="60%" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="20%" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lblStatus" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="20%" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btnView" runat="server" CssClass="btn btn-dark" CausesValidation="false" CommandName="ViewData" CommandArgument="<%# Container.DisplayIndex %>"><i class="far fa-eye"></i>
                                            </asp:LinkButton>
                                            <asp:LinkButton ID="btnFeedback" runat="server" CssClass="btn btn-warning" ToolTip="View Feedback" CausesValidation="false" CommandName="Contact" CommandArgument="<%# Container.DisplayIndex %>"><i class="far fa-star"></i>
                                            </asp:LinkButton>
                                            <asp:LinkButton ID="btnReady" runat="server" CssClass="btn btn-success" ToolTip="Donation is Ready" OnClientClick="return ShowDelivery();"><i class="fa fa-check"></i>
                                            </asp:LinkButton>
                                            <asp:LinkButton ID="btnCancel" runat="server" CssClass="btn btn-danger" ToolTip="Cancel Donation" CommandName="CancelData" CommandArgument="<%# Container.DisplayIndex %>"><i class="fa fa-trash"></i>
                                            </asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle Width="10%" />
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                    </div>
                </div>
            </div>
            <asp:Button ID="btnCancel" runat="server" Text="Delete" Style="display: none" OnClick="btnCancel_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">
        function pageLoad() {
            $("[id$=txtDate]").datepicker({
                dateFormat: 'yy/mm/dd',
                autoclose: true,
                changeMonth: true,
                todayHighlight: true,
                changeYear: false

            });

            $(function () {
                $('[id*=txtTime]').timepicker({
                    showInputs: false
                });
            })
        }
        function ShowDeleteConfirmationPop() {
            alertify.confirm("Are you sure you want to Cancel this Donation?", function (e) {
                if (e) {
                    jQuery("[ID$=btnCancel]").click();
                } else {
                    alertify.error("OK!");
                }
            }).setHeader('<h3> Donation Cancel Confirmation </h3> ');;
            return flag;
        };
        function showarch() {
            $('.modal-backdrop').remove();
            $('#modal-arch').modal('show');
            return false;
        };

        function ShowDetails() {
            $('.modal-backdrop').remove();
            $('#modal-Show').modal('show');
            return false;
        };

        function ShowContactDetails() {
            $('.modal-backdrop').remove();
            $('#modal-Feedback').modal('show');
            return false;
        };

        function ShowCancel() {
            $('.modal-backdrop').remove();
            $('#modal-Cancel').modal('show');
            return false;
        };

        function ShowDelivery() {
            $('.modal-backdrop').remove();
            $('#modal-Delivery').modal('show');
            return false;
        };
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) { var oControl = args.get_postBackElement(); oControl.disabled = true; }
    </script>
</asp:Content>
