using Book.DAL.Interface;
using Book.Domain.Response.Category;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;

namespace Book.DAL
{
    public class CategoryRepository : BaseRepository, ICategoryRepository
    {
        public async Task<IEnumerable<Category>> Gets()
        {
            return await SqlMapper.QueryAsync<Category>(cnn: connect,
                                                sql: "sp_GetCategory",
                                                commandType: CommandType.StoredProcedure);
        }
    }
}
