package mybl;

import com.alibaba.fastjson.annotation.JSONField;

public class RelationTagItem {
    private long tagid;
    private String name;
    @JSONField(name = "count")
    private int count;
    private boolean selected;

    public long getTagid() {
        return tagid;
    }

    public void setTagid(long tagid) {
        this.tagid = tagid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    public String getDisplayName() {
        if (tagid == 0) {
            return name;
        }
        return name + "(" + count + ")";
    }
}
