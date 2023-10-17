<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="DonationReview.aspx.cs" Inherits="GivMED.Pages.Web.Review.DonationReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .star-rating {
            display: inline-block;
            font-size: 0;
            white-space: nowrap;
            position: relative;
        }

            .star-rating input[type="radio"] {
                display: none;
            }

            .star-rating label {
                display: inline-block;
                width: 1.1em;
                height: 1.1em;
                margin: 0;
                padding: 0;
                text-indent: -999em;
                position: relative;
                z-index: 5;
                cursor: pointer;
            }

                .star-rating label:before {
                    content: "\2605";
                    font-size: 24px;
                    line-height: 1;
                    color: #ccc;
                    position: absolute;
                    top: 0;
                    left: 0;
                }

            .star-rating input[type="radio"]:checked + label:before,
            .star-rating input[type="radio"]:hover + label:before {
                color: #FFD700;
            }
    </style>
    <link href="../../../dist/js/animate/animate.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:MultiView ID="mvpublishNeeds" runat="server">
                <asp:View ID="View1" runat="server">
                    <div class="modal fade" id="modal-Show">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Needed Medical Supplies Details</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
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
                                                    <div class="row wow zoomIn">
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
                                                    <asp:Label ID="lblSupplyItemQty" ForeColor="Black" Font-Bold="true" Font-Size="Large" runat="server" Text='<%# Bind("SupplyItemQty") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Donated (Qty)">
                                                <ItemTemplate>
                                                    <div class="row">
                                                        &nbsp
                                                    </div>
                                                    <asp:Label ID="lblDonatedQty" ForeColor="Green" runat="server" Text='<%# Bind("DonatedQty") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
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
                                    <asp:GridView ID="gvFeedbacks" runat="server" CssClass="table table-striped table-bordered table-hover"
                                        AutoGenerateColumns="False" ShowHeader="false" RowStyle-CssClass="table-light">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <div class="post">
                                                        <div class="user-block">
                                                            <asp:Image runat="server" CssClass="img-circle img-bordered-sm" ImageUrl="~/dist/img/letter-h-128.ico" AlternateText="user image" />
                                                            <asp:Label ID="lblFeedHlName" runat="server" CssClass="username" Text='<%# Bind("HospitalName") %>'></asp:Label>
                                                            <asp:Label ID="lblFeedDate" runat="server" CssClass="description" Text='<%# Bind("FeedDate") %>'></asp:Label>
                                                        </div>
                                                        <!-- /.user-block -->
                                                        <p>
                                                            <asp:Label ID="lblFeedbackText" runat="server" Text='<%# Bind("FeedText") %>'></asp:Label>
                                                        </p>
                                                        <asp:Label ID="lblRating" runat="server" CssClass="star-rating" Text='<%# Bind("DonationID") %>'></asp:Label>

                                                        <div class="user-block">
                                                            <div class="row">
                                                                <div class="col-6" style="text-align: right">
                                                                    <asp:Label ID="Label2" ForeColor="Orange" Font-Size="Larger" runat="server" Text='<%# Bind("DonationID") %>'></asp:Label>
                                                                </div>
                                                                <div class="col-6">
                                                                    <asp:Image runat="server" CssClass="img-circle img-bordered-sm" ImageUrl='<%# String.IsNullOrEmpty(Eval("ImageUrl").ToString()) ? "~/dist/img/user-default.png" : Eval("ImageUrl") %>' AlternateText="user image" />
                                                                    <asp:Label ID="lblfeedDName" runat="server" CssClass="username" Text='<%# Bind("DonorName") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <div class="modal fade" id="modal-donatenow">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <div class="card-header text-muted border-bottom-0">
                                        <h3><b>GiveMED</b> for Your Support & Contribution</h3>
                                    </div>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="card card-warning">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-4">
                                                    <button type="button" class="btn btn-outline-primary btn-block"><i class="fa fa-bell"></i></button>
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
                    <!-- /.card -->
                    &nbsp
                    <div class="card">
                        <div class="card-header p-2">
                            <div class="col-md-8 offset-md-3">
                                <div class="input-group">
                                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control form-control-lg" placeholder="Type your keywords here"></asp:TextBox>
                                    <div class="input-group-append">
                                        <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-lg btn-default" Text="Search" OnClick="btnSearch_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="card card-primary card-outline">
                                        <!-- /.card-header -->
                                        <div class="card-body">
                                            <strong><i class="fas fa-sort mr-1"></i>Sort results by</strong>
                                            <asp:DropDownList CssClass="form-control" runat="server" ID="ddlSortResullt" Font-Size="Small" OnSelectedIndexChanged="ddlSortResullt_SelectedIndexChanged" AutoPostBack="true">
                                                <asp:ListItem Selected="True" Value="1">Date: Latest on top</asp:ListItem>
                                                <asp:ListItem Value="2">Date: Oldest on top</asp:ListItem>
                                                <asp:ListItem Value="3">Priority: Urgent to low</asp:ListItem>
                                                <asp:ListItem Value="4">Priority: Low to Urgent</asp:ListItem>
                                            </asp:DropDownList>
                                            <div class="row">
                                                &nbsp
                                            </div>
                                            <b><i class="fas fa-filter mr-1"></i>Filter need type by</b>
                                            <div class="row">
                                                <div class="col-sm-1">
                                                </div>
                                                <div class="col-sm-4">
                                                    <asp:CheckBox runat="server" ID="chkHigh" CssClass="icheck-danger" Text="URGENT" ForeColor="Red" AutoPostBack="true" OnCheckedChanged="chkHigh_CheckedChanged" />
                                                    <asp:CheckBox runat="server" ID="chkNormal" CssClass="icheck-primary" Text="NORMAL" ForeColor="blue" AutoPostBack="true" OnCheckedChanged="chkNormal_CheckedChanged" />
                                                </div>
                                            </div>
                                            <div class="row">
                                                &nbsp
                                            </div>
                                            <div class="card card-default collapsed-card">
                                                <div class="card-header">
                                                    <strong><i class="fas fa-map-marker-alt mr-1"></i>Location</strong>
                                                    <div class="card-tools">
                                                        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                                            <i class="fas fa-plus"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="card-body p-0" style="display: none;">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <asp:ListBox ID="lstStates" runat="server" ForeColor="BlueViolet" CssClass="custom-listbox" Width="180px" Height="300px" OnSelectedIndexChanged="lstStates_SelectedIndexChanged" AutoPostBack="true"></asp:ListBox>
                                                        </div>
                                                    </div>

                                                </div>
                                                <!-- /.card-body -->
                                            </div>
                                            <div class="card card-default collapsed-card">
                                                <div class="card-header">
                                                    <strong><i class="fas fa-cat mr-1"></i>Category</strong>
                                                    <div class="card-tools">
                                                        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                                            <i class="fas fa-plus"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="card-body p-0" style="display: none;">
                                                    <div class="row">
                                                        <div class="col-1">
                                                        </div>
                                                        <div class="col-11">
                                                            <asp:LinkButton CssClass="text-primary" Font-Size="Medium" runat="server" ID="btnItemCat1" OnClick="btnItemCat1_Click"><p>Personal Protective Equipment(PPE)</asp:LinkButton></p>
                                                                <asp:LinkButton CssClass="text-primary" Font-Size="Medium" runat="server" ID="btnItemCat2" OnClick="btnItemCat2_Click">Diagnostic and Monitoring Equipment</asp:LinkButton></p>
                                                                <asp:LinkButton CssClass="text-primary" Font-Size="Medium" runat="server" ID="btnItemCat3" OnClick="btnItemCat3_Click"><p>Treatment and Medication Supplies</i></asp:LinkButton></p>
                                                                <asp:LinkButton CssClass="text-primary" Font-Size="Medium" runat="server" ID="btnItemCat4" OnClick="btnItemCat4_Click"><p>Surgical Supplies</i></asp:LinkButton></p>
                                                                <asp:LinkButton CssClass="text-primary" Font-Size="Medium" runat="server" ID="btnItemCat5" OnClick="btnItemCat5_Click"><p>Laboratory Supplies</i></asp:LinkButton></p>
                                                            <asp:LinkButton CssClass="text-primary" Font-Size="Medium" runat="server" ID="btnItemCat6" OnClick="btnItemCat6_Click"><p>Medical devices for monitoring</i></asp:LinkButton></p>
                                                            <asp:LinkButton CssClass="text-primary" Font-Size="Medium" runat="server" ID="btnItemCat7" OnClick="btnItemCat7_Click"><p>Medical imaging equipment</i></asp:LinkButton></p>
                                                            <asp:LinkButton CssClass="text-primary" Font-Size="Medium" runat="server" ID="btnItemCat8" OnClick="btnItemCat8_Click"><p>Mobility aids</i></asp:LinkButton></p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- /.card-body -->
                                            </div>
                                        </div>
                                        <!-- /.card-body -->
                                    </div>
                                    <!-- /.card -->
                                </div>
                                <!-- /.col -->
                                <div class="col-md-9">
                                    <div class="row">
                                        <h8><b>Find and Support for Medical supplies needs in Sri Lanka</b></h8>
                                    </div>
                                    <div class="row">
                                        <asp:Label ID="lblShowCount" runat="server" Text=""></asp:Label>
                                    </div>
                                    &nbsp&nbsp
                                        <div class="card-body table-responsive p-0">
                                            <asp:GridView ID="gvNeedsList" runat="server" ShowHeader="false" AutoGenerateColumns="False" CssClass="table table-hover text-nowrap" OnRowDataBound="gvNeedsList_RowDataBound" OnRowCommand="gvNeedsList_RowCommand">
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <div class="position-relative p-3 bg-gradient-white" style="height: 180px">
                                                                <div class="ribbon-wrapper">
                                                                    <div class="ribbon bg-secondary">
                                                                        <asp:Label ID="lblSupplyPriorityLevel" runat="server"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="row d-flex align-items-center">
                                                                    <div class="col-2 justify-content-center" style="background-color: black; text-align: center">
                                                                        <a style="color: white"># </a>
                                                                        <asp:Label ID="lblSupplyID" runat="server" ForeColor="White" Text='<%# Bind("SupplyID") %>'></asp:Label>
                                                                    </div>
                                                                    <div class="col-6">
                                                                        <strong>
                                                                            <asp:Label ID="lblSupplyItemName" Font-Size="Large" runat="server" Text='<%# Bind("SupplyItemName") %>'></asp:Label></strong>
                                                                        <br>
                                                                        <br>
                                                                        <span class="badge bg-secondary">Member</span>
                                                                        <asp:Label ID="Label1" runat="server" Font-Size="Small" ForeColor="Blue" CssClass="label-icon-text"><i class="fas fa-shield-alt"></i>VERIFIED HOSPITAL
                                                                        </asp:Label>
                                                                        <br>
                                                                        <asp:Label ID="lblHospitalID" Visible="false" runat="server" Text='<%# Bind("HospitalID") %>'></asp:Label>
                                                                        <asp:Label ID="lblState" Font-Size="Large" runat="server" Text='<%# Bind("State") %>'></asp:Label>,
                                                                        <asp:Label ID="lblHospitalName" Font-Size="Large" runat="server" Text='<%# Bind("HospitalName") %>'></asp:Label>
                                                                        <br>
                                                                    </div>
                                                                    <div class="col-2">
                                                                        <div class="btn-group" style="width: 100%; margin-bottom: 10px;">
                                                                            <ul class="list-unstyled list-inline" id="color-chooser">
                                                                                <li>
                                                                                    <asp:LinkButton CssClass="text-primary" Font-Size="Small" runat="server" CausesValidation="false" CommandName="ShowDetails" CommandArgument="<%# Container.DisplayIndex %>"><i class="fas fa-arrow-circle-right">  Click more details...</i></asp:LinkButton></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-2"></div>
                                                                    <div class="col-4">
                                                                        <div class="progress">
                                                                            <div class="progress-bar bg-gradient-orange" role="progressbar"
                                                                                aria-valuemin="0" aria-valuemax="100"
                                                                                style='font-weight: bold; <%# "width:" + Eval("ProcessPrecentage") + "%;" %>'>
                                                                                <%# Eval("ProcessPrecentage") + "%" %>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-2"></div>
                                                                </div>
                                                                <div class="row d-flex align-items-center">
                                                                    <div class="col-8">
                                                                        <small>Publish Date :
                                                                        <asp:Label ID="lblSupplyCreateDate" runat="server" ForeColor="Blue" Text='<%# Bind("SupplyCreateDate", "{0:d}") %>'></asp:Label>
                                                                            - Close Date:
                                                                    <asp:Label ID="lblSupplyExpireDate" runat="server" ForeColor="red" Text='<%# Bind("SupplyExpireDate", "{0:d}") %>'></asp:Label></small>
                                                                    </div>
                                                                    <div class="col-2">
                                                                        <asp:LinkButton ID="btnReviews" runat="server" CssClass="btn btn-sm btn-primary" CausesValidation="false" CommandName="ViewReview" CommandArgument="<%# Container.DisplayIndex %>"><i class="fas fa-star"></i> Feedbacks
                                                                        </asp:LinkButton>
                                                                    </div>
                                                                    <div class="col-2">
                                                                        <asp:LinkButton ID="btnDonateNow" runat="server" CssClass="btn btn-sm btn-success" CausesValidation="false" CommandName="ViewData" CommandArgument="<%# Container.DisplayIndex %>"><i class="fas fa-medkit"></i> Donate Now
                                                                        </asp:LinkButton>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </ItemTemplate>
                                                        <ItemStyle Width="60%" />
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:Panel ID="pnlNotFound" runat="server">
                                                <div class="error-page">
                                                    <h2 class="headline text-warning">404</h2>
                                                    <div class="error-content">
                                                        <h3><i class="fas fa-exclamation-triangle text-danger"></i>Oops! Something went wrong.</h3>
                                                        <p>
                                                            We did not find any result
                                                        </p>
                                                    </div>
                                                </div>
                                            </asp:Panel>
                                        </div>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </asp:View>
            </asp:MultiView>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">
        function pageLoad() {
            $(function () {
                $('.star-rating input[type="radio"]').change(function () {
                    $(this).closest('.star-rating').find('label').removeClass('selected');
                    $(this).closest('label').addClass('selected');
                });
            });
        }

        function ShowDetails() {
            $('.modal-backdrop').remove();
            $('#modal-Show').modal('show');
            return false;
        };

        function ShowHelp() {
            $('.modal-backdrop').remove();
            $('#modal-help').modal('show');
            return false;
        };

        function ShowFeedback() {
            $('.modal-backdrop').remove();
            $('#modal-Feedback').modal('show');
            return false;
        };

        function ShowDonate() {
            Swal.fire({
                title: 'Welcome to GiveMED',
                html: 'For Your Support & Contribution. Please <a href="/Pages/Web/Registration/DonorRegistration.aspx">register</a> or <a href="/Pages/Login.aspx">log in</a> to continue.',
                icon: 'info',
                showCancelButton: false,
                confirmButtonColor: '#3085d6',
                confirmButtonText: 'OK'
            });
        };

    </script>
    <script src="../../../dist/js/isotope/isotope.pkgd.min.js"></script>
    <script src="../../../dist/js/owlcarousel/owl.carousel.min.js"></script>
    <script src="../../../dist/js/wow/wow.min.js"></script>
    <script src="../../../dist/js/main.js"></script>
</asp:Content>
