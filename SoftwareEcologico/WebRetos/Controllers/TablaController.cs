using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebRetos.Models;
using WebRetos.Models.ViewModels;

namespace WebRetos.Controllers
{
    public class TablaController : Controller
    {
        // GET: Tabla
        public ActionResult Index()
        {
            List<ListaTablaViewModel> lst;
            using (RetosDBEntities2 db = new RetosDBEntities2())
            {
                lst = (from d in db.restostbl
                       select new ListaTablaViewModel
                       {
                           Id = d.ID,
                           Nombre = d.nombre,
                           Descripcion =d.descripcion
                       }).ToList();
            }

            return View(lst);
        }


        public ActionResult Nuevo()
        {

            return View();
        }

        [HttpPost]
        public ActionResult Nuevo(TablaViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    using (RetosDBEntities2 db = new RetosDBEntities2())
                    {
                        var oReto = new restostbl();
                        oReto.descripcion = model.Descripcion;
                        oReto.fecha_creacion = model.Fecha_Creacion;
                        oReto.nombre = model.Nombre;

 
                        db.restostbl.Add(oReto);
                        db.SaveChanges();
                    }

                    return Redirect("~/Tabla/");
                }

                return View(model);

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public ActionResult Editar(int Id)
        {
            TablaViewModel model = new TablaViewModel();
            using (RetosDBEntities2 db = new RetosDBEntities2())
            {
                var oReto = db.restostbl.Find(Id);
                model.Nombre = oReto.nombre;
                model.Descripcion = oReto.descripcion;
                model.Fecha_Creacion = (DateTime)oReto.fecha_creacion;
                model.Id = oReto.ID;
            }
            return View(model);
        }

        [HttpPost]
        public ActionResult Editar(TablaViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    using (RetosDBEntities2 db = new RetosDBEntities2())
                    {
                        var oReto = db.restostbl.Find(model.Id);
                        oReto.descripcion = model.Descripcion;
                        oReto.fecha_creacion = model.Fecha_Creacion;
                        oReto.nombre = model.Nombre;

                        db.Entry(oReto).State = System.Data.Entity.EntityState.Modified;
                        db.SaveChanges();
                    }

                    return Redirect("~/Tabla/");
                }

                return View(model);


            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        [HttpGet]
        public ActionResult Eliminar(int Id)
        {
            using (RetosDBEntities2 db = new RetosDBEntities2())
            {

                var oReto = db.restostbl.Find(Id);
                db.restostbl.Remove(oReto);
                db.SaveChanges();
            }
            return Redirect("~/Tabla/");
        }

    }
}