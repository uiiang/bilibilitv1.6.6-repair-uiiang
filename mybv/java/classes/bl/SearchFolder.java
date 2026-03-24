package bl;

public class SearchFolder implements FavoriteFolder {
    private final String title;
    private final int tid;
    
    public SearchFolder(String title, int tid) {
        this.title = title;
        this.tid = tid;
    }
    
    @Override
    public String getTitle() {
        return title;
    }
    
    @Override
    public String getCover() {
        return null;
    }
    
    @Override
    public int getCount() {
        return 0;
    }
    
    @Override
    public long getId() {
        return tid;
    }
    
    @Override
    public int getType() {
        return tid;
    }
    
    public int getTid() {
        return tid;
    }
}
