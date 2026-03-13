package bl;

/**
 * 历史记录目录实现
 * 用于表示历史记录的分类（视频/直播）
 */
public class HistoryFolder implements FavoriteFolder {
    private final String title;
    private final String type;
    private final int count;
    
    public HistoryFolder(String title, String type, int count) {
        this.title = title;
        this.type = type;
        this.count = count;
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
        return count;
    }
    
    @Override
    public long getId() {
        return 0;
    }
    
    @Override
    public int getType() {
        return type.equals("archive") ? 1 : 2;
    }
    
    public String getHistoryType() {
        return type;
    }
}
