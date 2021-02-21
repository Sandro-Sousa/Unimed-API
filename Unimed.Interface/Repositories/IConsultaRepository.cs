using System.Collections.Generic;
using Unimed.Domain;

namespace Unimed.Interface
{
    public interface IConsultaRepository
    {
        List<Consulta> Get();
    }
}
