package com.bilibili.tv.api.video;

import android.graphics.Rect;
import android.support.annotation.Keep;
import com.alibaba.fastjson.annotation.JSONField;
import java.util.List;

@Keep
public class VideoShot {
    @JSONField(name = "pvdata")
    private String pvdata;
    
    @JSONField(name = "img_x_len")
    private int img_x_len;
    
    @JSONField(name = "img_y_len")
    private int img_y_len;
    
    @JSONField(name = "img_x_size")
    private int img_x_size;
    
    @JSONField(name = "img_y_size")
    private int img_y_size;
    
    @JSONField(name = "image")
    private List<String> image;
    
    @JSONField(name = "index")
    private List<Integer> index;
    
    public String getPvdata() {
        return pvdata;
    }
    
    public int getImgXLen() {
        return img_x_len > 0 ? img_x_len : 10;
    }
    
    public int getImgYLen() {
        return img_y_len > 0 ? img_y_len : 10;
    }
    
    public int getImgXSize() {
        return img_x_size > 0 ? img_x_size : 160;
    }
    
    public int getImgYSize() {
        return img_y_size > 0 ? img_y_size : 90;
    }
    
    public List<String> getImage() {
        return image;
    }
    
    public List<Integer> getIndex() {
        return index;
    }
    
    public void setPvdata(String pvdata) {
        this.pvdata = pvdata;
    }
    
    public void setImgXLen(int img_x_len) {
        this.img_x_len = img_x_len;
    }
    
    public void setImgYLen(int img_y_len) {
        this.img_y_len = img_y_len;
    }
    
    public void setImgXSize(int img_x_size) {
        this.img_x_size = img_x_size;
    }
    
    public void setImgYSize(int img_y_size) {
        this.img_y_size = img_y_size;
    }
    
    public void setImage(List<String> image) {
        this.image = image;
    }
    
    public void setIndex(List<Integer> index) {
        this.index = index;
    }
    
    public int getSnapshotIndex(int timeSeconds) {
        if (index == null || index.isEmpty()) {
            return -1;
        }
        
        for (int i = 1; i < index.size(); i++) {
            if (index.get(i) > timeSeconds) {
                return i - 1;
            }
        }
        
        return index.size() - 1;
    }
    
    public String getImageUrl(int snapshotIndex) {
        if (image == null || image.isEmpty()) {
            return null;
        }
        
        int imagesPerSheet = getImgXLen() * getImgYLen();
        int sheetIndex = snapshotIndex / imagesPerSheet;
        
        if (sheetIndex < image.size()) {
            String url = image.get(sheetIndex);
            if (url.startsWith("//")) {
                url = "https:" + url;
            }
            return url;
        }
        
        return null;
    }
    
    public Rect getSnapshotRect(int snapshotIndex) {
        int imagesPerSheet = getImgXLen() * getImgYLen();
        int posInSheet = snapshotIndex % imagesPerSheet;
        
        int row = posInSheet / getImgXLen();
        int col = posInSheet % getImgXLen();
        
        return new Rect(
            col * getImgXSize(),
            row * getImgYSize(),
            (col + 1) * getImgXSize(),
            (row + 1) * getImgYSize()
        );
    }
    
    public java.util.List<VideoShotItem> getAllShots() {
        java.util.List<VideoShotItem> items = new java.util.ArrayList<>();
        if (index == null || index.isEmpty()) {
            return items;
        }
        
        // 检测开头是否有两个连续的0，如果是则跳过第二个0的时间点
        boolean hasDoubleZeroAtStart = index.size() >= 2 && index.get(0) == 0 && index.get(1) == 0;
        
        int imageIndex = 0; // 图片索引从0开始连续递增
        for (int i = 0; i < index.size(); i++) {
            // 如果开头有两个0，跳过第二个0的时间点（i==1）
            if (hasDoubleZeroAtStart && i == 1) {
                continue;
            }
            items.add(new VideoShotItem(index.get(i), imageIndex));
            imageIndex++;
        }
        
        return items;
    }
    
    public int getTotalDuration() {
        if (index == null || index.isEmpty()) {
            return 0;
        }
        return index.get(index.size() - 1);
    }
}
