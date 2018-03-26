using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ClothingJScript.Models;

namespace ClothingJScript.Controllers
{
    public class StylesController : Controller
    { 
        private ClothingDEntities2 db = new ClothingDEntities2();

        // GET: Styles
        public ActionResult Index()
        {
            var styles = db.Styles.Include(s => s.Clothing);
            return View(styles.ToList());
        }

        // GET: Styles/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Style style = db.Styles.Find(id);
            if (style == null)
            {
                return HttpNotFound();
            }
            return View(style);
        }

        // GET: Styles/Create
        public ActionResult Create()
        {
            ViewBag.ClothingID = new SelectList(db.Clothings, "ClothingID", "Type");
            return View();
        }

        // POST: Styles/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "StyleID,Color,StyleType,Photo,ClothingID,Review")] Style style)
        {
            if (ModelState.IsValid)
            {
                db.Styles.Add(style);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ClothingID = new SelectList(db.Clothings, "ClothingID", "Type", style.ClothingID);
            return View(style);
        }

        // GET: Styles/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Style style = db.Styles.Find(id);
            if (style == null)
            {
                return HttpNotFound();
            }
            ViewBag.ClothingID = new SelectList(db.Clothings, "ClothingID", "Type", style.ClothingID);
            return View(style);
        }

        // POST: Styles/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "StyleID,Color,StyleType,Photo,ClothingID,Review")] Style style)
        {
            if (ModelState.IsValid)
            {
                db.Entry(style).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ClothingID = new SelectList(db.Clothings, "ClothingID", "Type", style.ClothingID);
            return View(style);
        }

        // GET: Styles/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Style style = db.Styles.Find(id);
            if (style == null)
            {
                return HttpNotFound();
            }
            return View(style);
        }

        // POST: Styles/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Style style = db.Styles.Find(id);
            db.Styles.Remove(style);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
