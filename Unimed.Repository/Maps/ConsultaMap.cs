using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Unimed.Domain;

namespace Unimed.Repository
{
    public class ConsultaMap : BaseEntitiesMap<Consulta> 
    {
        public ConsultaMap(): base("tb_consulta")
        {}

        public override void Configure(EntityTypeBuilder<Consulta> builder)
        {
            base.Configure(builder);

            builder.Property(x => x.TipoEstabelecimento).HasColumnName("tipo_estabelecimento").IsRequired();
            builder.Property(x => x.DtAtendimento).HasColumnName("dt_atendimento").IsRequired();
            builder.Property(x => x.Status).HasColumnName("status").IsRequired();

            builder.Property(x => x.IdPaciente).HasColumnName("id_paciente").IsRequired();
            builder.HasOne(x => x.Paciente).WithMany(x => x.Consultas).HasForeignKey(x => x.IdPaciente);

            builder.Property(x => x.IdProfissional).HasColumnName("id_profissional").IsRequired();
            builder.HasOne(x => x.Profissional).WithMany(x => x.Consultas).HasForeignKey(x => x.IdProfissional);
        }
    }
}
