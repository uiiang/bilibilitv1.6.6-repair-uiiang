package mybl;

import com.alibaba.fastjson.annotation.JSONField;

public class FavoriteFolder {
    private long id;
    private long fid;
    private long mid;
    private String title;
    @JSONField(name = "fav_state")
    private int favState;
    @JSONField(name = "media_count")
    private int mediaCount;
    private int attr;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getFid() {
        return fid;
    }

    public void setFid(long fid) {
        this.fid = fid;
    }

    public long getMid() {
        return mid;
    }

    public void setMid(long mid) {
        this.mid = mid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getFavState() {
        return favState;
    }

    public void setFavState(int favState) {
        this.favState = favState;
    }

    public int getMediaCount() {
        return mediaCount;
    }

    public void setMediaCount(int mediaCount) {
        this.mediaCount = mediaCount;
    }

    public int getAttr() {
        return attr;
    }

    public void setAttr(int attr) {
        this.attr = attr;
    }

    public boolean isFavored() {
        return favState == 1;
    }
}
