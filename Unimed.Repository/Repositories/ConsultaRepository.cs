using System.Collections.Generic;
using Unimed.Domain;
using Unimed.Interface;
using System.Linq;

namespace Unimed.Repository
{
    public class ConsultaRepository : BaseRepository, IConsultaRepository
    {
        public ConsultaRepository(UnimedDbContext unimedDbContext): base(unimedDbContext)
        {
        }

        public List<Consulta> Get()
        {
            return UnimedDbContext.Consultas.ToList();
        }
    }
}
