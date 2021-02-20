using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;
using System;
using System.IO;

namespace Unimed.Repository
{
    public class UnimedDbContextFactory : IDesignTimeDbContextFactory<UnimedDbContext>
    {
        public UnimedDbContext CreateDbContext(string[] args)
        {
            var environmentName = Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT");

            var fileName = Directory.GetCurrentDirectory() + $"/../Unimed.API/appsettings.{environmentName}.json";

            var configuration = new ConfigurationBuilder().AddJsonFile(fileName).Build();
            var connectionString = configuration.GetConnectionString("DefaultConnection");

            var builder = new DbContextOptionsBuilder<UnimedDbContext>();
            builder.UseSqlServer(connectionString);

            return new UnimedDbContext(builder.Options);
        }
    }
}
