using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Unimed.Domain;

namespace Unimed.Repository
{
    public class PacienteMap : BaseEntitiesMap<Paciente> 
    {
        public PacienteMap(): base("tb_paciente")
        {}

        public override void Configure(EntityTypeBuilder<Paciente> builder)
        {
            base.Configure(builder);

            builder.Property(x => x.Nome).HasColumnName("nome").HasMaxLength(100).IsRequired();
            builder.Property(x => x.DtNascimento).HasColumnName("dt_nascimento").IsRequired();
            builder.Property(x => x.Cpf).HasColumnName("cpf").HasMaxLength(11).IsRequired();

            builder.Property(x => x.IdEndereco).HasColumnName("id_endereco").IsRequired();
            builder.Property(x => x.IdConvenio).HasColumnName("id_convenio").IsRequired();
        }
    }
}
