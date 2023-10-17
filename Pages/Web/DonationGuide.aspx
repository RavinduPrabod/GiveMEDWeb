<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="DonationGuide.aspx.cs" Inherits="GivMED.Pages.Web.DonationGuide" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../dist/css/GiveMEDHome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel runat="server">
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
                    <header class="banner-section">
                        <div class="banner-img" style="background-attachment: inherit;"></div>
                        <div class="container">
                            <div class="banner-content">
                                <div class="row">
                                    <div class="col-lg-1">
                                    </div>
                                    <div class="col-lg-10">
                                        <h1 style="font-weight: bold; color: azure">A Little Care Can Change the World.</h1>
                                        <asp:Button CssClass="btn btn-success" runat="server" Text="Join Us!" OnClientClick="ShowJoinUs();" />
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
                                    <div class="col-lg-8">
                                        <h4 style="color: snow"><b>Be a MED-Donator</b></h4>
                                        <h5 style="font-style: italic; color: azure">For Individuals and Organization. No registration fees. No hidden fees.</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <section class="pb-0">
                        <div class="container"></div>
                        <h2>Designed to Do Good</h2>
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="carousel-content" style="padding-top: 20%;">
                                                <h5>Deepest Facebook Integration</h5>
                                                <p>Integrate your donation form directly into Facebook. Allows you to raise donations within Facebook - no links, no redirects, just plug and play.</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 text-lg-left text-center">
                                            <img src="https://placehold.it/900x500/3c8dbc/ffffff&text=I+Love+Bootstrap" style="height: 720px;">
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="carousel-content" style="padding-top: 20%;">
                                                <h5>Deepest Facebook Integration</h5>
                                                <p>Integrate your donation form directly into Facebook. Allows you to raise donations within Facebook - no links, no redirects, just plug and play.</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 text-lg-left text-center">
                                            <img src="https://placehold.it/900x500/3c8dbc/ffffff&text=I+Love+Bootstrap" style="height: 720px;">
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="carousel-content" style="padding-top: 20%;">
                                                <h5>Deepest Facebook Integration</h5>
                                                <p>Integrate your donation form directly into Facebook. Allows you to raise donations within Facebook - no links, no redirects, just plug and play.</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 text-lg-left text-center">
                                            <img src="https://placehold.it/900x500/3c8dbc/ffffff&text=I+Love+Bootstrap" style="height: 720px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                <span class="carousel-control-custom-icon" aria-hidden="true">
                                    <i class="fas fa-chevron-left"></i>
                                </span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                <span class="carousel-control-custom-icon" aria-hidden="true">
                                    <i class="fas fa-chevron-right"></i>
                                </span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </section>

                </div>
                <div class="fastsocialshare_clearer"></div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">
        function ShowJoinUs() {
            $('.modal-backdrop').remove();
            $('#modal-join').modal('show');
            return false;
        };
    </script>
</asp:Content>
