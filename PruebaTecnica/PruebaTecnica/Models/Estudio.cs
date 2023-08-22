namespace PruebaTecnica.Models
{
    public class Estudio
    {
        public int id { get; set; }
        public string estudio { get; set; }
        public string detalle { get; set;}
        public bool estatus { get; set;}


    }

    public class agregarEstudio
    {
        public string estudio { get; set; }
        public string detalle { get; set; }
        public bool estatus { get; set; }


    }
}
