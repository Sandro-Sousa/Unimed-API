using System;

namespace Unimed.Domain
{
    public class MarcarConsultaDTO 
    {
        public int IdPaciente { get; set; }
        public int IdProfissional { get; set; }
        public Estabelecimento TipoEstabelecimento { get; set; }
        public DateTime DtAtendimento { get; set; }
        public Status Status { get; set; }


    }
}
