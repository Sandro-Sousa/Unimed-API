using System;

namespace Unimed.Domain
{
    public class Convenio : BaseEntities
    {
        public string  Nome { get; set; }
        public bool Ativo { get; set; }
        public DateTime Validade { get; set; }
        public Abrangencia TipoAbrangencia { get; set; }
    }
}
