using System;

namespace Unimed.Domain
{
    public class ProfissionalEspecialidade : BaseEntities
    {
        public int IdProfissional { get; set; }
        public virtual Profissional Profissional { get; set; }
        public int IdEspecialidade { get; set; }
        public virtual Especialidade Especialidade { get; set; }
        public bool Ativo { get; set; }
    }
}
