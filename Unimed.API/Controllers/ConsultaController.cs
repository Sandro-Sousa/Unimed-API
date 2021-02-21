using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Unimed.Domain;
using Unimed.Interface;

namespace Unimed.API.Controllers
{
    [ApiController]
    [Route("controller")]
    public class ConsultaController : AppBaseController
    {
        public ConsultaController(IServiceProvider serviceProvider): base(serviceProvider)
        {
        }

        [HttpGet]
        public IEnumerable<ConsultaDTO> Get()
        {
            return GetService<IConsultaRepository>().Get();
        }

        [HttpGet("{id}")]
        public ConsultaDTO Get(int id)
        {
            return GetService<IConsultaRepository>().Get(id);
        }

        [HttpPut]
        public IActionResult EditarConsulta([FromBody] EditarConsultaDTO model)
        {
            var result = GetService<IConsultaRepository>().EditarConsulta(model);
            if (!result)
            {
                return BadRequest("Erro ao Editar Consulta");
            }
            return Ok("Consulta Editado com Sucesso");
        }

        [HttpPost]
        public IActionResult MarcarConsulta([FromBody] MarcarConsultaDTO model)
        {

            var result = GetService<IConsultaRepository>().MarcarConsulta(model);
            if (result)
            {
                return Ok("Consulta Marcada");
            }
            return BadRequest();
        }
    }
}
