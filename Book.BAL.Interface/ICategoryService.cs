using Book.Domain.Response.Category;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Book.BAL.Interface
{
    public interface ICategoryService
    {
        Task<IEnumerable<Category>> Gets();
    }
}
