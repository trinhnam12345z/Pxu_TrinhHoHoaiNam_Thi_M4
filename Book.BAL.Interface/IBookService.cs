using Book.Domain.Response.Book;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Book.BAL.Interface
{
    public interface IBookService
    {
        Task<IEnumerable<Bookk>> Gets();
    }
}
