using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace FiveMRockstarUnlinkTool
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnUnlink_Click(object sender, EventArgs e)
        {
            try
            {
                labelStatus.Text = "● PROCESSING...";
                labelStatus.ForeColor = Color.FromArgb(255, 200, 50);
                Application.DoEvents();

                string localAppData = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
                string digitalEntitlementsPath = Path.Combine(localAppData, "DigitalEntitlements");

                if (Directory.Exists(digitalEntitlementsPath))
                {
                    Directory.Delete(digitalEntitlementsPath, true);
                    
                    labelStatus.Text = "● SUCCESS";
                    labelStatus.ForeColor = Color.FromArgb(50, 255, 150);
                    
                    MessageBox.Show(
                        "Xóa Liên kết account ra khỏi Rockstar thành công. Tool by @vuvu",
                        "Success",
                        MessageBoxButtons.OK,
                        MessageBoxIcon.Information
                    );
                }
                else
                {
                    labelStatus.Text = "● NOT FOUND";
                    labelStatus.ForeColor = Color.FromArgb(255, 150, 50);
                    
                    MessageBox.Show(
                        "Folder DigitalEntitlements không tồn tại.\n\nAccount chưa được liên kết hoặc đã được xóa trước đó.",
                        "Information",
                        MessageBoxButtons.OK,
                        MessageBoxIcon.Information
                    );
                    
                    labelStatus.Text = "● READY";
                    labelStatus.ForeColor = Color.FromArgb(100, 210, 255);
                }
            }
            catch (UnauthorizedAccessException)
            {
                labelStatus.Text = "● ACCESS DENIED";
                labelStatus.ForeColor = Color.FromArgb(255, 50, 80);
                
                MessageBox.Show(
                    "Không có quyền truy cập!\n\nVui lòng chạy chương trình với quyền Administrator.",
                    "Error",
                    MessageBoxButtons.OK,
                    MessageBoxIcon.Error
                );
            }
            catch (Exception ex)
            {
                labelStatus.Text = "● ERROR";
                labelStatus.ForeColor = Color.FromArgb(255, 50, 80);
                
                MessageBox.Show(
                    $"Đã có lỗi xảy ra:\n\n{ex.Message}",
                    "Error",
                    MessageBoxButtons.OK,
                    MessageBoxIcon.Error
                );
            }
        }

        private void btnUnlink_MouseEnter(object sender, EventArgs e)
        {
            btnUnlink.BackColor = Color.FromArgb(0, 150, 220);
        }

        private void btnUnlink_MouseLeave(object sender, EventArgs e)
        {
            btnUnlink.BackColor = Color.FromArgb(0, 180, 255);
        }
    }
}
