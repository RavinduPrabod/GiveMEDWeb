<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VolunteerManage.aspx.cs" Inherits="GivMED.Pages.App.Hospital.VolunteerManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:MultiView ID="mvVol" runat="server">
                <asp:View ID="View1" runat="server">
                       &nbsp
                     <asp:Button runat="server" ID="btnCreate" CssClass="btn btn-block btn-outline-primary btn-sm" Text="Add New Volunteer here" OnClick="btnCreate_Click" />
                        &nbsp
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Volunteer Maintanace</h3>
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
                            <div class="row">
                                <div class="card-body table-responsive p-0">
                                    &nbsp
                                    <asp:GridView ID="gvVol" runat="server" AutoGenerateColumns="False" CssClass="table table-striped projects table-bordered table-hover text-nowrap" AllowPaging="true" OnRowCommand="gvVol_RowCommand">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Code">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblVolID" runat="server" Text='<%# Bind("VolCode") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="2%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Join Date">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblJoinDate" runat="server" Text='<%# Bind("CreateDateTime", "{0:d}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="5%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblVolName" runat="server" Text='<%# Bind("VolName") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="10%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Tele">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblTelephone" runat="server" Text='<%# Bind("Telephone") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="5%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Skill">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSkill" runat="server" Text='<%# Enum.GetName(typeof(GivMED.Common.Enums.typeofskills), Convert.ToInt32(Eval("VolSkill")))%>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="5%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Status">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblStatus" runat="server" Text='<%# Enum.GetName(typeof(GivMED.Common.Enums.UserStatus), Convert.ToInt32(Eval("Status")))%>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="2%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="ViewButton" runat="server" CssClass="btn btn-primary btn-sm" Text="View" CommandName="View" CausesValidation="false" CommandArgument="<%# Container.DisplayIndex %>"></asp:LinkButton>
                                                    <asp:LinkButton ID="EditButton" runat="server" CssClass="btn btn-info btn-sm" Text="Edit" CommandName="EditData" CausesValidation="false" CommandArgument="<%# Container.DisplayIndex %>"></asp:LinkButton>
                                                    <asp:LinkButton ID="DeleteButton" runat="server" CssClass="btn btn-danger btn-sm" Text="Delete" OnClientClick="ShowDeleteConfirmationPop();"></asp:LinkButton>
                                                </ItemTemplate>
                                                <ItemStyle Width="2%" />
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    &nbsp
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Volunteer Maintanace</h3>
                            <div class="card-tools">
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="form-group row">
                                <label for="inputName" class="col-sm-2 col-form-label">Volunteer Name</label>
                                <div class="col-sm-8">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtVoName"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputName" class="col-sm-2 col-form-label">NIC</label>
                                <div class="col-sm-4">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtNIC"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputName" class="col-sm-2 col-form-label">Address</label>
                                <div class="col-sm-8">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtAddress" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputName" class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-4">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputName" class="col-sm-2 col-form-label">Telephone</label>
                                <div class="col-sm-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtTele"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputName" class="col-sm-2 col-form-label">Volunteer Skill</label>
                                <div class="col-sm-4">
                                    <asp:DropDownList ID="ddlSkill" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSkill_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <asp:Panel runat="server" ID="pnlvehicle">
                                <div class="form-group row">
                                    <label for="inputSkills" class="col-sm-2 col-form-label">Vehicle Category</label>
                                    <div class="col-sm-4">
                                        <asp:DropDownList ID="ddlVehicleCat" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputName" class="col-sm-2 col-form-label">Vehicle Number</label>
                                    <div class="col-sm-4">
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtVehicleNo"></asp:TextBox>
                                    </div>
                                </div>
                            </asp:Panel>
                            <div class="form-group row">
                                <label for="inputName" class="col-sm-2 col-form-label">Status</label>
                                <div class="col-sm-4">
                                    <asp:DropDownList ID="ddlStatus" CssClass="form-control" runat="server">
                                        <asp:ListItem Value="0" Selected="True">-Select-</asp:ListItem>
                                        <asp:ListItem Value="1">Active</asp:ListItem>
                                        <asp:ListItem Value="2">Inactive</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="offset-sm-2 col-sm-10">
                                    <asp:Button runat="server" CssClass="btn btn-primary" ID="btnAdd" Text="Add" OnClientClick="return Validate();" OnClick="btnAdd_Click" />
                                    <asp:Button runat="server" CssClass="btn btn-success" ID="btnSave" Text="Save" OnClientClick="return Validate();" OnClick="btnSave_Click" />
                                    <asp:Button runat="server" CssClass="btn btn-warning" ID="btnCancel" Text="Cancel" OnClick="btnCancel_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" Style="display: none" OnClick="btnDelete_Click" />
                </asp:View>
            </asp:MultiView>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">

        function pageLoad() {
            $(document).ready(function () {
                Validate = function () {
                    $('#<% = txtVoName.ClientID %>').addClass('validate[required]');
                    $('#<% = txtAddress.ClientID %>').addClass('validate[required]');
                    $('#<% = txtNIC.ClientID %>').addClass('validate[required]');
                    $('#<% = txtTele.ClientID %>').addClass('validate[required]');
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

        function ShowDeleteConfirmation() {
            Swal.fire({
                title: 'Delete Confirmation',
                text: 'Are you sure you want to delete this record?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#d33',
                cancelButtonColor: '#3085d6',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    // The user confirmed the delete action
                    // Trigger the delete button click event
                    jQuery("[ID$=btnDelete]").click();
                } else {
                    // The user cancelled the delete action
                    Swal.fire(
                        'Cancelled',
                        'Your record is safe :)',
                        'info'
                    );
                }
            });
        }

        function ShowDeleteConfirmationPop() {
            alertify.confirm("Are you sure you want to delete this record?", function (e) {
                if (e) {
                    jQuery("[ID$=btnDelete]").click();
                } else {
                    alertify.error("OK!");
                }
            }).setHeader('<h3> Delete Confirmation </h3> ');;
            return flag;
        };
    </script>
</asp:Content>
