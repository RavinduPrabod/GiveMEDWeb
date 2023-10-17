<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="Benifits.aspx.cs" Inherits="GivMED.Pages.Web.Benifits" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../dist/css/GiveMEDHome.css" rel="stylesheet" />
    <link href="../../dist/js/animate/animate.min.css" rel="stylesheet" />
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
                                    <div class="col-lg-10 wow zoomIn">
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
            <div class="card" style="background-color: cornflowerblue">
                <div class="card-body">
                    <section class="pb-0">
                        <ul>
                              <h2 class="wow zoomIn">Benefits of the <a style="color: red" href="HomePage.aspx"><b>GiveMED</b></a>:</h2>
                            <li>
                                <h3 class="wow zoomInLeft">Efficient platform for hospitals to connect with potential donors</h3>
                                <p class="wow zoomIn">The proposed web application will provide an efficient platform for hospitals to connect with potential donors, including organizations and individuals, to acquire the necessary medical supplies.</p>
                            </li>
                            <li>
                                <h3 class="wow zoomInRight">Ability for hospitals to register and publish their medical supply needs</h3>
                                <p class="wow zoomIn">Hospitals will be able to register and publish their medical supply needs, including the priority level (High, Normal) on the web application.</p>
                            </li>
                            <li>
                                <h3 class="wow zoomInLeft">User-friendly interface for donors to search and select medical supplies to donate</h3>
                                <p class="wow zoomIn">Donors will have a user-friendly interface to search and select the medical supplies they want to donate, based on location, priority level, or type of medical supply needed.</p>
                            </li>
                            <li>
                                <h3 class="wow zoomInRight">Assigning ratings to donors based on their donations to motivate them to donate more</h3>
                                <p class="wow zoomIn">The web application will assign ratings to donors based on their donations, motivating them to donate more and participate in the cause.</p>
                            </li>
                            <li>
                                <h3 class="wow zoomInLeft">Contribution to improving the quality of healthcare services in hospitals, especially in resource-constrained regions</h3>
                                <p class="wow zoomIn">The proposed web application will contribute to improving the quality of healthcare services in hospitals, especially in resource-constrained regions, by facilitating the donation of medical supplies.</p>
                            </li>
                        </ul>
                    </section>
                </div>
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
    <script src="../../dist/js/isotope/isotope.pkgd.min.js"></script>
    <script src="../../dist/js/owlcarousel/owl.carousel.min.js"></script>
        <script src="../../dist/js/wow/wow.min.js"></script>
    <script src="../../dist/js/main.js"></script>
</asp:Content>
