using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Unimed.Domain;

namespace Unimed.Repository
{
    public class EspecialidadeMaps : BaseEntitiesMap<Especialidade> 
    {
        public EspecialidadeMaps(): base("tb_especialidade")
        {}

        public override void Configure(EntityTypeBuilder<Especialidade> builder)
        {
            base.Configure(builder);

            builder.Property(x => x.Nome).HasColumnName("nome").HasMaxLength(50).IsRequired();
        }
    }
}
