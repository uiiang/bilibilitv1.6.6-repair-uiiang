package bl;

import com.alibaba.fastjson.JSONObject;

/**
 * 订阅合集目录实现
 * 包装 JSONObject
 */
public class CollectionFavoriteFolder implements FavoriteFolder {
    private final JSONObject folder;
    
    public CollectionFavoriteFolder(JSONObject folder) {
        this.folder = folder;
    }
    
    @Override
    public String getTitle() {
        return folder.getString("title");
    }
    
    @Override
    public String getCover() {
        return folder.getString("cover");
    }
    
    @Override
    public int getCount() {
        return folder.getIntValue("media_count");
    }
    
    @Override
    public long getId() {
        // 返回 season_id（id 字段），用于 getFavoriteUserSeason API
        return folder.getLong("id");
    }
    
    @Override
    public int getType() {
        return 2; // 订阅合集
    }
    
    public JSONObject getFolder() {
        return folder;
    }
    
    public long getFid() {
        // 返回 fid，用于 getFavoriteSearchedVideoList API
        return folder.getLong("fid");
    }
    
    public long getMid() {
        // 返回 mid，用于 getFavoriteSearchedVideoList API
        return folder.getLong("mid");
    }
}
