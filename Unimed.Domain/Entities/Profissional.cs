using System.Collections.Generic;

namespace Unimed.Domain
{
    public class Profissional : BaseEntities
    {
        public string Nome { get; set; }
        public string Documento { get; set; }
        public bool Ativo { get; set; }
        public virtual List<Especialidade> Especialidades { get; set; }
        public virtual List<Consulta> Consultas { get; set; }
    }
}
