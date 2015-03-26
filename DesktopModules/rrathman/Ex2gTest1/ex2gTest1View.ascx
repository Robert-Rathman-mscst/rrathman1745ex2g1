<%@ Control Language="C#" AutoEventWireup="false" Inherits="rrathman.Ex2gTest1.ex2gTest1View" CodeFile="ex2gTest1View.ascx.cs" %>

<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>

<div class="dnnForm dnnEdit dnnClear" id="dnnEdit">

    <fieldset>

        <div class="dnnFormItem">
            <dnn:label id="plField" runat="server" text="First Name: " helptext="Enter your first name." controlname="txtFirstName" Visible="false" />
            <asp:textbox id="txtBox" runat="server" maxlength="255" Visible="false" />
        </div>

        <div class="dnnFormItem">
            <dnn:label id="Label7" runat="server" text="First Name: " helptext="Enter your first name." controlname="txtFirstName" />
            <asp:textbox id="txtFirstName" runat="server" maxlength="255" />
        </div>

        <div class="dnnFormItem">
            <dnn:label id="Label1" runat="server" text="Last Name:" helptext="Enter your last name." controlname="txtLastName" />
            <asp:textbox id="txtLastName" runat="server" maxlength="255" />
        </div>

        <div class="dnnFormItem">
            <dnn:label id="Label2" runat="server" text="Address:" helptext="Enter your address." controlname="txtAddress" />
            <asp:textbox id="txtAddress" runat="server" maxlength="255" />
        </div>

        <div class="dnnFormItem">
            <dnn:label id="Label3" runat="server" text="City:" helptext="Enter your city." controlname="txtCity" />
            <asp:textbox id="txtCity" runat="server" maxlength="255" />
        </div>

        <div class="dnnFormItem">
            <dnn:label id="Label4" runat="server" text="State:" helptext="Enter your state." controlname="txtState" />
            <asp:textbox id="txtState" runat="server" maxlength="255" />
        </div>

        <div class="dnnFormItem">
            <dnn:label id="Label5" runat="server" text="Zip Code:" helptext="Enter your zip code." controlname="txtZipCode" />
            <asp:textbox id="txtZipCode" runat="server" maxlength="255" />
        </div>

        <div class="dnnFormItem">
            <dnn:label id="Label6" runat="server" text="Phone:" helptext="Enter your first name." controlname="txtPhone" />
            <asp:textbox id="txtPhone" runat="server" maxlength="255" />
        </div>

        <div class="dnnFormItem">
            <asp:Button ID="btnMessage" runat="server" Text="Display Message" OnClick="btnMessage_Click" />
            <dnn:label id="lblMessage" runat="server" text="" />
            
        </div>


   </fieldset>

    <ul class="dnnActions dnnClear">

        <li><asp:linkbutton id="cmdSave" text="Save" runat="server" cssclass="dnnPrimaryAction" /></li>

        <li><asp:linkbutton id="cmdCancel" text="Cancel" runat="server" cssclass="dnnSecondaryAction" /></li>

    </ul>

</div>


