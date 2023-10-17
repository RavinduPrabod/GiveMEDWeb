<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SupplyNeeds.aspx.cs" Inherits="GivMED.Pages.App.Hospital.SupplyNeeds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:MultiView ID="mvSupply" runat="server">
                <asp:View ID="View1" runat="server">
                    &nbsp
                    <div class="row">
                        <div class="col-12">
                            <asp:Button runat="server" ID="btnCreate" CssClass="btn btn-block btn-outline-primary btn-md" Text="Create New publish here" OnClick="btnCreate_Click" />
                            &nbsp
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">Supplies Needs Publications</h3>
                                    <div class="card-tools">
                                        <div class="input-group input-group-sm" style="width: 300px;">
                                            <asp:TextBox runat="server" CssClass="form-control float-right" ID="txtSearchList" placeholder="Search" TextMode="Search"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-lg btn-default" Text="Search" OnClick="btnSearch_Click" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- ./card-header -->
                                <div class="card-body table-responsive p-0">
                                    <asp:GridView ID="gvSupplyNeeds" runat="server" AutoGenerateColumns="False" CssClass="table table-striped projects table-bordered table-hover text-nowrap" AllowPaging="true" PageSize="10" OnRowDataBound="gvSupplyNeeds_RowDataBound" OnRowCommand="gvSupplyNeeds_RowCommand" OnPageIndexChanging="gvSupplyNeeds_PageIndexChanging">
                                        <Columns>
                                            <asp:TemplateField HeaderText="# Code">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSupplyID" runat="server" Text='<%# Bind("SupplyID") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="2%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Last Publish Date">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSupplyCreateDate" runat="server" Text='<%# Bind("SupplyCreateDate", "{0:d}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="10%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Expire Date">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSupplyExpireDate" runat="server" Text='<%# Bind("SupplyExpireDate", "{0:d}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="10%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Priority Level">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSupplyPriorityLevel" runat="server"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="10%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Status">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSupplyStatus" runat="server"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="8%" />
                                            </asp:TemplateField>
                                            <%--                                            <asp:TemplateField HeaderText="Progress" ItemStyle-CssClass="project_progress">
                                                <ItemTemplate>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-green" role="progressbar"
                                                            aria-valuemin="0" aria-valuemax="100"
                                                            style='<%# "width:" + Eval("Proceprecent") + "%;" %>'>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                                <ItemStyle Width="10%" />
                                            </asp:TemplateField>--%>
                                            <%--                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                   <span class="badge bg-danger"><%# Eval("Proceprecent") + "%" %></span>
                                                </ItemTemplate>
                                                <ItemStyle Width="2%" />
                                            </asp:TemplateField>--%>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <div class="project-actions text-center">
                                                        <asp:LinkButton CssClass="btn btn-danger btn-sm" runat="server" Text="View" CausesValidation="false" CommandName="ViewData" CommandArgument="<%# Container.DisplayIndex %>">
                                                            <i class="fas fa-list"></i>
                                                        </asp:LinkButton>
                                                        <asp:LinkButton ID="btnEdit" CssClass="btn btn-info btn-xs" runat="server" Text="Edit" CausesValidation="false" CommandName="EditData" CommandArgument="<%# Container.DisplayIndex %>">
                                                            <i class="fas fa-pencil-alt fa-xs"></i>
                                                        </asp:LinkButton>
                                                        <asp:LinkButton ID="btnDelete" CssClass="btn btn-danger btn-xs" runat="server" Text="Delete" CausesValidation="false" CommandName="DeleteData" CommandArgument="<%# Container.DisplayIndex %>">
                                                            <i class="fas fa-trash"></i>
                                                        </asp:LinkButton>
                                                    </div>
                                                </ItemTemplate>
                                                <ItemStyle Width="10%" />
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                    </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    &nbsp
                    <div class="card card-info">
                        <div class="card-header">
                            <h3 class="card-title">Supplies Needs Publications Form</h3>
                        </div>
                        <div class="card-body">
                            <div class="modal fade" id="modal-Show">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title">Manage template</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-12">
                                                    &nbsp
                                            <asp:TextBox ID="txtEditor" runat="server" CssClass="form-control" MaxLength="1000" TabIndex="2" TextMode="MultiLine" Height="400px" placeholder="Write here.."></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <asp:Button CssClass="btn btn-block bg-gradient-primary btn-lg" ID="btnAddtemp" runat="server" Text="Add" OnClick="btnAddtemp_Click" />
                                            <asp:Button CssClass="btn btn-block bg-gradient-primary btn-lg" ID="btnSaveTemp" runat="server" Text="Save" OnClick="btnSaveTemp_Click" />
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h3 class="card-title">Select your <b>Prority Level</b></h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <asp:CheckBox runat="server" ID="chkHigh" CssClass="icheck-danger" Text="High" AutoPostBack="true" />
                                                </div>
                                                <div class="col-sm-4">
                                                    <asp:CheckBox runat="server" ID="chkNormal" CssClass="icheck-primary" Text="Normal" AutoPostBack="true" />
                                                </div>
                                                <div class="col-sm-4">
                                                    <asp:CheckBox runat="server" ID="chkLow" CssClass="icheck-success" Text="Low" AutoPostBack="true" />
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h3 class="card-title">Manage template</b></h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <asp:LinkButton ID="btnNewTemp" runat="server" CssClass="btn btn-app" OnClick="btnNewTemp_Click" ToolTip="Can create only 5 templates">
                                                        <i class="fas fa-plus"></i> New
                                                    </asp:LinkButton>
                                                </div>
                                                <div class="col-sm-3">
                                                    <asp:LinkButton ID="btnEditTemp" runat="server" CssClass="btn btn-app" OnClick="btnEditTemp_Click">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </asp:LinkButton>
                                                </div>
                                                <div class="col-sm-6">
                                                    <asp:DropDownList ID="ddlTemplates" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlTemplates_SelectedIndexChanged" />
                                                </div>
                                            </div>
                                            <div class="row">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h3 class="card-title">Supply <b>List</b></h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-7"></div>
                                                <div class="col-5">
                                                    <label for="inputName" class="col-sm-12 col-form-label">Supply Category</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-7">
                                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtSearch" placeholder="search" TextMode="Search" OnTextChanged="txtSearch_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                </div>
                                                <div class="col-5">
                                                    <asp:DropDownList ID="ddlSupplyType" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlSupplyType_SelectedIndexChanged" AutoPostBack="true" />
                                                </div>
                                            </div>
                                            <div class="row">
                                                &nbsp
                                            </div>
                                            <div class="row">
                                                <div class="col-5">
                                                    <asp:ListBox ID="lstItem" runat="server" CssClass="list-group" TabIndex="3" Height="300px" Width="100%"></asp:ListBox>
                                                </div>
                                                <div class="col-2">
                                                    <div style="margin-top: 35px">
                                                        <asp:Button ID="btnMove" runat="server" CssClass="btn btn-primary" TabIndex="4" Text="&gt;" Width="100%" OnClick="btnMove_Click" />
                                                        <br />
                                                        <br />
                                                        <asp:Button ID="btnMoveAll" runat="server" CssClass="btn btn-primary" TabIndex="5" Text="&gt;&gt;" Width="100%" OnClick="btnMoveAll_Click" />
                                                        <br />
                                                        <br />
                                                        <asp:Button ID="btnRemove" runat="server" CssClass="btn btn-primary" TabIndex="6" Text="&lt;" Width="100%" OnClick="btnRemove_Click" />
                                                        <br />
                                                        <br />
                                                        <asp:Button ID="btnRemoveAll" runat="server" CssClass="btn btn-primary" TabIndex="7" Text="&lt;&lt;" Width="100%" OnClick="btnRemoveAll_Click" />
                                                    </div>
                                                </div>
                                                <div class="col-5">
                                                    <asp:ListBox ID="lstSelection" runat="server" CssClass="list-group" TabIndex="8" Height="300px" Width="100%"></asp:ListBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-4">
                                    <asp:TextBox ID="txtExpireDate" runat="server" autocomplete="off" CssClass="form-control" TabIndex="1" placeholder="Enter Closing Date"></asp:TextBox>
                                </div>
                                <div class="col-4" style="text-align: left">
                                </div>
                                <div class="col-2">
                                </div>
                                <div class="col-2" style="text-align: right">
                                    <asp:Button ID="btnAddtoList" runat="server" Text="Add to list" CssClass="btn btn-block bg-gradient-primary" OnClick="btnAddtoList_Click" OnClientClick="return Validatecheck();" />
                                </div>
                            </div>
                            <div class="row">
                                &nbsp
                            </div>
                            <div class="row">
                                <div class="card-body table-responsive p-0" style="height: 300px;">
                                    <asp:GridView ID="gvSupplyList" runat="server" class="table table-striped table-bordered table-hover" AutoGenerateColumns="False" OnRowCommand="gvSupplyList_RowCommand">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Item Cat ID">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSupplyItemCat" runat="server" Text='<%# Bind("SupplyItemCat") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="10%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Code">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSupplyItemID" runat="server" Text='<%# Bind("SupplyItemID") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="10%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Item Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSupplyItemName" runat="server" Text='<%# Bind("SupplyItemName") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="84%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Quanity">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" CssClass="form-text" ID="txtQty" AutoPostBack="true" Text='<%# Bind("SupplyItemQty") %>' onkeydown="return ((event.keyCode>=48 && event.keyCode<=57) || (event.keyCode>=96 && event.keyCode<=105) || (event.keyCode==8 || event.keyCode==9));"></asp:TextBox>
                                                </ItemTemplate>
                                                <ItemStyle Width="5%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="imgbtnDelete" runat="server" CausesValidation="false" CommandName="DeleteData"
                                                        ImageUrl="../../../dist/img/deleteb.png" Text="X" CommandArgument="<%# Container.DisplayIndex %>" ImageAlign="AbsMiddle" />
                                                </ItemTemplate>
                                                <ItemStyle Width="0.5%" HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                            <div class="row">
                                <asp:Button ID="btnPublish" runat="server" Text="Publish" CssClass="btn btn-block bg-gradient-success" OnClientClick="return Validate();" OnClick="btnPublish_Click" />
                                <asp:Button ID="btnRePublish" runat="server" Text="Re-Publish" CssClass="btn btn-block bg-gradient-warning" OnClientClick="return Validate();" OnClick="btnRePublish_Click" />

                            </div>
                        </div>
                    </div>
                    <asp:Button ID="btnCancel" runat="server" Text="Delete" Style="display: none" OnClick="btnCancel_Click" />
                </asp:View>
            </asp:MultiView>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">
        function ShowDeleteConfirmationPop() {
            alertify.confirm("Are you sure you want to Cancel this Supply?", function (e) {
                if (e) {
                    jQuery("[ID$=btnCancel]").click();
                } else {
                    alertify.error("OK!");
                }
            }).setHeader('<h3> Supply Cancel Confirmation </h3>');
        };

        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) { var oControl = args.get_postBackElement(); oControl.disabled = true; }

        function ShowDetails() {
            $('.modal-backdrop').remove();
            $('#modal-Show').modal('show');
            return false;
        };

        function ShowDetailshide() {
            $('.modal-backdrop').remove();
            $('body').removeClass('modal-open');
            $('#modal-Show').modal('hide');
            return false;
        };

        function ShowSupplyPublishID(id) {
            Swal.fire({
                title: '<h3>Supply Need successfully published</h3>',
                html: 'Supply Need ID : ' + id,
                icon: 'success',
                confirmButtonText: 'OK'
            }).then((result) => {
                // No action needed after OK button is clicked
            });
        }

        function pageLoad() {
            $(document).ready(function () {
                Validate = function () {
                    $('#<% = txtExpireDate.ClientID %>').addClass('validate[required]');
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

            $("[id$=txtExpireDate]").datepicker({
                dateFormat: 'yy/mm/dd',
                autoclose: true,
                changeMonth: true,
                todayHighlight: true,
                changeYear: false

            });

            const checkboxes = document.querySelectorAll('input[type="checkbox"]');

            checkboxes.forEach((checkbox) => {
                checkbox.addEventListener('change', () => {
                    if (checkbox.checked) {
                        checkboxes.forEach((otherCheckbox) => {
                            if (otherCheckbox !== checkbox) {
                                otherCheckbox.checked = false;
                            }
                        });
                    }
                });
            });

            $(function () {
                // Toggle expandable content
                $('.expandable-trigger').click(function (e) {
                    e.preventDefault();
                    var $content = $(this).siblings('.expandable-content');
                    $content.slideToggle();
                    $(this).text(function () {
                        return $content.is(':visible') ? 'Hide Reason' : 'Show Reason';
                    });
                });
            });

            $(document).ready(function () {
                $('#table_search').keyup(function () {
                    var searchValue = $(this).val().toLowerCase();
                    $('#gvSupplyNeeds tbody tr').filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(searchValue) > -1);
                    });
                });
            });

            $(document).ready(function () {
                // Initialize Summernote editor
                $('#<%= txtEditor.ClientID %>').summernote({
                    height: 300, // Set desired height
                    toolbar: [
                        // Customize toolbar buttons if needed
                        ['style', ['style']],
                        ['font', ['bold', 'italic', 'underline', 'clear']],
                        ['para', ['ul', 'ol']]
                    ]
                });
            });
        }

        function Validatecheck() {
            var chkHigh = $('#<%= chkHigh.ClientID %>');
            var chkLow = $('#<%= chkLow.ClientID %>');
            var chkNormal = $('#<%= chkNormal.ClientID %>');

            // Add validation class only to unchecked checkboxes
            if (!chkHigh.is(':checked') && !chkLow.is(':checked') && !chkNormal.is(':checked')) {
                chkHigh.addClass('validate[required,custom[minCheckbox]]');
                chkLow.addClass('validate[required,custom[minCheckbox]]');
                chkNormal.addClass('validate[required,custom[minCheckbox]]');
            }

            var valid = $("#form1").validationEngine('validate');

            // Hide validation when a checkbox is checked
            chkHigh.change(function () {
                if (chkHigh.is(':checked')) {
                    chkLow.validationEngine('hide');
                    chkNormal.validationEngine('hide');
                }
            });

            chkLow.change(function () {
                if (chkLow.is(':checked')) {
                    chkHigh.validationEngine('hide');
                    chkNormal.validationEngine('hide');
                }
            });

            chkNormal.change(function () {
                if (chkNormal.is(':checked')) {
                    chkHigh.validationEngine('hide');
                    chkLow.validationEngine('hide');
                }
            });

            if (valid) {
                $("#form1").validationEngine('detach');
            } else {
                $("#form1").validationEngine('attach', { promptPosition: "inline", scroll: false });
            }

            return valid;
        }

    </script>
</asp:Content>
