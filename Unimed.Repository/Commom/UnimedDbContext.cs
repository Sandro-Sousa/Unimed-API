using Microsoft.EntityFrameworkCore;
using Unimed.Domain;

namespace Unimed.Repository
{
    public class UnimedDbContext : DbContext
    {

        public virtual DbSet<Cidade> Cidades { get; set; }
        public virtual DbSet<Consulta> Consultas { get; set; }
        public virtual DbSet<Convenio> Convenios { get; set; }
        public virtual DbSet<Endereco> Enderecos { get; set; }
        public virtual DbSet<Especialidade> Especialidades { get; set; }
        public virtual DbSet<Paciente> Pacientes { get; set; }
        public virtual DbSet<Profissional> Profissionais { get; set; }
        public virtual DbSet<ProfissionalEspecialidade> ProfissionalEspecialidades { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.ApplyConfigurationsFromAssembly(GetType().Assembly);
        } 


        public UnimedDbContext(DbContextOptions<UnimedDbContext> options) : base(options)
        {
            ChangeTracker.AutoDetectChangesEnabled = false;
        }
    }
}
