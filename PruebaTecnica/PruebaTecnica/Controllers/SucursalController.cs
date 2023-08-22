using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using PruebaTecnica.Models;
using PruebaTecnica.Recursos;
using System.Data;

namespace PruebaTecnica.Controllers
{
    [ApiController]
    [Route("sucursal")]
    public class SucursalController : ControllerBase
    {
        [HttpPost]
        [Route("obtenerSucursal")]
        public dynamic obtenerSucursal(obtenerSucursal os)
        {
            bool success = false;
            string msg = "";
            List<Parametro> lista = new List<Parametro> {
                new Parametro("@sucursal", os.sucursal)
            };

            DataTable tSucursalEstudios = DBdatos.ObtenerSucursalEstudios("buscarSucursal", lista);

            string jtSucursalEstudios = JsonConvert.SerializeObject(tSucursalEstudios);

            if(jtSucursalEstudios.Equals("[]"))
            {
                success = false;
                msg = "La sucursal no se encuentra activa";
            }
            else
            {
                success = true;
                msg = "Sucursal encontrada";
            }

            return new
            {
                success = success,
                msg = msg,
                result = new
                {
                    estudio = JsonConvert.DeserializeObject<List<Estudio>>(jtSucursalEstudios)
                }
            };
        }

        [HttpGet]
        [Route("listarSucursales")]
        public dynamic listarSucursales()
        {
            DataTable tSucursales = DBdatos.ListarEstudios("obtenerSucursales");

            string jtSucursales = JsonConvert.SerializeObject(tSucursales);

            return new
            {
                success = true,
                msg = "exito",
                result = new
                {
                    estudio = JsonConvert.DeserializeObject<List<Sucursal>>(jtSucursales)
                }
            };
        }
    }
}
