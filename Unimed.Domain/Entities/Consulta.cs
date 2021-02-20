using System;
using System.Collections.Generic;

namespace Unimed.Domain
{
    public class Consulta : BaseEntities
    {
        public Estabelecimento TipoEstabelecimento { get; set; }
        public DateTime DtAtendimento { get; set; }
        public Status Status { get; set; }

        public int IdPaciente { get; set; }
        public virtual Paciente Paciente { get; set; }

        public int IdProfissional { get; set; }
        public Profissional Profissional { get; set; }
    }
}
