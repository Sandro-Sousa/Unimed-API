using System.Collections.Generic;

namespace Unimed.Domain
{
    public class Especialidade : BaseEntities
    {
        public string Nome { get; set; }

        public virtual List<ProfissionalEspecialidade> Profissionais {get; set;}
    }
}
