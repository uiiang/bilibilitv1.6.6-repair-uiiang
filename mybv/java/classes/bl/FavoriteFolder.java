package bl;

/**
 * 统一收藏目录模型接口
 * 用于统一视频收藏、订阅合集、课程收藏的目录数据
 */
public interface FavoriteFolder {
    /**
     * 获取目录标题
     */
    String getTitle();
    
    /**
     * 获取封面图
     */
    String getCover();
    
    /**
     * 获取视频数量
     */
    int getCount();
    
    /**
     * 获取目录ID
     */
    long getId();
    
    /**
     * 获取目录类型
     * 1: 视频收藏
     * 2: 订阅合集
     * 3: 课程收藏
     */
    int getType();
}
