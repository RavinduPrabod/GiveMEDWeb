<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GivMED.Pages.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Loginhead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Loginbody" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <body class="hold-transition login-page">
                <div class="login-box">
                    <!-- /.login-logo -->
                    <div class="card card-outline card-primary">
                        <div class="card-header text-center">
                            <a href="../../index2.html" class="h1"><b>Donor</b> Login</a>
                        </div>
                        <div class="card-body">
                            <p class="login-box-msg">Sign in to start your session</p>
                            <div class="input-group mb-3">
                                <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                        <span class="fas fa-envelope"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="input-group mb-3">
                                <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                        <span class="fas fa-lock"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-8">
                                    <div class="icheck-primary">
                                        <input type="checkbox" checked id="remember">
                                        <label for="remember">
                                            Remember Me
                                        </label>
                                    </div>
                                </div>

                                <div class="col-4">
                                    <asp:Button ID="btnSignIn" CssClass="btn btn-primary btn-block" runat="server" Text="Sign In" OnClientClick="return Validate();" OnClick="btnSignIn_Click" />
                                </div>

                            </div>
                            <!-- /.social-auth-links -->
                            <p class="mb-0">
                                <a href="/Pages/Web/Registration/DonorRegistration.aspx" class="text-center">Register a new Donor</a><br>
                                <a href="/Pages/Web/HomePage.aspx" class="text-center" style="font-weight:bold">Back to Home</a>
                            </p>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
            </body>
        </ContentTemplate>
    </asp:UpdatePanel>
    <!-- /.login-box -->
    <script type="text/javascript">
        $(document).ready(function () {
            Validate = function () {
                $("#Loginform").validate({
                    rules: {
                        email: {
                            required: true,
                            email: true
                        },
                        password: {
                            required: true,
                            minlength: 6
                        },
                        terms: {
                            required: true
                        }
                    },
                    messages: {
                        email: {
                            required: "Please enter a email address",
                            email: "Please enter a vaild email address"
                        },
                        password: {
                            required: "Please provide a password",
                            minlength: "Your password must be at least 5 characters long"
                        },
                        terms: "Please accept our terms"
                    },
                    errorElement: 'span',
                    errorPlacement: function (error, element) {
                        error.addClass('invalid-feedback');
                        element.closest('.form-group').append(error);
                    },
                    highlight: function (element, errorClass, validClass) {
                        $(element).addClass('is-invalid');
                    },
                    unhighlight: function (element, errorClass, validClass) {
                        $(element).removeClass('is-invalid');
                    }
                });
            }
        });
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) { var oControl = args.get_postBackElement(); oControl.disabled = true; }
    </script>
</asp:Content>
