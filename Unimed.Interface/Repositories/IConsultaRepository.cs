using System.Collections.Generic;
using Unimed.Domain;

namespace Unimed.Interface
{
    public interface IConsultaRepository
    {
        IEnumerable<ConsultaDTO> Get();
        ConsultaDTO Get(int id);
        bool MarcarConsulta(MarcarConsultaDTO model);
        bool EditarConsulta(EditarConsultaDTO model);

    }
}
