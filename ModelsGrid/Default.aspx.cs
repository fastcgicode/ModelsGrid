using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModelsGrid.AppLib;
using ModelsGrid.AppLib.Models;

namespace ModelsGrid
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        public IQueryable<Employee> employeesGrid_GetData()
        {
            return Employees.getData();
        }

        public void employeesGrid_UpdateItem()
        {
            Employee employee = new Employee();
            TryUpdateModel(employee);
            Employees.updateItem(employee);
        }
    }
}