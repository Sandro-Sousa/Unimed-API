using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Unimed.Domain;
using Unimed.Interface;

namespace Unimed.Repository
{
    public class AtendenteRepository : BaseRepository, IAtendenteRepository
    {
        public AtendenteRepository(UnimedDbContext unimedDbContext): base(unimedDbContext)
        {
        }

        public IEnumerable<PacienteDTO> Get()
        {
            return UnimedDbContext.Pacientes
                .Select(x => new PacienteDTO
                {
                    Id = x.Id,
                    Nome = x.Nome,
                    DtNascimento = x.DtNascimento,
                    Cpf = x.Cpf,
                    Endereco = new EnderecoDTO
                    {
                        Bairro = x.Endereco.Bairro,
                        Cidade = x.Endereco.Cidade.Nome,
                        Logradouro = x.Endereco.Logradouro,
                        Numero = x.Endereco.Numero,
                        Uf = x.Endereco.Cidade.Uf
                    }
                })
                .ToList();
        }

        public PacienteDTO Get(int id)
        {
            if (id < 0)
            {
                return null;
            }

            return UnimedDbContext.Pacientes
               .Select(x => new PacienteDTO
               {
                   Id = x.Id,
                   Nome = x.Nome,
                   DtNascimento = x.DtNascimento,
                   Cpf = x.Cpf,
                   Endereco = new EnderecoDTO
                   {
                       Bairro = x.Endereco.Bairro,
                       Cidade = x.Endereco.Cidade.Nome,
                       Logradouro = x.Endereco.Logradouro,
                       Numero = x.Endereco.Numero,
                       Uf = x.Endereco.Cidade.Uf
                   }
               }).FirstOrDefault();
        }

        public int Criar(PacienteDTO model)
        {
            if (model.Id > 0)
            {
                return 0;
            }

            
            var entity = new Paciente()
            {
                Nome = model.Nome,
                DtNascimento = model.DtNascimento,
                Cpf = model.Cpf
            };
            try
            {
                UnimedDbContext.Pacientes.Add(entity);
                UnimedDbContext.SaveChanges();

                return entity.Id;
            }
            catch (Exception ex)
            {
            }

            return 0;
        }

        public bool Criar(PacienteAdicionarDTO model)
        {
            if (model == null)
            {
                return false;
            }

            var paciente = CriarPaciente(model); 

            var endereco = CriarEndereco(model);

            try
            {
                UnimedDbContext.Add(endereco);
                UnimedDbContext.SaveChanges();

                paciente.IdEndereco = endereco.Id;
                UnimedDbContext.Add(paciente);
                UnimedDbContext.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {

                throw new ArgumentException($"Não foi possivel Adcionar o Paciente {ex}");
            }
        }

        public PacienteDTO Editar(PacienteEditarDTO model)
        {
            if(model.Id < 0)
            {
                return null;
            }

            var paciente = CriarPaciente(model); 

            var endereco = CriarEndereco(model);

            try
            {
                UnimedDbContext.Update(endereco);
                UnimedDbContext.SaveChanges();

                paciente.IdEndereco = endereco.Id;
                UnimedDbContext.Update(paciente);
                UnimedDbContext.SaveChanges();

                var cidade = UnimedDbContext.Cidades.Where(x => x.Id == model.Cidade).FirstOrDefault();

                return new PacienteDTO {
                    Id = paciente.Id,
                    Nome = paciente.Nome,
                    DtNascimento = paciente.DtNascimento,
                    Cpf = paciente.Cpf,
                    Endereco = new EnderecoDTO
                    {
                        Logradouro = paciente.Endereco.Logradouro,
                        Bairro = paciente.Endereco.Bairro,
                        Cidade = cidade.Nome,
                        Numero = paciente.Endereco.Numero,
                        Uf = cidade.Uf
                    }
                
                };
            }
            catch (Exception ex)
            {

                throw new ArgumentException($"Não foi possivel Adcionar o Paciente {ex}");
            }
        }

        private Endereco CriarEndereco(dynamic model)
        {
            Endereco endereco = new Endereco
            {
                Logradouro = model.Logradouro,
                Bairro = model.Bairro,
                IdCidade = model.Cidade,
                Numero = model.Numero,
                CriadoEm = DateTime.UtcNow,
            };

            return endereco;
        }

        private Paciente CriarPaciente(dynamic model)
        {
            Paciente paciente = new Paciente
            {
                Nome = model.Nome,
                DtNascimento = model.DtNascimento,
                Cpf = model.Cpf,
                CriadoEm = DateTime.UtcNow,
                IdConvenio = model.IdConvenio

            };

            return paciente;
        }

        public bool Delete(int id)
        {
            if (id < 0)
            {
                return false;
            }

            var usuarioDeletado = UnimedDbContext.Pacientes.Where(x => x.Id == id).FirstOrDefault();

            if (usuarioDeletado == null)
            {
                throw new ArgumentException("Usuario não encontrado");
            }

            try
            {
                UnimedDbContext.Remove(usuarioDeletado);
                UnimedDbContext.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                throw;
            }

        }
    }
}
