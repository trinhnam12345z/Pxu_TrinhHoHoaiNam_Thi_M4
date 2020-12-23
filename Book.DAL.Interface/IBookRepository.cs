using Book.Domain.Response.Book;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Book.DAL.Interface
{
    public interface IBookRepository
    {
        Task<IEnumerable<Bookk>> Gets();
    }
}
