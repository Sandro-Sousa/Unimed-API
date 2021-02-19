using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Unimed.Domain;

namespace Unimed.Repository
{
    public class ConvenioMap : BaseEntitiesMap<Convenio> 
    {
        public ConvenioMap(): base("tb_convenio")
        {}

        public override void Configure(EntityTypeBuilder<Convenio> builder)
        {
            base.Configure(builder);

            builder.Property(x => x.Nome).HasColumnName("nome").HasMaxLength(100).IsRequired();
            builder.Property(x => x.Ativo).HasColumnName("ativo").IsRequired();
            builder.Property(x => x.Validade).HasColumnName("validade").IsRequired();
            builder.Property(x => x.TipoAbrangencia).HasColumnName("tipo_abrangencia").IsRequired();
           
        }
    }
}
