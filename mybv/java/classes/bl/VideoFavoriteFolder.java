package bl;

import com.bilibili.tv.api.favorite.BiliFavoriteBox;

/**
 * 视频收藏目录实现
 * 包装 BiliFavoriteBox
 */
public class VideoFavoriteFolder implements FavoriteFolder {
    private final BiliFavoriteBox box;
    
    public VideoFavoriteFolder(BiliFavoriteBox box) {
        this.box = box;
    }
    
    @Override
    public String getTitle() {
        return box.getMName();
    }
    
    @Override
    public String getCover() {
        if (box.getVideoCovers() != null && !box.getVideoCovers().isEmpty()) {
            return box.getVideoCovers().get(0).getCover();
        }
        return null;
    }
    
    @Override
    public int getCount() {
        return box.getMCount();
    }
    
    @Override
    public long getId() {
        return box.getMId();
    }
    
    @Override
    public int getType() {
        return 1; // 视频收藏
    }
    
    public BiliFavoriteBox getBox() {
        return box;
    }
}
