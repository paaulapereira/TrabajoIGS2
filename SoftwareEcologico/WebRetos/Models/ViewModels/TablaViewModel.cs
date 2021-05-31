using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebRetos.Models.ViewModels
{
    public class TablaViewModel
    {

        public int Id { get; set; }
        [StringLength(100)]
        [Display(Name = "Nombre")]
        public string Nombre { get; set; }
        [StringLength(150)]
        [Display(Name = "Descripción del Reto")]
        public string Descripcion { get; set; }
        [DataType(DataType.Date)]
        [Display(Name = "Fecha de creación")]
        public DateTime Fecha_Creacion { get; set; }
    }
}