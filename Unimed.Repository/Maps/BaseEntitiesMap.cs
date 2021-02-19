using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Unimed.Domain;

namespace Unimed.Repository
{
    public class BaseEntitiesMap<T> : IEntityTypeConfiguration<T> where T : BaseEntities
    {
        private readonly string _tableName;
        public BaseEntitiesMap(string tableName = "")
        {
            _tableName = tableName;
        }
        public virtual void Configure(EntityTypeBuilder<T> builder)
        {
            if (!string.IsNullOrEmpty(_tableName))
            {
                builder.ToTable(_tableName);
            }

            builder.HasKey(x => x.Id);
            builder.Property(x => x.Id).HasColumnName("id").ValueGeneratedOnAdd();

            builder.Property(x => x.CriadoEm).HasColumnName("criado_em").IsRequired();
        }
    }
}
