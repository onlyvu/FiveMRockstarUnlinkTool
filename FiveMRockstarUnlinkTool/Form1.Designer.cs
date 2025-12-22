namespace FiveMRockstarUnlinkTool
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.panelMain = new System.Windows.Forms.Panel();
            this.panelCard = new System.Windows.Forms.Panel();
            this.labelStatus = new System.Windows.Forms.Label();
            this.btnUnlink = new System.Windows.Forms.Button();
            this.panelDivider = new System.Windows.Forms.Panel();
            this.labelSubtitle = new System.Windows.Forms.Label();
            this.labelTitle = new System.Windows.Forms.Label();
            this.panelIconBackground = new System.Windows.Forms.Panel();
            this.labelIcon = new System.Windows.Forms.Label();
            this.panelFooter = new System.Windows.Forms.Panel();
            this.labelVersion = new System.Windows.Forms.Label();
            this.labelAuthor = new System.Windows.Forms.Label();
            this.panelMain.SuspendLayout();
            this.panelCard.SuspendLayout();
            this.panelIconBackground.SuspendLayout();
            this.panelFooter.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelMain
            // 
            this.panelMain.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(15)))), ((int)(((byte)(15)))), ((int)(((byte)(20)))));
            this.panelMain.Controls.Add(this.panelCard);
            this.panelMain.Controls.Add(this.panelFooter);
            this.panelMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelMain.Location = new System.Drawing.Point(0, 0);
            this.panelMain.Name = "panelMain";
            this.panelMain.Padding = new System.Windows.Forms.Padding(25, 30, 25, 15);
            this.panelMain.Size = new System.Drawing.Size(600, 450);
            this.panelMain.TabIndex = 0;
            // 
            // panelCard
            // 
            this.panelCard.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(25)))), ((int)(((byte)(25)))), ((int)(((byte)(35)))));
            this.panelCard.Controls.Add(this.labelStatus);
            this.panelCard.Controls.Add(this.btnUnlink);
            this.panelCard.Controls.Add(this.panelDivider);
            this.panelCard.Controls.Add(this.labelSubtitle);
            this.panelCard.Controls.Add(this.labelTitle);
            this.panelCard.Controls.Add(this.panelIconBackground);
            this.panelCard.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelCard.Location = new System.Drawing.Point(25, 30);
            this.panelCard.Name = "panelCard";
            this.panelCard.Size = new System.Drawing.Size(550, 370);
            this.panelCard.TabIndex = 0;
            // 
            // labelStatus
            // 
            this.labelStatus.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelStatus.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(210)))), ((int)(((byte)(255)))));
            this.labelStatus.Location = new System.Drawing.Point(50, 320);
            this.labelStatus.Name = "labelStatus";
            this.labelStatus.Size = new System.Drawing.Size(450, 25);
            this.labelStatus.TabIndex = 5;
            this.labelStatus.Text = "● READY";
            this.labelStatus.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btnUnlink
            // 
            this.btnUnlink.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(180)))), ((int)(((byte)(255)))));
            this.btnUnlink.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnUnlink.FlatAppearance.BorderSize = 0;
            this.btnUnlink.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnUnlink.Font = new System.Drawing.Font("Segoe UI Semibold", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnUnlink.ForeColor = System.Drawing.Color.White;
            this.btnUnlink.Location = new System.Drawing.Point(125, 250);
            this.btnUnlink.Name = "btnUnlink";
            this.btnUnlink.Size = new System.Drawing.Size(300, 50);
            this.btnUnlink.TabIndex = 4;
            this.btnUnlink.Text = "🔓 XÓA LIÊN KẾT ROCKSTAR";
            this.btnUnlink.UseVisualStyleBackColor = false;
            this.btnUnlink.Click += new System.EventHandler(this.btnUnlink_Click);
            this.btnUnlink.MouseEnter += new System.EventHandler(this.btnUnlink_MouseEnter);
            this.btnUnlink.MouseLeave += new System.EventHandler(this.btnUnlink_MouseLeave);
            // 
            // panelDivider
            // 
            this.panelDivider.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(180)))), ((int)(((byte)(255)))));
            this.panelDivider.Location = new System.Drawing.Point(175, 210);
            this.panelDivider.Name = "panelDivider";
            this.panelDivider.Size = new System.Drawing.Size(200, 2);
            this.panelDivider.TabIndex = 3;
            // 
            // labelSubtitle
            // 
            this.labelSubtitle.Font = new System.Drawing.Font("Segoe UI", 9.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelSubtitle.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(150)))), ((int)(((byte)(150)))), ((int)(((byte)(160)))));
            this.labelSubtitle.Location = new System.Drawing.Point(50, 175);
            this.labelSubtitle.Name = "labelSubtitle";
            this.labelSubtitle.Size = new System.Drawing.Size(450, 25);
            this.labelSubtitle.TabIndex = 2;
            this.labelSubtitle.Text = "Remove Rockstar Games account link from FiveM";
            this.labelSubtitle.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // labelTitle
            // 
            this.labelTitle.Font = new System.Drawing.Font("Segoe UI", 20F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelTitle.ForeColor = System.Drawing.Color.White;
            this.labelTitle.Location = new System.Drawing.Point(50, 135);
            this.labelTitle.Name = "labelTitle";
            this.labelTitle.Size = new System.Drawing.Size(450, 40);
            this.labelTitle.TabIndex = 1;
            this.labelTitle.Text = "ROCKSTAR UNLINK";
            this.labelTitle.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // panelIconBackground
            // 
            this.panelIconBackground.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(180)))), ((int)(((byte)(255)))));
            this.panelIconBackground.Controls.Add(this.labelIcon);
            this.panelIconBackground.Location = new System.Drawing.Point(235, 35);
            this.panelIconBackground.Name = "panelIconBackground";
            this.panelIconBackground.Size = new System.Drawing.Size(80, 80);
            this.panelIconBackground.TabIndex = 0;
            // 
            // labelIcon
            // 
            this.labelIcon.Dock = System.Windows.Forms.DockStyle.Fill;
            this.labelIcon.Font = new System.Drawing.Font("Segoe UI", 36F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelIcon.ForeColor = System.Drawing.Color.White;
            this.labelIcon.Location = new System.Drawing.Point(0, 0);
            this.labelIcon.Name = "labelIcon";
            this.labelIcon.Size = new System.Drawing.Size(80, 80);
            this.labelIcon.TabIndex = 0;
            this.labelIcon.Text = "R★";
            this.labelIcon.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // panelFooter
            // 
            this.panelFooter.Controls.Add(this.labelVersion);
            this.panelFooter.Controls.Add(this.labelAuthor);
            this.panelFooter.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelFooter.Location = new System.Drawing.Point(25, 400);
            this.panelFooter.Name = "panelFooter";
            this.panelFooter.Size = new System.Drawing.Size(550, 35);
            this.panelFooter.TabIndex = 1;
            // 
            // labelVersion
            // 
            this.labelVersion.Dock = System.Windows.Forms.DockStyle.Right;
            this.labelVersion.Font = new System.Drawing.Font("Segoe UI", 8.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelVersion.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(100)))), ((int)(((byte)(110)))));
            this.labelVersion.Location = new System.Drawing.Point(450, 0);
            this.labelVersion.Name = "labelVersion";
            this.labelVersion.Size = new System.Drawing.Size(100, 35);
            this.labelVersion.TabIndex = 1;
            this.labelVersion.Text = "v1.0.0";
            this.labelVersion.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // labelAuthor
            // 
            this.labelAuthor.Dock = System.Windows.Forms.DockStyle.Left;
            this.labelAuthor.Font = new System.Drawing.Font("Segoe UI", 8.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelAuthor.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(100)))), ((int)(((byte)(110)))));
            this.labelAuthor.Location = new System.Drawing.Point(0, 0);
            this.labelAuthor.Name = "labelAuthor";
            this.labelAuthor.Size = new System.Drawing.Size(200, 35);
            this.labelAuthor.TabIndex = 0;
            this.labelAuthor.Text = "© 2025 Mr. Vũ";
            this.labelAuthor.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(15)))), ((int)(((byte)(15)))), ((int)(((byte)(20)))));
            this.ClientSize = new System.Drawing.Size(600, 450);
            this.Controls.Add(this.panelMain);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FiveM Rockstar Unlink Tool - By Mr. Vũ";
            this.panelMain.ResumeLayout(false);
            this.panelCard.ResumeLayout(false);
            this.panelIconBackground.ResumeLayout(false);
            this.panelFooter.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelMain;
        private System.Windows.Forms.Panel panelCard;
        private System.Windows.Forms.Panel panelIconBackground;
        private System.Windows.Forms.Label labelIcon;
        private System.Windows.Forms.Label labelTitle;
        private System.Windows.Forms.Label labelSubtitle;
        private System.Windows.Forms.Panel panelDivider;
        private System.Windows.Forms.Button btnUnlink;
        private System.Windows.Forms.Label labelStatus;
        private System.Windows.Forms.Panel panelFooter;
        private System.Windows.Forms.Label labelAuthor;
        private System.Windows.Forms.Label labelVersion;
    }
}

