using Book.BAL.Interface;
using Book.DAL.Interface;
using Book.Domain.Response.Category;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Book.BAL
{
    public class CategoryService : ICategoryService
    {
        private readonly ICategoryRepository categoryRepository;
        public CategoryService(ICategoryRepository categoryRepository)
        {
            this.categoryRepository = categoryRepository;
        }
        public async Task<IEnumerable<Category>> Gets()
        {
            return await categoryRepository.Gets();
        }
    }
}
