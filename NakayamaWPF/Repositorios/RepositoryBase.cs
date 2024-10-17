using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace NakayamaWPF.Repositorios
{
    public abstract class RepositoryBase
    {
        private readonly string _connectionString;
        public RepositoryBase()
        {
            _connectionString = "Data Source=DESKTOP-9FPG0O8\\SQLEXPRESS; Database=NKYMLoginDb; Integrated Security=true";
        }
        protected SqlConnection GetConnection() 
        {
            return new SqlConnection(_connectionString );
        }
    }
}
