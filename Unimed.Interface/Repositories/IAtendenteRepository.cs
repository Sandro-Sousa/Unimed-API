using System.Collections.Generic;
using Unimed.Domain;

namespace Unimed.Interface
{
    public interface IAtendenteRepository
    {
        IEnumerable<PacienteDTO> Get();
        bool Criar(PacienteAdicionarDTO model);
        PacienteDTO Get(int id);
        PacienteDTO Editar(PacienteEditarDTO model);
        bool Delete(int id);
    }
}
