#region Copyright

// 
// Copyright (c) 2015
// by rrathman
// 

#endregion

#region Using Statements

using System;
using DotNetNuke.Entities.Modules;

#endregion

namespace rrathman.Ex2gTest1
{

	public partial class ex2gTest1View : PortalModuleBase
	{

		#region Event Handlers

		protected override void OnInit(EventArgs e)
		{
			base.OnInit(e);

			cmdSave.Click += cmdSave_Click;
			cmdCancel.Click += cmdCancel_Click;
		}

		protected override void OnLoad(EventArgs e)
		{
			base.OnLoad(e);
			
			if (!Page.IsPostBack)
			{
                             txtFirstName.Text = (string)Settings["field"];
			}
		}
		
		protected void cmdSave_Click(object sender, EventArgs e)
		{
            ModuleController.Instance.UpdateModuleSetting(ModuleId, "field", txtFirstName.Text);
            DotNetNuke.UI.Skins.Skin.AddModuleMessage(this, "Update Successful", DotNetNuke.UI.Skins.Controls.ModuleMessage.ModuleMessageType.GreenSuccess);
		}


		protected void cmdCancel_Click(object sender, EventArgs e)
		{
		}

		#endregion

        protected void btnMessage_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "This is your info: " + txtFirstName.Text + ", " + txtLastName.Text + ", "
                + txtAddress.Text + ", " + txtCity.Text + ", " + txtState.Text + ", " + txtZipCode.Text + ", " + txtPhone.Text;
            txtFirstName.Text = String.Empty;
            txtLastName.Text = String.Empty;
            txtAddress.Text = "";
            txtCity.Text = "";
            txtState.Text = "";
            txtZipCode.Text = "";
            txtPhone.Text = "";
         }
}
}

