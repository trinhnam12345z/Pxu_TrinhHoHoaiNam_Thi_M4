using Book.BAL.Interface;
using Book.DAL.Interface;
using Book.Domain.Response.Book;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Book.BAL
{
    public class BookService : IBookService
    {
        private readonly IBookRepository bookRepository;
        public BookService(IBookRepository bookRepository)
        {
            this.bookRepository = bookRepository;
        }
        public async Task<IEnumerable<Bookk>> Gets()
        {
            return await bookRepository.Gets();
        }
    }
}
