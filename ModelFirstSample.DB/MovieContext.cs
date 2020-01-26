using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelFirstSample.DB
{
    public partial class MovieContext : DbContext
    {
        public MovieContext(string connectionString) : base(connectionString)
        {

        }
    }
}
