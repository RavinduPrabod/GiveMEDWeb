<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="GivMED.Pages.Web.HomePage" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../dist/css/GiveMEDHome.css" rel="stylesheet" />
    <link href="../../dist/js/animate/animate.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel runat="server">
        <Triggers>
            <asp:PostBackTrigger ControlID="btnReport" />
        </Triggers>
        <ContentTemplate>
            <div class="modal fade" id="modal-join">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content bg-secondary">
                        <div class="modal-header">
                            <h4 class="modal-title"><b>How is you join with us ?</b></h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-2">
                                </div>
                                <div class="col-md-4">
                                    <asp:LinkButton ID="btnjoinFundraiser" ForeColor="White" CssClass="btn btn-outline-danger btn-block" runat="server" Text="<i class='fa fa-medkit'></i> As a Donor" OnClick="btnjoinFundraiser_Click" />
                                </div>
                                <div class="col-md-4">
                                    <asp:LinkButton ID="btnjoinRecipient" ForeColor="White" CssClass="btn btn-outline-warning btn-block" runat="server" Text="<i class='fa fa-hospital'></i> As a Hospital" OnClick="btnjoinRecipient_Click" />
                                </div>
                                <div class="col-md-2">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <div class="card" style="background-color: navy">
                <div class="card-body">
                    <!-- /.card -->
                    <header class="banner-section">
                        <div class="banner-img" style="background-attachment: inherit;"></div>
                        <div class="container">
                            <div class="banner-content">
                                <div class="row">
                                    <div class="col-lg-1">
                                    </div>
                                    <div class="col-lg-10 wow zoomIn">
                                        <h1 style="font-weight: bold; color: azure">A Little Care Can Change the World.</h1>
                                        <asp:Button CssClass="btn btn-success" runat="server" Text="Join Us Here!" OnClientClick="return ShowJoinUs();" />
                                    </div>
                                    <div class="col-lg-1">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3">
                                    </div>
                                    <div class="col-lg-6">
                                    </div>
                                    <div class="col-lg-3">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                    </div>
                                    <div class="col-lg-8 wow zoomIn">
                                        <h4 style="color: snow"><b>Be a MED-Donator</b></h4>
                                        <h5 style="font-style: italic; color: azure">For Individuals and Organization. No registration fees. No hidden fees.</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                </div>
            </div>
            <div class="card-body table-responsive p-0">
                <div class="row">
                    <div class="col-lg-3 col-6 wow zoomInLeft">
                        <!-- small card -->
                        <div class="small-box bg-danger">
                            <div class="inner">
                                <h3>
                                    <asp:Label runat="server" ID="lblDonorCount"></asp:Label></h6>
                                    <h3></h3>
                                    <p>
                                        Total Active Donors
                                    </p>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                </h3>
                            </div>
                            <div class="icon">
                                <i class="fas fa-medkit"></i>
                            </div>
                            <%--<asp:LinkButton ID="btnMore1" runat="server" CssClass="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i>
                            </asp:LinkButton>--%>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6 wow zoomInRight">
                        <!-- small card -->
                        <div class="small-box bg-warning">
                            <div class="inner">
                                <h3>
                                    <asp:Label runat="server" ID="lblHospitalCount"></asp:Label></h6>
                                    <h3></h3>
                                    <p>
                                        Registed Hospitals
                                    </p>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                </h3>
                            </div>
                            <div class="icon">
                                <i class="fas fa-hospital-symbol"></i>
                            </div>
                            <%-- <asp:LinkButton ID="btnMore2" runat="server" CssClass="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i>
                            </asp:LinkButton>--%>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6 wow zoomInLeft">
                        <!-- small card -->
                        <div class="small-box bg-success">
                            <div class="inner">
                                <h3>
                                    <asp:Label runat="server" ID="lblNeedCount"></asp:Label></h6>
                                    <h3></h3>
                                    <p>
                                        Ongoing Supplies Needs
                                    </p>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                </h3>
                            </div>
                            <div class="icon">
                                <i class="fas fa-donate"></i>
                            </div>
                            <%--  <asp:LinkButton ID="btnMore3" runat="server" CssClass="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i>
                            </asp:LinkButton>--%>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6 wow zoomInRight">
                        <!-- small card -->
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>
                                    <asp:Label runat="server" ID="Label19">2023</asp:Label></h6>
                                    <h3></h3>
                                    <p>
                                        Annual Donation Report
                                    </p>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                    <h3></h3>
                                </h3>

                            </div>
                            <div class="icon">
                                <i class="fas fa-chart-line"></i>
                            </div>
                            <asp:LinkButton ID="btnReport" runat="server" CssClass="small-box-footer" OnClick="btnReport_Click">List of required supplies report&nbsp<i class="fas fa-download"></i>
                            </asp:LinkButton>
                            <%-- <asp:LinkButton ID="btndonor" runat="server" CssClass="small-box-footer" OnClick="btndonor_Click">Donors Report&nbsp<i class="fas fa-download"></i>
                            </asp:LinkButton>
                          <asp:LinkButton ID="btnhospital" runat="server" CssClass="small-box-footer" OnClick="btnhospital_Click">Hospital Report&nbsp<i class="fas fa-download"></i>
                            </asp:LinkButton>--%>
                        </div>
                        <asp:Panel ID="Panel1" runat="server" Visible="false">
                            <rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226">
                                <LocalReport ReportPath="Report\AnnualDonationReport.rdlc">
                                </LocalReport>
                            </rsweb:ReportViewer>
                            <asp:EntityDataSource ID="VwAnnualreport1" runat="server">
                            </asp:EntityDataSource>
                            <asp:EntityDataSource ID="VwAnnualreport" runat="server">
                            </asp:EntityDataSource>
                            <asp:EntityDataSource ID="EntityDataSource1" runat="server">
                            </asp:EntityDataSource>
                            <rsweb:ReportViewer ID="ReportViewer2" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226">
                                <LocalReport ReportPath="Report\RegisteredDonors.rdlc">
                                </LocalReport>
                            </rsweb:ReportViewer>
                            <rsweb:ReportViewer ID="ReportViewer3" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226">
                                <LocalReport ReportPath="Report\RegisteredHospitals.rdlc">
                                </LocalReport>
                            </rsweb:ReportViewer>
                        </asp:Panel>
                    </div>
                    <!-- ./col -->
                </div>
                &nbsp

                <asp:GridView ID="gvDonorProgress" runat="server" ShowHeader="false" AutoGenerateColumns="false" CssClass="table table-striped projects table-bordered table-hover text-nowrap" OnRowDataBound="gvDonorProgress_RowDataBound">
                    <Columns>
                        <asp:TemplateField HeaderText="#">
                            <ItemTemplate>
                                <section class="section-bg" id="campaigns">
                                    <div class="container">
                                        <div class="d-lg-flex align-items-center wow zoomIn">
                                            <asp:Image runat="server" ImageUrl="../../dist/img/trending.png" ID="Image6" CssClass="img-circle" Width="50px" Height="50px" />
                                            <h2 class="text-center text-lg-left">Trending Donations</h2>
                                            <div class="mx-auto mr-lg-0 search-box mt-4 mt-lg-0">
                                                <form action="/Search">
                                                    <input name="q" placeholder="Click and Find Donations" disabled type="text">
                                                    <button onclick="location.href='/Pages/Web/Review/DonationReview.aspx'">
                                                        <i class="fa fa-caret-right"></i>
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="row pt-5 ">
                                            <div class="col-lg-4 col-md-6 wow zoomIn">
                                                <div class="campaign-card">
                                                    <div class="camp-top">
                                                        <h6>#<asp:Label runat="server" ID="Label9" Text='<%# Bind("DonationIDD1") %>'>DTN 001</asp:Label></h6>
                                                    </div>
                                                    <div class="camp-top">
                                                        <span>
                                                            <asp:Label runat="server" ID="lbltemp" Font-Bold="true" Font-Size="Smaller" Text="Supplies Need Prority : "></asp:Label>
                                                            <asp:Label runat="server" ID="lblPriorityD1" Font-Bold="true" Text='<%# Bind("PriorityD1") %>'></asp:Label>
                                                        </span>
                                                        &nbsp
                                                    <div>
                                                        <asp:Image runat="server" ImageUrl="../../dist/img/hurry.png" ID="Image3" CssClass="img-circle" Width="100px" Height="100px" /><br>
                                                    </div>
                                                    </div>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-animated bg-orange" role="progressbar"
                                                            aria-valuemin="0" aria-valuemax="100"
                                                            style='<%# "width:" + Eval("DonationPrecentatgeD1") + "%;" %>'>
                                                        </div>
                                                    </div>
                                                    <div class="progress-value">
                                                        Contributor Count :
                                                    <asp:Label runat="server" ID="Label10" Font-Bold="true" Text='<%# Bind("DonorCountD1") %>'>Contributor Count : 5</asp:Label>
                                                        <div class="camp-percent">
                                                            <asp:Label runat="server" Font-Bold="true" ID="Label11" Text='<%# Bind("DonationPrecentatgeD1") %>'>Donation %</asp:Label>%
                                                        </div>
                                                    </div>
                                                    <p class="camp-text pt-4 pb-2">
                                                        <ul class="ml-4 mb-0 fa-ul text-muted">
                                                            <li class="small"><span class="fa-li"><i class="fas fa-lg fa-hospital"></i></span>
                                                                <asp:Label runat="server" ID="Label23" Font-Bold="true" ForeColor="Blue" Text='<%# Bind("HospitalNameD1") %>'>Lanka Hospital</asp:Label><br />
                                                            </li>
                                                            <br>
                                                            <li class="small"><span class="fa-li"><i class="fas fa-lg fa-map-marked"></i></span>
                                                                <asp:Label runat="server" ID="Label24" Text='<%# Bind("HLocationD1") %>'>Colombo</asp:Label>
                                                            </li>
                                                        </ul>
                                                    </p>
                                                    <a href="/kendall-lily?form=popup#donate/35">
                                                        <button class="btn-block mb-3" onclick="ShowDonate();">Contribute Now</button>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6 wow zoomIn">
                                                <div class="campaign-card">
                                                    <div class="camp-top">
                                                        <h6>#<asp:Label runat="server" ID="Label12" Text='<%# Bind("DonationIDD2") %>'>DTN 001</asp:Label></h6>
                                                    </div>
                                                    <div class="camp-top">
                                                        <span>
                                                            <asp:Label runat="server" ID="Label13" Font-Bold="true" Font-Size="Smaller" Text="Supplies Need Prority : "></asp:Label>
                                                            <asp:Label runat="server" ID="lblPriorityD2" Font-Bold="true" Text='<%# Bind("PriorityD2") %>'></asp:Label>
                                                        </span>
                                                        &nbsp
                                                    <div>
                                                        <asp:Image runat="server" ImageUrl="../../dist/img/hurry.png" ID="Image4" CssClass="img-circle" Width="100px" Height="100px" /><br>
                                                    </div>
                                                    </div>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-blue" role="progressbar"
                                                            aria-valuemin="0" aria-valuemax="100"
                                                            style='<%# "width:" + Eval("DonationPrecentatgeD2") + "%;" %>'>
                                                        </div>
                                                    </div>
                                                    <div class="progress-value">
                                                        Contributor Count :
                                                    <asp:Label runat="server" ID="Label14" Font-Bold="true" Text='<%# Bind("DonorCountD2") %>'>Contributor Count : 5</asp:Label>
                                                        <div class="camp-percent">
                                                            <asp:Label runat="server" Font-Bold="true" ID="Label26" Text='<%# Bind("DonationPrecentatgeD2") %>'>Donation %</asp:Label>%
                                                        </div>
                                                    </div>
                                                    <p class="camp-text pt-4 pb-2">
                                                        <ul class="ml-4 mb-0 fa-ul text-muted">
                                                            <li class="small"><span class="fa-li"><i class="fas fa-lg fa-hospital"></i></span>
                                                                <asp:Label runat="server" ID="Label27" Font-Bold="true" ForeColor="Blue" Text='<%# Bind("HospitalNameD2") %>'>Lanka Hospital</asp:Label><br />
                                                            </li>
                                                            <br>
                                                            <li class="small"><span class="fa-li"><i class="fas fa-lg fa-map-marked"></i></span>
                                                                <asp:Label runat="server" ID="Label28" Text='<%# Bind("HLocationD2") %>'>Colombo</asp:Label>
                                                            </li>
                                                        </ul>
                                                    </p>
                                                    <a href="/kendall-lily?form=popup#donate/35">
                                                        <button class="btn-block mb-3" onclick="ShowDonate();">Contribute Now</button>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6 wow zoomIn">
                                                <div class="campaign-card">
                                                    <div class="camp-top">
                                                        <h6>#<asp:Label runat="server" ID="Label15" Text='<%# Bind("DonationIDD3") %>'>DTN 001</asp:Label></h6>
                                                    </div>
                                                    <div class="camp-top">
                                                        <span>
                                                            <asp:Label runat="server" ID="Label16" Font-Bold="true" Font-Size="Smaller" Text="Supplies Need Prority : "></asp:Label>
                                                            <asp:Label runat="server" ID="lblPriorityD3" Font-Bold="true" Text='<%# Bind("PriorityD3") %>'></asp:Label>
                                                        </span>
                                                        &nbsp
                                                    <div>
                                                        <asp:Image runat="server" ImageUrl="../../dist/img/hurry.png" ID="Image5" CssClass="img-circle" Width="100px" Height="100px" /><br>
                                                    </div>
                                                    </div>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-blue" role="progressbar"
                                                            aria-valuemin="0" aria-valuemax="100"
                                                            style='<%# "width:" + Eval("DonationPrecentatgeD3") + "%;" %>'>
                                                        </div>
                                                    </div>
                                                    <div class="progress-value">
                                                        Contributor Count :
                                                    <asp:Label runat="server" Font-Bold="true" ID="Label17" Text='<%# Bind("DonorCountD3") %>'>Contributor Count : 5</asp:Label>
                                                        <div class="camp-percent">
                                                            <asp:Label runat="server" Font-Bold="true" ID="Label29" Text='<%# Bind("DonationPrecentatgeD3") %>'>Donation %</asp:Label>%
                                                        </div>
                                                    </div>
                                                    <p class="camp-text pt-4 pb-2">
                                                        <ul class="ml-4 mb-0 fa-ul text-muted">
                                                            <li class="small"><span class="fa-li"><i class="fas fa-lg fa-hospital"></i></span>
                                                                <asp:Label runat="server" ID="Label30" Font-Bold="true" ForeColor="Blue" Text='<%# Bind("HospitalNameD3") %>'>Lanka Hospital</asp:Label><br />
                                                            </li>
                                                            <br>
                                                            <li class="small"><span class="fa-li"><i class="fas fa-lg fa-map-marked"></i></span>
                                                                <asp:Label runat="server" ID="Label31" Text='<%# Bind("HLocationD3") %>'>Colombo</asp:Label>
                                                            </li>
                                                        </ul>
                                                    </p>
                                                    <a href="/kendall-lily?form=popup#donate/35">
                                                        <button class="btn-block mb-3" onclick="ShowDonate();">Contribute Now</button>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        &nbsp
                                        &nbsp
                                        <div class="d-lg-flex align-items-center wow zoomIn">
                                            <h2 class="text-center text-lg-left">Top Rating Donors</h2>
                                            <div class="mx-auto mr-lg-0 search-box mt-4 mt-lg-0">
                                                <form action="/Search">
                                                    <input name="q" placeholder="Click and Find Donations" disabled type="text">
                                                    <button onclick="location.href='/Pages/Web/Review/DonationReview.aspx'">
                                                        <i class="fa fa-caret-right"></i>
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="row pt-5">
                                            <div class="col-lg-4 col-md-6 wow zoomIn">
                                                <div class="campaign-card">
                                                    <div class="camp-top">
                                                        <div>
                                                            <h6>
                                                                <asp:Label runat="server" ID="lblTop1DonorName" Text='<%# Bind("DonorNameT1") %>'>Name</asp:Label></h6>
                                                        </div>
                                                    </div>
                                                    <div class="camp-top">
                                                        <div>
                                                            <asp:Image runat="server" ID="ImgTop1" CssClass="profile-user-img img-fluid img-circle" ImageUrl='<%# Bind("ImgURLT1") %>' Width="150px" Height="150px" /><br>
                                                            <div class="row align-self-baseline">
                                                                <div class="col-xs-8">
                                                                    <div class="rate">
                                                                        <input type="radio" id="star5" name="rate" value="5" disabled />
                                                                        <label for="star5" title="text">5 stars</label>
                                                                        <input type="radio" id="star4" name="rate" value="4" checked disabled />
                                                                        <label for="star4" title="text">4 stars</label>
                                                                        <input type="radio" id="star3" name="rate" value="3" disabled />
                                                                        <label for="star3" title="text">3 stars</label>
                                                                        <input type="radio" id="star2" name="rate" value="2" disabled />
                                                                        <label for="star2" title="text">2 stars</label>
                                                                        <input type="radio" id="star1" name="rate" value="1" disabled />
                                                                        <label for="star1" title="text">1 star</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-xs-4" style="color: gold; font-weight: bold">
                                                                    <h8>
                                                                        GOLD
                                                                    </h8>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <asp:Image runat="server" CssClass="profile-user-img img-fluid img-circle" ImageUrl="../../dist/img/1.png" Width="100px" Height="100px" />
                                                        </div>
                                                    </div>
                                                    <div class="progress-value">
                                                        <div class="camp-amt">
                                                            Credit -
                                                            <asp:Label runat="server" ForeColor="Blue" ID="lblTop1DonationCredit" Text='<%# Bind("DonationCreditT1") %>'>Count</asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="progress-value">
                                                        <div class="camp-percent">
                                                            <asp:Label runat="server" ID="Label1"></asp:Label>
                                                        </div>
                                                        <div class="camp-percent">
                                                            Last Activity -
                                                            <asp:Label runat="server" ID="lblTop1LastActivityDate" Text='<%# Bind("LastActivityDateT1") %>'></asp:Label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6 wow zoomIn">
                                                <div class="campaign-card">
                                                    <div class="camp-top">
                                                        <div>
                                                            <h6>
                                                                <asp:Label runat="server" ID="Label2" Text='<%# Bind("DonorNameT2") %>'>Name</asp:Label></h6>
                                                        </div>
                                                    </div>
                                                    <div class="camp-top">
                                                        <div>
                                                            <asp:Image runat="server" ID="Image1" CssClass="profile-user-img img-fluid img-circle" ImageUrl='<%# Bind("ImgURLT2") %>' Width="150px" Height="150px" /><br>
                                                            <div class="row align-self-baseline">
                                                                <div class="col-xs-8">
                                                                    <div class="rate1">
                                                                        <input type="radio" id="star5" name="rate1" value="5" checked disabled />
                                                                        <label for="star5" title="text">5 stars</label>
                                                                        <input type="radio" id="star4" name="rate1" value="4" disabled />
                                                                        <label for="star4" title="text">4 stars</label>
                                                                        <input type="radio" id="star3" name="rate1" value="3" disabled />
                                                                        <label for="star3" title="text">3 stars</label>
                                                                        <input type="radio" id="star2" name="rate1" value="2" disabled />
                                                                        <label for="star2" title="text">2 stars</label>
                                                                        <input type="radio" id="star1" name="rate1" value="1" disabled />
                                                                        <label for="star1" title="text">1 star</label>
                                                                    </div>
                                                                    <div class="col-xs-4" style="color: silver; font-weight: bold">
                                                                        <h8>
                                                                            SILVER
                                                                        </h8>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <asp:Image runat="server" CssClass="profile-user-img img-fluid img-circle" ImageUrl="../../dist/img/2.png" Width="100px" Height="100px" />
                                                        </div>
                                                    </div>
                                                    <div class="progress-value">
                                                        <div class="camp-amt">
                                                            Credit -
                                                            <asp:Label runat="server" ForeColor="Blue" ID="Label3" Text='<%# Bind("DonationCreditT2") %>'>Count</asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="progress-value">
                                                        <div class="camp-percent">
                                                            <asp:Label runat="server" ID="Label4"></asp:Label>
                                                        </div>
                                                        <div class="camp-percent">
                                                            Last Activity -
                                                            <asp:Label runat="server" ID="Label5" Text='<%# Bind("LastActivityDateT2") %>'></asp:Label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6 wow zoomIn">
                                                <div class="campaign-card">
                                                    <div class="camp-top">
                                                        <div>
                                                            <h6>
                                                                <asp:Label runat="server" ID="Label6" Text='<%# Bind("DonorNameT3") %>'>Name</asp:Label></h6>
                                                        </div>
                                                    </div>
                                                    <div class="camp-top">
                                                        <div>
                                                            <asp:Image runat="server" ID="Image2" CssClass="profile-user-img img-fluid img-circle" ImageUrl='<%# Bind("ImgURLT3") %>' Width="150px" Height="150px" /><br>
                                                            <div class="row align-self-baseline">
                                                                <div class="col-xs-8">
                                                                    <div class="rate2">
                                                                        <input type="radio" id="star5" name="rate2" value="5" disabled />
                                                                        <label for="star5" title="text">5 stars</label>
                                                                        <input type="radio" id="star4" name="rate2" value="4" disabled />
                                                                        <label for="star4" title="text">4 stars</label>
                                                                        <input type="radio" id="star3" name="rate2" value="3" disabled />
                                                                        <label for="star3" title="text">3 stars</label>
                                                                        <input type="radio" id="star2" name="rate2" value="2" disabled />
                                                                        <label for="star2" title="text">2 stars</label>
                                                                        <input type="radio" id="star1" name="rate2" value="1" checked disabled />
                                                                        <label for="star1" title="text">1 star</label>
                                                                    </div>
                                                                    <div class="col-xs-4" style="color: brown; font-weight: bold">
                                                                        <h8>
                                                                            BRONZE
                                                                        </h8>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <asp:Image runat="server" CssClass="profile-user-img img-fluid img-circle" ImageUrl="../../dist/img/3.png" Width="100px" Height="100px" />
                                                        </div>
                                                    </div>
                                                    <div class="progress-value">
                                                        <div class="camp-amt">
                                                            Credit -
                                                            <asp:Label runat="server" ForeColor="Blue" ID="Label7" Text='<%# Bind("DonationCreditT3") %>'>Count</asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="progress-value">
                                                        <div class="camp-percent">
                                                            <asp:Label runat="server" ID="Label8"></asp:Label>
                                                        </div>
                                                        <div class="camp-percent">
                                                            Last Activity -
                                                            <asp:Label runat="server" ID="Label20" Text='<%# Bind("LastActivityDateT3") %>'></asp:Label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) { var oControl = args.get_postBackElement(); oControl.disabled = true; }

        function ShowJoinUs() {

            $('.modal-backdrop').remove();
            $('#modal-join').modal('show');
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
        //function myFunction() {
        //    var copyText = document.getElementById("Label12");
        //    if (copyText !== null) {
        //        copyText.select();
        //        copyText.setSelectionRange(0, 99999);
        //        navigator.clipboard.writeText(copyText.value);
        //        alert("Copied the text: " + copyText.value);
        //    } else {
        //        console.log("Element not found.");
        //    }
        //}

    </script>
    <script src="../../dist/js/isotope/isotope.pkgd.min.js"></script>
    <script src="../../dist/js/owlcarousel/owl.carousel.min.js"></script>
        <script src="../../dist/js/wow/wow.min.js"></script>
    <script src="../../dist/js/main.js"></script>
</asp:Content>
