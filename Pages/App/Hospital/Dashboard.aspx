<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="GivMED.Pages.App.Hospital.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            &nbsp
    <div class="row">
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
                <span class="info-box-icon bg-info elevation-1"><i class="fa fa-hand-holding"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">
                        <span class="info-box-text">Registered Volunteers</asp:Label></span>
                        <asp:Label ID="lblregisteredVolunteers" runat="server" CssClass="info-box-number"><small></small></asp:Label>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
                <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-medkit"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Count of Donations</span>
                    <asp:Label ID="lblCountofTotalDonation" runat="server" CssClass="info-box-number"></asp:Label>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix hidden-md-up"></div>

        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
                <span class="info-box-icon bg-success elevation-1"><i class="fas fa-home"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Contribute Organizations</span>
                    <asp:Label ID="lblContributeOrganization" runat="server" CssClass="info-box-number"></asp:Label>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
                <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">New Donors</span>
                    <asp:Label ID="lblNewDonors" runat="server" CssClass="info-box-number"></asp:Label>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
    </div>
            &nbsp
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Monthly Recap Charts</h5>
                    <div class="card-tools">
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card card-primary card-outline">
                                <div class="card-header">
                                    <h3 class="card-title">
                                        <i class="far fa-chart-bar"></i>
                                        Donations Chart
                                    </h3>

                                    <div class="card-tools">
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="chart">
                                        <canvas id="myChart" style="width: 100%; max-width: 600px"></canvas>
                                    </div>
                                    <!-- /.card-body-->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <p class="text-center">
                                <strong>Priority Chart</strong>
                            </p>
                            <div class="card-body">
                                <div class="chartjs-size-monitor">
                                    <div class="chartjs-size-monitor-expand">
                                        <div class=""></div>
                                    </div>
                                    <div class="chartjs-size-monitor-shrink">
                                        <div class=""></div>
                                    </div>
                                </div>
                                <canvas id="donutChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%; display: block;" width="391" height="250" class="chartjs-render-monitor"></canvas>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <p class="text-center">
                                <strong>Shortage Goal Completion</strong>
                            </p>
                            <asp:PlaceHolder runat="server" ID="progressBarsPlaceholder" />
                        </div>

                        <%--<div class="col-md-4">
                            <p class="text-center">
                                <strong>Shortage Goal Completion</strong>
                            </p>
                            <!-- /.progress-group -->

                            <div class="progress-group">
                                Regular Level
                      <span class="float-right"><b>75</b>%</span>
                                <div class="progress progress-sm">
                                    <div class="progress-bar bg-success" style="width: 75%"></div>
                                </div>
                            </div>
                            <!-- /.progress-group -->
                            <asp:Label runat="server" Text=" Urgent Level"></asp:Label>
                            <span class="float-right"><b>60</b>%</span>
                            <div class="progress progress-sm">
                                <div class="progress-bar bg-danger" style="width: 60%"></div>
                            </div>
                            &nbsp
                            <!-- /.progress-group -->
                            <div class="progress-group">
                                Monthly Progress
                      <span class="float-right"><b>30</b>%</span>
                                <div class="progress progress-sm">
                                    <div class="progress-bar bg-primary progress-bar-striped" style="width: 30%"></div>
                                </div>
                            </div>
                            <!-- /.progress-group -->
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script>
        var xValues = ["January", "February", "March", "April", "May"];
        var yValues = [35, 25, 40, 30, 25];
        var barColors = ["red", "green", "blue", "orange", "brown"];

        new Chart("myChart", {
            type: "bar",
            data: {
                labels: xValues,
                datasets: [{
                    backgroundColor: barColors,
                    data: yValues
                }]
            },
            options: {
                legend: { display: false },
                title: {
                    display: true,
                    text: ""
                }
            }
        });
    </script>
</asp:Content>
