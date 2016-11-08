using Microsoft.AspNetCore.Mvc;

namespace ConcourseTest 
{
	[Route("/")]
    public class TestController : Controller 
    {
        private AppDbContext context;

        public TestController(AppDbContext context)
        {
            this.context = context;
        }

		[HttpGet]
		public virtual IActionResult Index() 
		{
            Thing thing = new Thing() {ID = 1, Name = "Phone"};
            this.context.Add(thing);
            this.context.SaveChanges();
                        
            return this.Ok("OK");
        }        
    }
}
