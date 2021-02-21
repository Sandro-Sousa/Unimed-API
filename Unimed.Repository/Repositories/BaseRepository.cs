namespace Unimed.Repository
{
    public class BaseRepository
    {
        protected readonly UnimedDbContext UnimedDbContext;
        public BaseRepository(UnimedDbContext unimedDbContext)
        {
            UnimedDbContext = unimedDbContext;
        }
    }
}
