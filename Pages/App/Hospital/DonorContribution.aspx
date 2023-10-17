<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DonorContribution.aspx.cs" Inherits="GivMED.Pages.App.Hospital.DonorContribution" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .rate {
            float: left;
            height: 46px;
            padding: 0 10px;
        }

            .rate:not(:checked) > input {
                position: absolute;
                top: -9999px;
            }

            .rate:not(:checked) > label {
                float: right;
                width: 1em;
                overflow: hidden;
                white-space: nowrap;
                cursor: pointer;
                font-size: 30px;
                color: #ccc;
            }

                .rate:not(:checked) > label:before {
                    content: '★ ';
                }

            .rate > input:checked ~ label {
                color: #ffc700;
            }

            .rate:not(:checked) > label:hover,
            .rate:not(:checked) > label:hover ~ label {
                color: #deb217;
            }

            .rate > input:checked + label:hover,
            .rate > input:checked + label:hover ~ label,
            .rate > input:checked ~ label:hover,
            .rate > input:checked ~ label:hover ~ label,
            .rate > label:hover ~ input:checked ~ label {
                color: #c59b08;
            }

        .right-align {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:MultiView ID="mvDonorCont" runat="server">
                <asp:View ID="View1" runat="server">
                    &nbsp
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="input-group input-group-sm" style="width: 300px;">
                                            <div class="input-group-append">
                                                <asp:DropDownList CssClass="form-control" BackColor="MenuBar" Font-Bold="true" runat="server" ID="ddlStatus" Font-Size="Small" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged" AutoPostBack="true">
                                                    <asp:ListItem Selected="True" Value="1">Ongoing</asp:ListItem>
                                                    <asp:ListItem Value="2">Complete</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-tools">
                                        <div class="input-group input-group-sm" style="width: 300px;">
                                            <asp:TextBox runat="server" CssClass="form-control float-right" ID="txtSearch" placeholder="Search" TextMode="Search"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-lg btn-default" Text="Search" OnClick="btnSearch_Click" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- ./card-header -->
                                <div class="card-body table-responsive p-0">
                                    <asp:GridView ID="gvDonorProgress" runat="server" AutoGenerateColumns="False" CssClass="table table-striped projects table-bordered table-hover text-nowrap" AllowPaging="true" PageSize="10" OnRowDataBound="gvDonorProgress_RowDataBound" OnRowCommand="gvDonorProgress_RowCommand">
                                        <Columns>
                                            <asp:TemplateField HeaderText="# Code">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSupplyID" runat="server" Text='<%# Bind("SupplyID") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="2%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Publish Date">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSupplyCreateDate" runat="server" Text='<%# Bind("SupplyCreateDate", "{0:d}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="5%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Donations Progress" ItemStyle-CssClass="project_progress">
                                                <ItemTemplate>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-primary progress-bar-striped" role="progressbar"
                                                            aria-valuemin="0" aria-valuemax="100"
                                                            style='<%# "width:" + Eval("Proceprecent") + "%;" %>'>
                                                        </div>
                                                    </div>
                                                    <span class="badge  bg-warning"><%# Eval("Proceprecent") + "%" %></span>
                                                </ItemTemplate>
                                                <ItemStyle Width="20%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="P.Level">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSupplyPriorityLevel" runat="server"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="1%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Complete" HeaderStyle-CssClass="right-align">
                                                <ItemTemplate>
                                                    <span class="badge bg-success"><%# Eval("completecount")%></span>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Right" Width="3%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Processing" HeaderStyle-CssClass="right-align">
                                                <ItemTemplate>
                                                    <span class="badge bg-warning"><%# Eval("processcount")%></span>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Right" Width="3%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Arriving" HeaderStyle-CssClass="right-align">
                                                <ItemTemplate>
                                                    <span class="badge bg-info"><%# Eval("pendingcount")%></span>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Right" Width="3%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Confirm" HeaderStyle-CssClass="right-align">
                                                <ItemTemplate>
                                                    <div class="text-right">
                                                        <asp:LinkButton CssClass="btn btn-primary btn-sm" runat="server" Text="View" ToolTip="View Donors Details" CausesValidation="false" CommandName="View" CommandArgument="<%# Container.DisplayIndex %>"><i class="fas fa-shield-alt"></i>
                                                        </asp:LinkButton>
                                                    </div>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Right" Width="3%" />
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:Panel ID="pnlNodata" runat="server">
                                        <div class="error-page">
                                            <h2 class="headline text-danger">Empty</h2>

                                            <div class="error-content">
                                                <h3><i class="fas fa-exclamation-triangle text-danger"></i>No records found.</h3>
                                            </div>
                                        </div>
                                    </asp:Panel>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                    </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    &nbsp
                    <div class="row">
                        <div class="col-8">
                            <div class="row">
                                <div class="col-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <div class="row">
                                                <div class="col-8">
                                                    <asp:LinkButton ID="btnBackPage" runat="server" CssClass="btn btn-sm btn-secondary" OnClick="btnBackPage_Click"><i class="fas fa-backward"></i> Back to Page
                                                    </asp:LinkButton>
                                                </div>
                                                <div class="col-4">
                                                    <h1>#
                                                        <asp:Label runat="server" ID="lblSupplyCode"></asp:Label></h1>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-8">
                                                    <h3 class="card-title">Donor Contribution List</h3>
                                                </div>
                                                <div class="col-4">
                                                    <h1>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- ./card-header -->
                                        <div class="card-body">
                                            <div class="modal fade" id="modal-Show">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <div class="col-md-8 offset-md-3">
                                                                <h4 class="modal-title"><b>Your feedback matters to donors!</b></h4>
                                                            </div>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body d-flex flex-column">
                                                            <div class="row align-self-center">
                                                                <div class="col-md-12">
                                                                    <h5><span>How was supplies quality of donations and contribution of the donor?</span></h5>
                                                                </div>
                                                            </div>
                                                            <div class="row align-self-center">
                                                                <div class="col-md-12">
                                                                    <div class="rate">
                                                                        <input type="radio" id="star5" name="rate" value="5" />
                                                                        <label for="star5" title="text">5 stars</label>
                                                                        <input type="radio" id="star4" name="rate" value="4" />
                                                                        <label for="star4" title="text">4 stars</label>
                                                                        <input type="radio" id="star3" name="rate" value="3" />
                                                                        <label for="star3" title="text">3 stars</label>
                                                                        <input type="radio" id="star2" name="rate" value="2" />
                                                                        <label for="star2" title="text">2 stars</label>
                                                                        <input type="radio" id="star1" name="rate" value="1" />
                                                                        <label for="star1" title="text">1 star</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-4">
                                                                    <asp:LinkButton ID="btnfeedbackwriter" CssClass="btn btn-outline-success btn-block" runat="server" Text="<i class='fa fa-robot'></i> Help OpenAI Write FeedBack" OnClick="btnfeedbackwriter_Click" />
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <asp:TextBox ID="txtFeedback" runat="server" CssClass="form-control align-self-center" TextMode="MultiLine" Height="300px"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <asp:LinkButton ID="btnSubmitFeedback" runat="server" CssClass="btn btn-sm btn-success" OnClientClick="return Validate();" OnClick="btnSubmitFeedback_Click"><i class="fas fa-star-half"></i> Submit
                                                            </asp:LinkButton>
                                                        </div>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                            <div class="form-horizontal">
                                                <asp:GridView ID="gvDonorNamelist" AutoGenerateColumns="false" runat="server" CssClass="table table-striped table-bordered table-hover" DataKeyNames="DonorName" OnRowDataBound="gvDonorlist_RowDataBound" OnRowCommand="gvDonorNamelist_RowCommand">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <img alt="" style="cursor: pointer" src="../../../dist/img/icon-plus-dep.png" />
                                                                <asp:Panel ID="pnlDonationIdList" runat="server" Style="display: none">
                                                                    <asp:GridView ID="gvDonationIdList" AutoGenerateColumns="false" runat="server" CssClass="table table-striped table-bordered table-hover" DataKeyNames="DonationID" OnRowDataBound="gvDonationIdList_RowDataBound" OnRowCommand="gvDonationIdList_RowCommand">
                                                                        <Columns>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <img alt="" style="cursor: pointer" src="../../../dist/img/icon-plus-grp.png" />
                                                                                    <asp:Panel ID="pnlDonorID" runat="server" Style="display: none">
                                                                                        <asp:GridView ID="gvDonorDetails" AutoGenerateColumns="false" runat="server" CssClass="table table-striped table-bordered table-hover">
                                                                                            <Columns>
                                                                                                <asp:TemplateField HeaderText="Item Category">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblHeader1Value" runat="server" Text='<%# Bind("SupplyItemCat") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Item Name">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblHeader2Value" runat="server" Text='<%# Bind("SupplyItemName") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <ItemStyle HorizontalAlign="Right" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Donated Qty">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblHeader3Value" runat="server" Text='<%# Bind("DonatedQty") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <ItemStyle HorizontalAlign="Right" />
                                                                                                </asp:TemplateField>
                                                                                            </Columns>
                                                                                        </asp:GridView>
                                                                                    </asp:Panel>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Donation Code">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblHeader1Value" runat="server" Text='<%# Bind("DonationID") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <ItemStyle Width="80%" />
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="DonorID" Visible="false">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblHeader1DonorID" runat="server" Text='<%# Bind("DonorID") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Status" Visible="false">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblHeader1Status" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Action" HeaderStyle-CssClass="text-green" HeaderStyle-HorizontalAlign="Right">
                                                                                <ItemTemplate>
                                                                                    <%# Convert.ToInt32(Eval("Status")) == 1 ? "<span class='badge bg-warning'>Processing</span>" : Convert.ToInt32(Eval("Status")) == 3 ? "<span class='badge bg-danger'>Complete</span>" : Convert.ToInt32(Eval("Status")) == 4 ? "<span class='badge bg-danger'>Canceled</span>" : "" %>
                                                                                    <asp:LinkButton ID="btnConfirm" runat="server" CssClass="btn btn-sm btn-success" CausesValidation="false" CommandName="ShowConfirm" CommandArgument="<%# Container.DisplayIndex %>"
                                                                                        Enabled='<%# Convert.ToInt32(Eval("Status")) == 2 %>'><i class="fas fa-gift"></i> Confirm
                                                                                    </asp:LinkButton>
                                                                                </ItemTemplate>
                                                                                <ItemStyle Width="20%" />
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                    </asp:GridView>
                                                                </asp:Panel>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Donor Name">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblHeader1Value" runat="server" Text='<%# Bind("DonorName") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Width="80%" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="UserName" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblHeader1UserName" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Width="80%" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Contact Details">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="btnShowContact" runat="server" CssClass="btn btn-sm btn-primary" CausesValidation="false" CommandName="ShowContact" CommandArgument="<%# Container.DisplayIndex %>"><i class="fas fa-user-check"></i> Show Contact
                                                                </asp:LinkButton>
                                                            </ItemTemplate>
                                                            <ItemStyle Width="20%" />
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="card bg-light">
                                <asp:Panel ID="pnlContact" runat="server">
                                    <div class="card-header text-muted border-bottom-0">
                                        <asp:Label runat="server" ID="lblDtype" Text="Digital Strategist"></asp:Label>
                                    </div>
                                    <div class="card-body pt-0">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="lead"><b>
                                                    <asp:Label runat="server" Text="Nicole Pearson" ID="lblName"></asp:Label></b></h2>
                                                <ul class="ml-4 mb-0 fa-ul text-muted">
                                                    <li class="small"><span class="fa-li"><i class="fas fa-lg fa-location-arrow"></i></span>
                                                        <asp:Label runat="server" Text="Address: " ID="lblAddress"></asp:Label></li>
                                                    &nbsp
                                                    <li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span>
                                                        <asp:Label runat="server" Text="" ID="lblTele"></asp:Label></li>
                                                    &nbsp
                                                    <li class="small"><span class="fa-li"><i class="fas fa-lg fa-info"></i></span>
                                                        <asp:Label runat="server" Text="" ID="lblContact"></asp:Label></li>
                                                    &nbsp
                                                    <li class="small"><span class="fa-li"><i class="fas fa-lg fa-microphone"></i></span>
                                                        <asp:Label runat="server" Text="" ID="lblPublicStatus"></asp:Label></li>
                                                </ul>
                                            </div>
                                            <div class="col-5 text-center">
                                                <asp:Image runat="server" ID="imgPd" CssClass="profile-user-img img-fluid img-circle" Width="150px" Height="150px" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <div class="text-right">
                                            <asp:Button runat="server" CssClass="icheck-info" Text="" />
                                        </div>
                                    </div>
                                </asp:Panel>
                            </div>
                        </div>
                    </div>
                </asp:View>
            </asp:MultiView>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">
        function pageLoad() {
            $(document).ready(function () {
                Validate = function () {
                    $('#<% = txtFeedback.ClientID %>').addClass('validate[required]');
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

        function ShowStarRating() {
            Swal.fire({
                title: '<h3>Your feedback matters to donors!</h3>',
                html: 'How was supplies quality of donations and contribution of the donor?',
                icon: 'question',
                showCancelButton: true,
                confirmButtonText: 'Yes',
                cancelButtonText: 'No'
            }).then((result) => {
                if (result.isConfirmed) {
                    jQuery("[ID$=btnCancelOK]").click();
                    Swal.fire('Canceled!', '', 'error');
                }
            });
        };

        function ShowRating() {
            $('.modal-backdrop').remove();
            $('#modal-Show').modal('show');
            return false;
        };

        window.onload = function () {
            ResizeGrid();
        }

        //window.onbeforeunload = function (e) {
        //    PageMethods.AbandonSession();
        //};

        function ResizeGrid() {
            $('#grid-container').css('height', (window.innerHeight - 200) + "px");
        }
        $(document).on("click", "[src*=icon-plus-dep]", function () {
            $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
            $(this).attr("src", "../../../dist/img/icon-minus-dep.png");
        });
        $(document).on("click", "[src*=icon-minus-dep]", function () {
            $(this).attr("src", "../../../dist/img/icon-plus-dep.png");
            $(this).closest("tr").next().remove();
        });
        $(document).on("click", "[src*=icon-plus-grp]", function () {
            $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
            $(this).attr("src", "../../../dist/img/icon-minus-grp.png");
        });
        $(document).on("click", "[src*=icon-minus-grp]", function () {
            $(this).attr("src", "../../../dist/img/icon-plus-grp.png");
            $(this).closest("tr").next().remove();
        });

        $(document).ready(function () {
            $('#input-1').rating({
                size: 'sm',
                showClear: false,
                showCaption: false,
                filledStar: '<i class="glyphicon glyphicon-star"></i>',
                emptyStar: '<i class="glyphicon glyphicon-star-empty"></i>'
            });
        });
    </script>
</asp:Content>
