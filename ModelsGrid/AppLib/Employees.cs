using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using ModelsGrid.AppLib.Models;

namespace ModelsGrid.AppLib
{
    public class Employees
    {
        public static IQueryable<Employee> getData()
        {
            List <Employee> employees = new List<Employee>();
            using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString))
            {
                conn.Open();
                using (var command = new SqlCommand("getEmployees", conn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    var reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        employees.Add(new Employee
                        {
                            EmployeeID = Int32.Parse(reader["EmployeeID"].ToString()),
                            FirstName = reader["FirstName"].ToString(),
                            LastName = reader["LastName"].ToString()
                        });
                    }
                    reader.Close();
                }
                conn.Close();
            }
            return employees.AsQueryable<Employee>();
        }

        public static void updateItem(Employee employee)
        {
            if (employee.EmployeeID < 1)
            {
                throw new ArgumentException();
            }

            using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString))
            {
                conn.Open();
                using (var command = new SqlCommand("updateEmployee", conn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@EmployeeId", SqlDbType.Int).Value = employee.EmployeeID;
                    command.Parameters.AddWithValue("@FirstName", SqlDbType.VarChar).Value = employee.FirstName;
                    command.Parameters.AddWithValue("@LastName", SqlDbType.VarChar).Value = employee.LastName;
                    command.ExecuteNonQuery();
                }
                conn.Close();
            }
        }
    }
}