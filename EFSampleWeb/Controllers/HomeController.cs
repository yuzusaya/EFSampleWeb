using EFSample.Data.Data;
using EFSampleWeb.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace EFSampleWeb.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly EfsampleDatabaseContext database;

        public HomeController(ILogger<HomeController> logger, EfsampleDatabaseContext database)
        {
            _logger = logger;
            this.database = database;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}