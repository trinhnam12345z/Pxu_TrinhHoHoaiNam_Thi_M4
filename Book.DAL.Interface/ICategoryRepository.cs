using Book.Domain.Response.Category;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Book.DAL.Interface
{
    public interface ICategoryRepository
    {
        Task<IEnumerable<Category>> Gets();
    }
}
