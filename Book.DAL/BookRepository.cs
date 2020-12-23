using Book.DAL.Interface;
using Book.Domain.Response.Book;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;

namespace Book.DAL
{
    public class BookRepository : BaseRepository, IBookRepository
    {
        public async Task<IEnumerable<Bookk>> Gets()
        {
            return await SqlMapper.QueryAsync<Bookk>(cnn: connect,
                                                sql: "sp_GetBook",
                                                commandType: CommandType.StoredProcedure);
        }
    }
}
