using System;
using System.Collections.Generic;

namespace Unimed.Domain
{
    public class Paciente : BaseEntities
    {
        public string Nome { get; set; }
        public DateTime DtNascimento { get; set; }
        public string Cpf { get; set; }

        public int IdEndereco { get; set; }
        public virtual Endereco Endereco { get; set; }

        public int IdConvenio { get; set; }
        public virtual Convenio Convenio { get; set; }
        public virtual List<Consulta> Consultas { get; set; }

    }
}
