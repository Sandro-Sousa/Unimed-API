using System;
using System.Collections.Generic;

namespace Unimed.Domain
{
    public class ConsultaDTO : BaseDTO
    {
        public Estabelecimento TipoEstabelecimento { get; set; }
        public DateTime DtAtendimento { get; set; }
        public Status Status { get; set; }
        public string Paciente { get; set; }
        public string Profissional { get; set; }
        public string Convenio { get; set; }
        public int IdPaciente { get; set; }
    }
}
