using System;
using System.Collections.Generic;
using System.Text;

namespace Book.Domain.Response.Book
{
    public class Bookk
    {
        public int BookID { get; set; }
        public string BookName { get; set; }
        public string Author { get; set; }
        public string ShortContent { get; set; }
        public int PublishYear { get; set; }
        public int Amount { get; set; }
        public int CategoryID { get; set; }
    }
}
