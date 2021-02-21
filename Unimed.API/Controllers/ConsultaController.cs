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
        public IEnumerable<Consulta> Get()
        {
            var rep = (IConsultaRepository)ServiceProvider.GetService(typeof(IConsultaRepository));
            return rep.Get();
        }
    }
}
