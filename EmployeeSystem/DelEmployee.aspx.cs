using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        //显示员工资料至GridView        
        void ShowData(){
            using (SqlConnection cn=new SqlConnection()){
                cn.ConnectionString = sqlconn;
                cn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM 员工",cn);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr; 
                GridView1.DataBind();
            }
        } 
    }
}