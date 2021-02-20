using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Unimed.Domain;

namespace Unimed.Repository
{
    public class ProfissionalEspecialidadeMaps : BaseEntitiesMap<ProfissionalEspecialidade> 
    {
        public ProfissionalEspecialidadeMaps(): base("tb_profissional_especialidade")
        {}

        public override void Configure(EntityTypeBuilder<ProfissionalEspecialidade> builder)
        {
            base.Configure(builder);

            builder.Property(x => x.Ativo).HasColumnName("ativo").IsRequired();

            builder.Property(x => x.IdProfissional).HasColumnName("id_profissional").IsRequired();
            builder.HasOne(x => x.Profissional).WithMany(x => x.Especialidades).HasForeignKey(x => x.IdProfissional);

            builder.Property(x => x.IdEspecialidade).HasColumnName("id_especialidade").IsRequired();
            builder.HasOne(x => x.Especialidade).WithMany(x => x.Profissionais).HasForeignKey(x => x.IdEspecialidade);
        }
    }
}
