package bl;

import com.alibaba.fastjson.JSONObject;

/**
 * 课程收藏目录实现
 * 包装 JSONObject
 */
public class CourseFavoriteFolder implements FavoriteFolder {
    private final JSONObject course;
    
    public CourseFavoriteFolder(JSONObject course) {
        this.course = course;
    }
    
    @Override
    public String getTitle() {
        return course.getString("title");
    }
    
    @Override
    public String getCover() {
        return course.getString("cover");
    }
    
    @Override
    public int getCount() {
        return course.getIntValue("ep_count");
    }
    
    @Override
    public long getId() {
        return course.getLong("season_id");
    }
    
    @Override
    public int getType() {
        return 3; // 课程收藏
    }
    
    public JSONObject getCourse() {
        return course;
    }
}
