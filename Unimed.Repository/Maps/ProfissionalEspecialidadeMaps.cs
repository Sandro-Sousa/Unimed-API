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
        }
    }
}
