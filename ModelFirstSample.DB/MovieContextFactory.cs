using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelFirstSample.DB
{
    public class MovieContextFactory : IDbContextFactory<MovieContext>
    {
        public MovieContext Create()
        {
            return new MovieContext("Server=(localdb)\\mssqllocaldb;Database=ModelFirstSample;Trusted_Connection=True;MultipleActiveResultSets=true");
        }
    }
}
