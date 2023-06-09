using NUnit.Framework;
using ModelsGrid.AppLib;
using ModelsGrid.AppLib.Models;

namespace ModelsGridTests
{
    public class Tests
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void Employees_updateItem_NoException()
        {
            Assert.DoesNotThrow(() =>
            {
                Employee employee = new Employee
                {
                    EmployeeID = 1,
                    FirstName = "Carson",
                    LastName = "Mitchell"
                };
                Employees.updateItem(employee);
            });
        }
    }
}