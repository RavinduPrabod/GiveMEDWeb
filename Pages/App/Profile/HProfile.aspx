<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HProfile.aspx.cs" Inherits="GivMED.Pages.App.Profile.HProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-12">
                    <!-- Profile Image -->
                    <div class="card card-primary card-outline">
                        <div class="card-body box-profile">
                            <h3 class="profile-username text-center">
                                <asp:Label runat="server" ID="lblPdName" Text="Name" Font-Bold="true"></asp:Label></h3>
                            <p class="text-muted text-center">
                                <asp:Label runat="server" ID="lblPdSubName" Text="SubName"></asp:Label>
                            </p>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                    <!-- About Me Box -->
                </div>
            </div>
            <!-- /.col -->
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header p-2">
                            <ul class="nav nav-pills">
                                <li class="nav-item"><a class="nav-link" href="#settings" data-toggle="tab">Settings</a></li>
                                <li class="nav-item"><a class="nav-link" href="#changepwd" data-toggle="tab">Security</a></li>
                            </ul>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="tab-content">
                                <div class="tab-pane" id="settings">
                                    <form class="form-horizontal">
                                        <div class="form-group row">
                                            <label for="inputName" class="col-sm-2 col-form-label">User Name</label>
                                            <div class="col-sm-10">
                                                <asp:Label runat="server" ID="lblUsername"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputName" class="col-sm-2 col-form-label"></label>
                                            <label for="inputName" class="col-sm-3 col-form-label"></label>
                                            <label for="inputName" class="col-sm-1 col-form-label">Establish Year</label>
                                            <label for="inputName" class="col-sm-4 col-form-label"></label>
                                            <label for="inputName" class="col-sm-2 col-form-label">No.of Beds</label>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputName" class="col-sm-2 col-form-label">Hospital RegNo</label>
                                            <div class="col-sm-3">
                                                <asp:TextBox runat="server" CssClass="form-control" ID="txtHRegNo"></asp:TextBox>
                                            </div>
                                            <div class="col-sm-1">
                                                <asp:TextBox runat="server" CssClass="form-control" ID="txtYear"></asp:TextBox>
                                            </div>
                                            <div class="col-sm-4">
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
                                                <asp:TextBox runat="server" CssClass="form-control" ID="txtNoofBeds"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputName2" class="col-sm-2 col-form-label">Telephone</label>
                                            <div class="col-sm-3">
                                                <asp:TextBox runat="server" CssClass="form-control" ID="txtTelephone"></asp:TextBox>
                                            </div>
                                             <div class="col-sm-3">
                                                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" placeholder="Email" TextMode="Email"></asp:TextBox>
                                            </div>
                                            <div class="col-sm-4">
                                                <asp:TextBox runat="server" CssClass="form-control" ID="txtURL" placeholder="Web URL"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputEmail" class="col-sm-2 col-form-label">Address</label>
                                            <div class="col-sm-6">
                                                <asp:TextBox runat="server" CssClass="form-control" ID="txtAddress" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputExperience" class="col-sm-2 col-form-label">City</label>
                                            <div class="col-sm-3">
                                                <asp:TextBox runat="server" CssClass="form-control" ID="txtCity"></asp:TextBox>
                                            </div>
                                            <label for="inputExperience" class="col-sm-1 col-form-label"></label>
                                            <label for="inputSkills" class="col-sm-1 col-form-label">State</label>
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
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputSkills" class="col-sm-2 col-form-label">Country</label>
                                            <div class="col-sm-3">
                                                <asp:DropDownList ID="ddlCountry" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="0" Selected="True">-Country-</asp:ListItem>
                                                    <asp:ListItem Value="Sri-Lanka">Sri-Lanka</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <label for="inputExperience" class="col-sm-1 col-form-label"></label>
                                            <label for="inputSkills" class="col-sm-1 col-form-label">Postal Code</label>
                                            <div class="col-sm-3">
                                                <asp:TextBox runat="server" CssClass="form-control" ID="txtZipCode"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputSkills" class="col-sm-2 col-form-label"></label>
                                            <label for="inputSkills" class="col-sm-6 col-form-label">Authorized Person Verification</label>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputSkills" class="col-sm-2 col-form-label">Name</label>
                                            <div class="col-sm-3">
                                                <asp:TextBox runat="server" CssClass="form-control" ID="txtAuthName"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputSkills" class="col-sm-2 col-form-label">Designation</label>
                                            <div class="col-sm-3">
                                                <asp:TextBox runat="server" CssClass="form-control" ID="txtDesignation"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputName" class="col-sm-2 col-form-label">Phone Number</label>
                                            <div class="col-sm-3">
                                                <asp:TextBox runat="server" CssClass="form-control" ID="txtphoneNo"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-2">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="offset-sm-2 col-sm-10">
                                                <asp:Button runat="server" CssClass="btn btn-success" ID="btnSave" Text="Save" OnClientClick="return Validate();" OnClick="btnSave_Click" />
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="tab-pane" id="changepwd">
                                    <div class="form-group row">
                                        <label for="inputName" class="col-sm-3 col-form-label">Email</label>
                                        <div class="col-sm-4">
                                            <asp:TextBox runat="server" CssClass="form-control" ID="txtSecEmail" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputName" class="col-sm-3 col-form-label">Current Password</label>
                                        <div class="col-sm-4">
                                            <asp:TextBox runat="server" CssClass="form-control" ID="txtCurPwd" AutoPostBack="true" OnTextChanged="txtCurPwd_TextChanged" AutoCompleteType="Disabled"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputName" class="col-sm-3 col-form-label">New Password</label>
                                        <div class="col-sm-4">
                                            <asp:TextBox runat="server" CssClass="form-control" ID="txtNewPwd" placeholder="Enter New Password" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputName" class="col-sm-3 col-form-label">Confirm New Password</label>
                                        <div class="col-sm-4">
                                            <asp:TextBox runat="server" CssClass="form-control" ID="txtReNewPwd" placeholder="Re Enter New Password" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputName" class="col-sm-3 col-form-label"></label>
                                        <div class="col-sm-4">
                                            <asp:Button ID="btnUpdateSec" runat="server" Text="Change Password" CssClass="btn btn-primary" OnClientClick="return Validate2();" OnClick="btnUpdateSec_Click" />
                                        </div>
                                    </div>
                                </div>
                                <!-- /.tab-pane -->
                            </div>
                            <!-- /.tab-content -->
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">

        $(document).ready(function () {
            Validate = function () {
                $('#<% = txtHRegNo.ClientID %>').addClass('validate[required]');
                $('#<% = txtYear.ClientID %>').addClass('validate[required]');
                $('#<% = txtNoofBeds.ClientID %>').addClass('validate[required]');
                $('#<% = txtAddress.ClientID %>').addClass('validate[required]');
                $('#<% = txtTelephone.ClientID %>').addClass('validate[required]');
                $('#<% = txtCity.ClientID %>').addClass('validate[required]');
                $('#<% = txtZipCode.ClientID %>').addClass('validate[required]');
                $('#<% = txtAuthName.ClientID %>').addClass('validate[required]');
                $('#<% = txtphoneNo.ClientID %>').addClass('validate[required]');
                $('#<% = txtDesignation.ClientID %>').addClass('validate[required]');
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

        $(document).ready(function () {
            Validate2 = function () {
                $('#<% = txtCurPwd.ClientID %>').addClass('validate[required]');
<%--                $('#<% = txtNewPwd.ClientID %>').addClass('validate[required]');
                $('#<% = txtReNewPwd.ClientID %>').addClass('validate[required]');--%>

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

        function hideShowTabs() {
            $('.nav-tabs a[href="#settings"]').hide();
            $('.tab-pane#settings').removeClass('active');
            $('.nav-tabs a[href="#changepwd"]').tab('show');
            $('.tab-pane#changepwd').addClass('active');
        }
    </script>
</asp:Content>

