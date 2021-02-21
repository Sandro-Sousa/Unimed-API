using System;

namespace Unimed.Domain
{
   public class PacienteDTO : BaseDTO
    {
        public string Nome { get; set; }
        public DateTime DtNascimento { get; set; }
        public string Cpf { get; set; }
        public EnderecoDTO Endereco { get; set; }
    }
}
