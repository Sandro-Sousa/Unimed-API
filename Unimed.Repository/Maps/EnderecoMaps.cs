using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Unimed.Domain;

namespace Unimed.Repository
{
    public class EnderecoMaps : BaseEntitiesMap<Endereco> 
    {
        public EnderecoMaps(): base("tb_paciente")
        {}

        public override void Configure(EntityTypeBuilder<Endereco> builder)
        {
            base.Configure(builder);

            builder.Property(x => x.Logradouro).HasColumnName("logradouro").HasMaxLength(100).IsRequired();
            builder.Property(x => x.Bairro).HasColumnName("bairro").HasMaxLength(50).IsRequired();
            builder.Property(x => x.Numero).HasColumnName("numero").IsRequired();

            builder.HasOne(x => x.Paciente).WithOne(x => x.Endereco).HasForeignKey<Paciente>(x => x.IdEndereco);

            builder.Property(x => x.IdCidade).HasColumnName("id_cidade").IsRequired();
            builder.HasOne(x => x.Cidade).WithMany().HasForeignKey(x => x.IdCidade);
        }
    }
}
