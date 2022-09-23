using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Weekly_exercises_3__WebForm
{
    public partial class Student_Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void Clear()
        {
            txt_MSSV.Text = "";
            txt_HoTen.Text = "";
            txt_NgaySinh.Text = "";
            txt_SDT.Text = "";
            txt_NoiTru.Text = "";
            txt_NgoaiTru.Text = "";
            txt_MienGiam.Text = "";
            txt_HTPH.Text = "";
            txt_SDTPH.Text = "";
        }

        void Load_SQL()
        {
            
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            string MSSV = txt_MSSV.Text;
            string HoTen = txt_HoTen.Text;
            string NgaySinh = txt_NgaySinh.Text;
            string SDT = txt_SDT.Text;
            string NoiTru = txt_NoiTru.Text;
            string NgoaiTru = txt_NgoaiTru.Text;
            string MienGiam = txt_MienGiam.Text;
            string ThamGiaBaoHiemYte = DropDownList1.SelectedValue;
            string HoTenPhuHuynh = txt_HTPH.Text;
            string SDTPhuHuynh = txt_SDTPH.Text;

            String Connecting = "SERVER = DESKTOP-2B5FRR5; Database = DSSV_55KMT; user id = K55KMT; password = 12";
            SqlConnection cn = new SqlConnection(Connecting);
            cn.Open();
            String sql = string.Format("INSERT INTO Info_55KMT VALUES('{0}', N'{1}', '{2}', '{3}', N'{4}', N'{5}', N'{6}', N'{7}', N'{8}', '{9}')", MSSV, HoTen, NgaySinh, SDT, NoiTru, NgoaiTru, MienGiam, ThamGiaBaoHiemYte, HoTenPhuHuynh, SDTPhuHuynh);
            SqlCommand sqlCommand = new SqlCommand(sql, cn);
            sqlCommand.ExecuteReader();
            cn.Close();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "Swal.fire({icon: 'success', title: 'Đã lưu thành công', showConfirmButton: false, timer: 1500})", true);
            Clear();
        }
    }
}