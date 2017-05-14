using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using SIte.Models;

namespace SIte.Controllers
{
    public class FoundsController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Founds
        public ActionResult Index()
        {
            return View(db.Founds.ToList());
        }

       // GET: Founds/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Founds/Create
        // Чтобы защититься от атак чрезмерной передачи данных, включите определенные свойства, для которых следует установить привязку. Дополнительные 
        // сведения см. в статье https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Purpose,Amount")] Founds founds)
        {
            if (ModelState.IsValid)
            {
                db.Founds.Add(founds);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(founds);
        } 
        }
}

        