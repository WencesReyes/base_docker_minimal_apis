using DockerMiniminalApis.Products;
using Microsoft.EntityFrameworkCore;

namespace DockerMiniminalApis.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Product>().HasKey(p => p.Id);

            modelBuilder.Entity<Product>().HasData(new Product() { Id = 1, Description = "Tomatoes" });
        }

        public DbSet<Product> Products { get; set; }
    }
}
