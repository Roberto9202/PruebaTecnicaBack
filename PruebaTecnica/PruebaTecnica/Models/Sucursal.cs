namespace PruebaTecnica.Models
{
    public class Sucursal
    {
        public int id { get; set; }
        public string ubicacion { get; set; }
        public string sucursal { get; set; }
        public bool estatus { get; set; }
    }

    public class obtenerSucursal {
        public string sucursal { get; set; }
    }
}
