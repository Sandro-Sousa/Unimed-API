using Microsoft.Extensions.DependencyInjection;
using Unimed.Interface;
using Unimed.Repository;

namespace Unimed.API
{
    public class DependencyInjection
    {
        
        public static void Register(IServiceCollection serviceProvider)
        {
            RepositoryDependence(serviceProvider);
        }

        private static void RepositoryDependence(IServiceCollection serviceProvider)
        {
            serviceProvider.AddScoped<IConsultaRepository, ConsultaRepository>();
            serviceProvider.AddScoped<IAtendenteRepository, AtendenteRepository>();
        }
    }
}
