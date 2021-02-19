using System;

namespace Unimed.Domain
{
    public class Endereco : BaseEntities
    {
        public string Logradouro { get; set; }
        public string Bairro { get; set; }
        public int Numero { get; set; }

        public int IdCidade { get; set; }
        public virtual Cidade Cidade { get; set; }
        public virtual Paciente Paciente { get; set; }
    }
}
