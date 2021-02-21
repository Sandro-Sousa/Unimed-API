using System.Collections.Generic;
using Unimed.Domain;
using Unimed.Interface;
using System.Linq;
using System;

namespace Unimed.Repository
{
    public class ConsultaRepository : BaseRepository, IConsultaRepository
    {
        public ConsultaRepository(UnimedDbContext unimedDbContext) : base(unimedDbContext)
        {
        }

        public IEnumerable<ConsultaDTO> Get()
        {
            return UnimedDbContext.Consultas.Select(x => new ConsultaDTO
            {
                IdPaciente = x.IdPaciente,
                Paciente = x.Paciente.Nome,
                Profissional = x.Profissional.Nome,
                Convenio = x.Paciente.Convenio.Nome,
                DtAtendimento = x.DtAtendimento,
                Status = x.Status,
                TipoEstabelecimento = x.TipoEstabelecimento
            })
            .ToList();
        }

        public ConsultaDTO Get(int id)
        {
            if (id < 0)
            {
                return null;
            }

            return UnimedDbContext.Consultas
                .Select(x => new ConsultaDTO
                {
                    Paciente = x.Paciente.Nome,
                    IdPaciente = x.IdPaciente,
                    DtAtendimento = x.DtAtendimento,
                    Convenio = x.Paciente.Convenio.Nome,
                    Status = x.Status,
                    Profissional = x.Profissional.Nome,
                    TipoEstabelecimento = x.TipoEstabelecimento
                }).Where(x => x.IdPaciente == id).FirstOrDefault();
        }


      

        public bool MarcarConsulta(MarcarConsultaDTO model)
        {
            if (model == null)
            {
                return false;
            }

            var aux = CriarConsulta(model);

            try
            {
                UnimedDbContext.Add(aux);
                UnimedDbContext.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {

                throw new ArgumentException($"Não foi possivel Marcar uma Consulta {ex}");
            }
        }
        public bool EditarConsulta(EditarConsultaDTO model)
        {
            if (model.Id < 0)
            {
                return false;
            }

            var aux = CriarConsulta(model);

            aux.Id = model.Id;

            try
            {
                UnimedDbContext.Update(aux);
                UnimedDbContext.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {

                throw new ArgumentException($"Não foi possivel Marcar uma Consulta {ex}");
            }
        }

        private Consulta CriarConsulta(dynamic model)
        {
            Consulta consulta = new Consulta
            {
                TipoEstabelecimento = model.TipoEstabelecimento,
                DtAtendimento = model.DtAtendimento,
                Status = model.Status,
                IdPaciente = model.IdPaciente,
                IdProfissional = model.IdProfissional
            };

            return consulta;
        }
    }
}


