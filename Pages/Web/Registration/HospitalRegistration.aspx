<%@ Page Title="" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="HospitalRegistration.aspx.cs" Inherits="GivMED.Pages.Web.Registration.HospitalRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .carousel-item {
            height: 100vh;
            min-height: 350px;
            background: no-repeat center center scroll;
            background-size: cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="card" style="width: 100%; height: 800px; overflow: hidden;">
                <%--<div class="modal fade" id="modal-emailverify">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title text-center">GiveMED Password Reset Confirmation - Check your email for instructions</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <p> A password has been sent to your email address<strong> <asp:Label ID="lblEmail" runat="server"></asp:Label></strong>. 
                                            Please check your email and enter the password below: </p> Note: You can use this password to login to your account. 
                                        We recommend changing your password as soon as you login for security purposes.
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtCode" runat="server" placeholder="enter code"></asp:TextBox>
                                        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <asp:Button runat="server" ID="btnVerify" CssClass="btn btn-primary" Text="Verify"/>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>--%>
                <div class="card-body d-flex justify-content-center">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="false" style="width: 100%;">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="card card-outline card-primary">
                                    <div class="card-header text-center">
                                        <a href="../../index2.html" class="h1">HOSPITAL<b>  REGISTRATION</b></a>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            &nbsp
                                        </div>
                                        <div class="row">
                                            &nbsp
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-3">
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="input-group mb-3">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-hospital"></span>
                                                        </div>
                                                    </div>
                                                    <asp:TextBox ID="txtNameofHospital" runat="server" CssClass="form-control" placeholder="Hospital Name"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-3">
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="input-group mb-3">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-envelope"></span>
                                                        </div>
                                                    </div>
                                                    <asp:TextBox ID="txtHospitalEmail" runat="server" CssClass="form-control" placeholder="Hospital Email" TextMode="Email"></asp:TextBox>
                                                    &nbsp&nbsp&nbsp<asp:Button ID="btnVerify" runat="server" Text="Verify" CssClass="btn btn-primary" OnClientClick="return Validate();" OnClick="btnVerify_Click" />
                                                </div>
                                                <div class="col-sm-3">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-3">
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="input-group mb-3">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-lock"></span>
                                                        </div>
                                                    </div>
                                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                            </div>
                                        </div>
                                        <%--<div class="form-group row">
                                            <div class="col-sm-3">
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="input-group mb-3">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-lock"></span>
                                                        </div>
                                                    </div>
                                                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" placeholder="Retype Password"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                            </div>
                                        </div>--%>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="col-12 text-right">
                                        <asp:Button runat="server" CssClass="btn btn-block btn-outline-primary btn-lg" Text="Register" ID="btnNext" OnClientClick="return Validate();" OnClick="btnNext_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="card card-outline card-primary">
                                    <div class="card-header text-center">
                                        <a href="../../index2.html" class="h1">HOSPITAL DETAILS<b>  VERIFICATION</b></a>
                                    </div>
                                    <div class="card-body">
                                        <div class="form-group row">
                                            <div class="col-sm-2">
                                                <asp:TextBox ID="txtRegistrationNumber" runat="server" CssClass="form-control" placeholder="Hospital Reg. No"></asp:TextBox>
                                            </div>
                                            <div class="col-sm-2">
                                                <asp:DropDownList ID="ddltype" runat="server" CssClass="form-control">
                                                    <asp:ListItem Value="0" Selected="True">-Type of Hospital-</asp:ListItem>
                                                    <asp:ListItem Value="1">General hospital</asp:ListItem>
                                                    <asp:ListItem Value="2">Specialty hospital</asp:ListItem>
                                                    <asp:ListItem Value="3">Teaching hospital</asp:ListItem>
                                                    <asp:ListItem Value="4">Children&#39;s hospital</asp:ListItem>
                                                    <asp:ListItem Value="5">Rehabilitation hospital</asp:ListItem>
                                                    <asp:ListItem Value="6">Rural hospital</asp:ListItem>
                                                    <asp:ListItem Value="7">Community hospital</asp:ListItem>
                                                    <asp:ListItem Value="8">Academic medical center</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-sm-2">
                                                <asp:TextBox ID="txtYearsofEs" runat="server" CssClass="form-control" placeholder="Year Establish"></asp:TextBox>
                                            </div>
                                            <div class="col-sm-2">
                                                <asp:TextBox ID="txtNoofbeds" runat="server" CssClass="form-control" placeholder="No.of Beds"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Address"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-4">
                                                <asp:TextBox ID="txtWebURL" runat="server" CssClass="form-control" placeholder="Web URL(optional) ex:-www.Lanka.lk"></asp:TextBox>
                                            </div>
                                            <div class="col-sm-4">
                                                <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control" TextMode="Phone" placeholder="TelePhone No - ex: 011-"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-3">
                                                <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" placeholder="City"></asp:TextBox>
                                            </div>
                                            <div class="col-sm-3">
                                                <asp:DropDownList ID="ddlState" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="0" Selected="True">-State/Province-</asp:ListItem>
                                                    <asp:ListItem Value="Colombo">Colombo</asp:ListItem>
                                                    <asp:ListItem Value="Gampaha">Gampaha</asp:ListItem>
                                                    <asp:ListItem Value="Kalutara">Kalutara</asp:ListItem>
                                                    <asp:ListItem Value="Kandy">Kandy</asp:ListItem>
                                                    <asp:ListItem Value="Matale">Matale</asp:ListItem>
                                                    <asp:ListItem Value="Nuwara Eliya">Nuwara Eliya</asp:ListItem>
                                                    <asp:ListItem Value="Galle">Galle</asp:ListItem>
                                                    <asp:ListItem Value="Matara">Matara</asp:ListItem>
                                                    <asp:ListItem Value="Hambantota">Hambantota</asp:ListItem>
                                                    <asp:ListItem Value="Jaffna">Jaffna</asp:ListItem>
                                                    <asp:ListItem Value="Kilinochchi">Kilinochchi</asp:ListItem>
                                                    <asp:ListItem Value="Mannar">Mannar</asp:ListItem>
                                                    <asp:ListItem Value="Vavuniya">Vavuniya</asp:ListItem>
                                                    <asp:ListItem Value="Mullaitivu">Mullaitivu</asp:ListItem>
                                                    <asp:ListItem Value="Batticaloa">Batticaloa</asp:ListItem>
                                                    <asp:ListItem Value="Ampara">Ampara</asp:ListItem>
                                                    <asp:ListItem Value="Trincomalee">Trincomalee</asp:ListItem>
                                                    <asp:ListItem Value="Kurunegala">Kurunegala</asp:ListItem>
                                                    <asp:ListItem Value="Puttalam">Puttalam</asp:ListItem>
                                                    <asp:ListItem Value="Anuradhapura">Anuradhapura</asp:ListItem>
                                                    <asp:ListItem Value="Polonnaruwa">Polonnaruwa</asp:ListItem>
                                                    <asp:ListItem Value="Badulla">Badulla</asp:ListItem>
                                                    <asp:ListItem Value="Moneragala">Moneragala</asp:ListItem>
                                                    <asp:ListItem Value="Ratnapura">Ratnapura</asp:ListItem>
                                                    <asp:ListItem Value="Ratnapura">Kegalle</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-sm-3">
                                                <asp:DropDownList ID="ddlCountry" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="0" Selected="True">-Country-</asp:ListItem>
                                                    <asp:ListItem Value="Sri-Lanka">Sri-Lanka</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-sm-3">
                                                <asp:TextBox ID="txtzip" runat="server" CssClass="form-control" placeholder="Zip/Postal Code"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-5">
                                                <h4>Authorized Person Verification</h4>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-3">
                                                <div class="input-group mb-3">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-user-ninja"></span>
                                                        </div>
                                                    </div>
                                                    <asp:TextBox ID="txtContactPerson" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="input-group mb-3">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-user-nurse"></span>
                                                        </div>
                                                    </div>
                                                    <asp:TextBox ID="txtDesignation" runat="server" CssClass="form-control" placeholder="Designation"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="input-group mb-3">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <span class="fas fa-phone"></span>
                                                        </div>
                                                    </div>
                                                    <asp:TextBox ID="txtContactPersonTele" runat="server" CssClass="form-control" placeholder="Phone Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="form-group row">
                                        <%--<div class="col-4"></div>--%>
                                        <div class="col-8">
                                            <div class="icheck-primary">
                                                <asp:CheckBox ID="chkTerms" runat="server" Text='I agree to the <a href="#" onclick="showTerms(); return false;">terms</a>' />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <%--<div class="col-4 text-left">
                                            <button type="submit" id="regprev" class="btn btn-block btn-outline-warning btn-lg" href="#carouselExampleIndicators" role="button" data-slide="prev">Previous</button>
                                        </div>--%>
                                        <div class="col-12 text-right">
                                            <asp:Button runat="server" CssClass="btn btn-block bg-gradient-success btn-lg" Text="Save" ID="btnRegister" OnClick="btnRegister_Click" OnClientClick="return Validate_Save();" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="modal-terms">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Terms and Conditions</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>By registering with our hospital, you agree to the following terms and conditions:</p>

                            <p>1. You agree to provide accurate and complete information about yourself and your medical history.</p>

                            <p>2. You agree to follow the rules and regulations of the hospital, including those related to patient care, confidentiality, and safety.</p>

                            <p>3. You understand that your treatment and care will be based on your medical needs, and that the hospital reserves the right to make decisions about your treatment and care based on medical necessity.</p>

                            <p>4. You agree to pay for any services or treatments received at the hospital, either directly or through insurance.</p>

                            <p>5. You understand that the hospital may use your personal and medical information for purposes such as billing, research, and quality improvement.</p>

                            <p>6. You agree to notify the hospital of any changes to your contact or insurance information.</p>

                            <p>7. You understand that the hospital may terminate your registration or refuse to provide services if you violate these terms and conditions or fail to follow hospital rules and regulations.</p>

                            <p>By clicking the "Register" button, you acknowledge that you have read and agree to these terms and conditions.</p>

                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">

        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) { var oControl = args.get_postBackElement(); oControl.disabled = true; }

        $(document).ready(function () {
            Validate = function () {
                $('#<% = txtNameofHospital.ClientID %>').addClass('validate[required]');
                $('#<% = txtHospitalEmail.ClientID %>').addClass('validate[required,custom[email]]');
                $('#<% = txtPassword.ClientID %>').addClass('validate[required]');
                $("#mainform").validationEngine('attach', { promptPosition: "inline", scroll: false });
                var valid = $("#mainform").validationEngine('validate');
                var vars = $("#mainform").serialize();
                if (valid == true) {
                    $("#mainform").validationEngine('detach');
                } else {
                    $("#mainform").validationEngine('attach', { promptPosition: "inline", scroll: false });
                    return false;
                }
            }
        });

        (document).ready(function () {
            ValidateVerify = function () {
                $('#<% = txtNameofHospital.ClientID %>').addClass('validate[required]');
                $('#<% = txtHospitalEmail.ClientID %>').addClass('validate[required,custom[email]]');
                $("#mainform").validationEngine('attach', { promptPosition: "inline", scroll: false });
                var valid = $("#mainform").validationEngine('validate');
                var vars = $("#mainform").serialize();
                if (valid == true) {
                    $("#mainform").validationEngine('detach');
                } else {
                    $("#mainform").validationEngine('attach', { promptPosition: "inline", scroll: false });
                    return false;
                }
            }
        });

        $(document).ready(function () {
            Validate_Save = function () {
                $('#<% = txtRegistrationNumber.ClientID %>').addClass('validate[required]');
                $('#<% = ddltype.ClientID %>').addClass('validate[required]');
                $('#<% = txtYearsofEs.ClientID %>').addClass('validate[required,custom[integer]]');
                $('#<% = txtNoofbeds.ClientID %>').addClass('validate[required,custom[integer]]');
                $('#<% = txtAddress.ClientID %>').addClass('validate[required]');
                $('#<% = txtPhoneNumber.ClientID %>').addClass('validate[required,custom[phone]]');
                $('#<% = txtcity.ClientID %>').addClass('validate[required]');
                $('#<% = ddlState.ClientID %>').addClass('validate[required]');
                $('#<% = ddlCountry.ClientID %>').addClass('validate[required]');
                $('#<% = txtzip.ClientID %>').addClass('validate[required]');
                $('#<% = txtContactPerson.ClientID %>').addClass('validate[required]');
                $('#<% = txtDesignation.ClientID %>').addClass('validate[required]');
                $('#<% = txtContactPersonTele.ClientID %>').addClass('validate[required,custom[phone]]');
                $("#mainform").validationEngine('attach', { promptPosition: "inline", scroll: false });
                var valid = $("#mainform").validationEngine('validate');
                var vars = $("#mainform").serialize();
                if (valid == true) {
                    $("#mainform").validationEngine('detach');
                } else {
                    $("#mainform").validationEngine('attach', { promptPosition: "inline", scroll: false });
                    return false;
                }
            }
        });

        function showemailverify() {
            $('.modal-backdrop').remove();
            $('#modal-emailverify').modal('show');
            return false;
        };

        $(document).ready(function () {
            //var prevButton = $('.carousel-control-prev');
            //var nextButton = $('.carousel-control-next');
            //var regin = $('#regin');
            //var regorg = $('#regorg');
            var carousel = $('#carouselExampleIndicators');

            //carousel.on('slide.bs.carousel', function (e) {
            //    var activeIndex = $(e.relatedTarget).index();
            //    if (activeIndex == 0) {
            //        prevButton.hide();
            //    } else {
            //        prevButton.show();
            //    }
            //    if (activeIndex == carousel.find('.carousel-item').length - 1) {
            //        nextButton.hide();
            //    } else {
            //        nextButton.show();
            //    }
            //});

            // turn off automatic sliding
            carousel.carousel({
                interval: false
            });

            //regin.click(function () {
            //    $('.carousel-control-next').show();
            //    $('.carousel-control-prev').hide();
            //});
            //regorg.click(function () {
            //    $('.carousel-control-next').hide();
            //    $('.carousel-control-prev').show();
            //});


        });
        function showTerms() {
            $('.modal-backdrop').remove();
            $('#modal-terms').modal('show');
            return false;
        };

        function shownext() {
            $('.modal-backdrop').remove();
            $('#modal-terms').modal('show');
            return false;
        };

    </script>
</asp:Content>
