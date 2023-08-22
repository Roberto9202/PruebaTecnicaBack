using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using PruebaTecnica.Models;
using PruebaTecnica.Recursos;
using System.Data;

namespace PruebaTecnica.Controllers
{
    [ApiController]
    [Route("estudio")]
    public class EstudioController : ControllerBase
    {
        [HttpGet]
        [Route("listarEstudios")]
        public dynamic listarEstudios()
        {
            DataTable tEstudios = DBdatos.ListarEstudios("obtenerEstudios");

            string jtEstudios = JsonConvert.SerializeObject(tEstudios);

            return new
            {
                success = true,
                msg = "exito",
                result = new
                {
                    estudio = JsonConvert.DeserializeObject<List<Estudio>>(jtEstudios)
                }
            };
        }

        [HttpPost]
        [Route("agregarEstudio")]
        public dynamic agregarEstudio(agregarEstudio es)
        {
            List<Parametro> lista = new List<Parametro> {
                new Parametro("@estudio", es.estudio),
                new Parametro("@detalle", es.detalle),
                new Parametro("@estatus", es.estatus.ToString())
            };

            bool exito = DBdatos.Ejecutar("agregarEstudio", lista);

            return new
            {
                success = exito,
                msg = exito ? "Estudio agregado correctamente" : "Error al agregar estudio",
                result = ""
            };
        }
    }
}
