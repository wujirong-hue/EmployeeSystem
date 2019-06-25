using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //连接数据库字符串        
        string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True"; 
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowData();
        }

        //显示员工资料至GridView        
        void ShowData(){
            using (SqlConnection cn=new SqlConnection()){
                cn.ConnectionString = sqlconn;
                cn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM employee",cn);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
        }

        protected void DelBtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection()) {
                cn.ConnectionString = sqlconn; cn.Open();
                string sqlstr = string.Format("delete from employee where eid like '%{0}%'", txtID.Text);
                SqlCommand cmd = new SqlCommand(sqlstr, cn);
                cmd.ExecuteNonQuery();
                ShowData();
            }
        }
    }
}