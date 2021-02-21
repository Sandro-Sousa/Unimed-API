using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using Unimed.Domain;
using Unimed.Interface;


namespace Unimed.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AtendenteController : AppBaseController
    {
        public AtendenteController(IServiceProvider serviceProvider): base(serviceProvider)
        {
        }

       [HttpGet]
       public IEnumerable<PacienteDTO> Get()
        {
            return GetService<IAtendenteRepository>().Get();
        }

        [HttpGet("{id}")]
        public PacienteDTO Get(int id)
        {
            return GetService<IAtendenteRepository>().Get(id);
        }

        [HttpPost]
        public IActionResult Criar([FromBody] PacienteAdicionarDTO model)
        {
            
            var result = GetService<IAtendenteRepository>().Criar(model);
            if (result)
            {
                return Ok("Paciente Criado");
            }
            return BadRequest();
        }

        [HttpPut]
        public IActionResult Editar([FromBody] PacienteEditarDTO model)
        {

            var result = GetService<IAtendenteRepository>().Editar(model);
            if (result == null)
            {
                return BadRequest();
            }
            return Ok(result);
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            var deletado = GetService<IAtendenteRepository>().Delete(id);
            if (deletado)
            {
                return Ok("Usuario Deletado");
            }
            return BadRequest();
        }

    }
}
