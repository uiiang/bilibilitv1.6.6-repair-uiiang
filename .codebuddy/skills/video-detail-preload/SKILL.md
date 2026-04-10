---
name: "video-detail-preload"
description: "视频详情页预加载优化方案。从列表页传入基本信息先显示，同时请求API获取完整数据后更新。Invoke when optimizing VideoDetailActivity loading performance."
---

# 视频详情页预加载优化方案

## 一、方案可行性分析

### 1. 当前问题
- 用户进入详情页后需要等待API返回完整数据才能看到任何内容
- 网络慢时用户体验较差

### 2. 优化目标
- 从视频列表进入详情页时，传入基本信息（封面、标题、播放量等）
- 详情页立即显示这些基本信息，**不显示loading**
- 同时请求getVideoDetail接口和播放进度接口，数据返回后更新页面

### 3. 可行性评估
**完全可行**，原因：
- 列表页已经有这些基本信息（从API返回的数据中获取）
- 详情页的UI布局已经存在，只需要填充数据
- 可以实现"先显示后更新"的效果

## 二、技术方案

### 1. 需要传递的基本信息
| 字段 | 类型 | 说明 |
|------|------|------|
| avid | long | 视频ID（已有） |
| cover | String | 封面地址 |
| title | String | 标题 |
| plays | long | 播放量 |
| danmakus | long | 弹幕数 |
| duration | long | 时长（秒） |
| pubdate | long | 投稿时间 |
| ownerName | String | UP主名称 |
| ownerMid | long | UP主ID |
| ownerFace | String | UP主头像 |

### 2. 加载流程优化

#### 2.1 原流程
```
进入详情页 → 显示Loading → 等待API → 隐藏Loading → 显示UI
```

#### 2.2 新流程
```
进入详情页 → 解析Intent基本信息 → 立即显示UI（无Loading）
                                    ↓
                    ┌───────────────┴───────────────┐
                    ↓                               ↓
            请求getVideoDetail API           请求播放进度API
                    ↓                               ↓
            返回后更新完整数据              返回后显示播放按钮
```

### 3. 缺失信息处理策略

#### 3.1 字段缺失时的UI处理
| 字段 | 缺失时显示 |
|------|-----------|
| cover | 显示默认占位图或隐藏 |
| title | 显示"加载中..."或隐藏 |
| plays | 显示"--"或隐藏 |
| danmakus | 显示"--"或隐藏 |
| duration | 显示"--:--"或隐藏 |
| pubdate | 隐藏时间显示 |
| ownerName | 显示"未知UP主"或隐藏 |
| ownerMid | 不影响显示 |
| ownerFace | 显示默认头像或隐藏 |

#### 3.2 完全无预加载数据时
- 回退到原逻辑：显示Loading，等待API返回

#### 3.3 部分字段缺失时
- 有值的字段立即显示
- 缺失的字段显示占位符或隐藏
- API返回后补全所有字段

## 三、各入口数据结构分析

### 1. 数据类型分类

| 数据类型 | 包含入口 | 字段完整度 |
|----------|----------|------------|
| **BiliVideoDetail** | 相关视频推荐、收藏夹、稍后再看、视频历史、通用视频列表(aee) | ★★★★★ 完整 |
| **TagVideoDetail** | 标签搜索 | ★★★★☆ 几乎完整 |
| **BiliSpaceVideo** | UP主空间、UP主空间视频 | ★★★☆☆ 缺UP主信息 |
| **VideoItem** | 搜索结果视频 | ★★★☆☆ 缺UP主ID和头像 |
| **JSONObject** | 关注动态、每周必看 | ★★★★☆ 需解析 |
| **String (URI)** | 首页推荐、热门推荐 | ★☆☆☆☆ 只有avid |

### 2. 各入口详细分析

#### 2.1 BiliVideoDetail 类型入口（字段完整）
**可用字段：**
```java
mAvid          // 视频ID
mCover         // 封面
mTitle         // 标题
mStat.mPlays   // 播放量 (String)
mStat.mDanmakus // 弹幕数 (String)
mDuration      // 时长 (int, 秒)
mCreatedTimestamp // 投稿时间
mOwner.name    // UP主名称
mOwner.mid     // UP主ID
mOwner.face    // UP主头像
```

**涉及入口：**
| 文件 | 行号 | 说明 |
|------|------|------|
| VideoDetailActivity.java | 2463 | 相关视频推荐 |
| FavoriteVideoFragment.java | 787, 802 | 收藏夹 |
| VideoToviewActivity.java | 454 | 稍后再看 |
| VideoHistoryActivity.java | 614, 620 | 视频历史 |
| aee.java | 327 | 通用视频列表 |
| aef4.java | 249 | 视频列表 |
| aef2.java | 294 | 视频列表 |
| aef3.java | 242 | 视频列表 |

#### 2.2 TagVideoDetail 类型入口
**可用字段：**
```java
mAvid          // 视频ID
mCover         // 封面
mTitle         // 标题
mStat.mPlays   // 播放量 (String)
mStat.mDanmakus // 弹幕数 (String)
mDuration      // 时长 (long, 秒)
mCreatedTimestamp // 投稿时间
mOwner.name    // UP主名称
mOwner.mid     // UP主ID
mOwner.face    // UP主头像
```

**涉及入口：**
| 文件 | 行号 | 说明 |
|------|------|------|
| VideoTagSearchActivity.java | 526 | 标签搜索 |

#### 2.3 BiliSpaceVideo 类型入口
**可用字段：**
```java
param          // 视频ID (String, 需转long)
cover          // 封面
title          // 标题
play           // 播放量 (int)
danmaku        // 弹幕数 (String)
duration       // 时长 (int, 秒)
ctime          // 投稿时间 (Long)
// 缺少: ownerName, ownerMid, ownerFace
```

**涉及入口：**
| 文件 | 行号 | 说明 |
|------|------|------|
| AuthSpaceActivity.java | 548 | UP主空间 |
| AuthSpaceVideoFragment.java | 812, 820 | UP主空间视频 |
| AttentionDynamicFragment.java | 675, 680 | 关注动态Fragment(UP主视频模式) |

**注意：** UP主空间页面本身有UP主信息，可以从页面获取

#### 2.4 VideoItem 类型入口（搜索结果）
**可用字段：**
```java
param          // 视频ID (String, 需转long)
cover          // 封面
title          // 标题
play           // 播放量 (String)
danmaku        // 弹幕数 (String)
duration       // 时长 (String)
pubdate        // 投稿时间 (String)
author         // UP主名称
// 缺少: ownerMid, ownerFace
```

**涉及入口：**
| 文件 | 行号 | 说明 |
|------|------|------|
| SearchResultVideoFragment.java | 1207 | 搜索结果视频 |

#### 2.5 JSONObject 类型入口
**动态页面JSON结构：**
```json
{
  "module_dynamic": {
    "major": {
      "archive": {
        "aid": "视频ID",
        "stat": {
          "play": 播放量,
          "danmaku": 弹幕数
        },
        "title": "标题",
        "cover": "封面",
        "duration_text": "时长文本",
        "author": "UP主名称"
      }
    }
  }
}
```

**涉及入口：**
| 文件 | 行号 | 说明 |
|------|------|------|
| AttentionDynamicActivity.java | 534 | 关注动态 |
| AttentionDynamicFragment.java | 675 | 关注动态Fragment(全部动态模式) |
| WeeklyVideoFragment.java | 349 | 每周必看 |

#### 2.6 String (URI) 类型入口（只有avid）
**数据格式：**
```
"bilibili_yst://video/12345678" 或 "bilibili://video/12345678"
```

**涉及入口：**
| 文件 | 行号 | 说明 |
|------|------|------|
| MainRecommendFragment.java | 829 | 首页推荐 |
| MainHotFragment.java | 712 | 热门推荐 |

**问题：** 这些入口只有avid，没有其他预加载数据

#### 2.7 其他入口
| 文件 | 行号 | 说明 | 数据类型 |
|------|------|------|----------|
| BoxListInfoActivity.java | 368 | 收藏盒子 | BiliVideoDetail |
| BoxListInfoActivity2.java | 363 | 收藏盒子2 | JSONObject |
| adl.java | 467, 474 | 通用跳转 | 只有avid |
| HistoryVideoFragment.java | 627 | 历史记录(新版) | JSONObject |

### 3. 入口修改优先级与可行性

| 优先级 | 入口 | 数据完整度 | 修改难度 | 建议 |
|--------|------|------------|----------|------|
| **高** | 相关视频推荐 | 完整 | 低 | ✅ 优先修改 |
| **高** | 收藏夹 | 完整 | 低 | ✅ 优先修改 |
| **高** | 稍后再看 | 完整 | 低 | ✅ 优先修改 |
| **高** | 视频历史 | 完整 | 低 | ✅ 优先修改 |
| **高** | 标签搜索 | 完整 | 低 | ✅ 优先修改 |
| **中** | 搜索结果视频 | 缺UP主ID/头像 | 中 | ⚠️ 可修改 |
| **中** | UP主空间 | 缺UP主信息 | 中 | ⚠️ 可从页面获取 |
| **中** | 关注动态 | 需解析JSON | 中 | ⚠️ 可修改 |
| **中** | 每周必看 | 需解析JSON | 中 | ⚠️ 可修改 |
| **低** | 首页推荐 | 只有avid | 高 | ❌ 不建议修改 |
| **低** | 热门推荐 | 只有avid | 高 | ❌ 不建议修改 |

## 四、修改方案

### 4.1 VideoDetailActivity.a 类修改
```java
// 原方法（保持兼容）
public final Intent a(Context context, long i)

// 新增重载方法（带预加载数据）
public final Intent a(Context context, long avid, 
    String cover, String title, long plays, long danmakus,
    long duration, long pubdate, String ownerName, long ownerMid, String ownerFace)
```

### 4.2 VideoDetailActivity 修改
```java
// 新增成员变量
private PreloadData preloadData;
private boolean hasPreloadData = false;

// 预加载数据类
public static class PreloadData {
    public String cover;
    public String title;
    public long plays = -1;
    public long danmakus = -1;
    public long duration = -1;
    public long pubdate = -1;
    public String ownerName;
    public long ownerMid = -1;
    public String ownerFace;
    
    public boolean hasBasicData() {
        return title != null || cover != null;
    }
}

// 在 a(Bundle) 中解析预加载数据并立即显示
```

### 4.3 各入口调用示例

#### BiliVideoDetail 类型
```java
BiliVideoDetail video = (BiliVideoDetail) tag;
a.startActivity(VideoDetailActivity.Companion.a(a, 
    video.mAvid,
    video.mCover,
    video.mTitle,
    Long.parseLong(video.getPlays()),
    Long.parseLong(video.getDanmakus()),
    video.mDuration,
    video.mCreatedTimestamp,
    video.getAuthor(),
    video.getMid(),
    video.mOwner != null ? video.mOwner.face : null));
```

#### TagVideoDetail 类型
```java
TagVideoDetail video = (TagVideoDetail) tag;
a.startActivity(VideoDetailActivity.Companion.a(a, 
    video.mAvid,
    video.mCover,
    video.mTitle,
    Long.parseLong(video.getPlays()),
    Long.parseLong(video.getDanmakus()),
    video.mDuration,
    video.mCreatedTimestamp,
    video.getAuthor(),
    video.getMid(),
    video.getAvatar()));
```

#### BiliSpaceVideo 类型
```java
BiliSpaceVideo video = (BiliSpaceVideo) tag;
long aid = Long.parseLong(video.param);
a.startActivity(VideoDetailActivity.Companion.a(a, 
    aid,
    video.cover,
    video.title,
    video.play,
    Long.parseLong(video.danmaku != null ? video.danmaku : "0"),
    video.duration,
    video.ctime != null ? video.ctime : 0,
    ownerName,  // 从页面获取
    ownerMid,   // 从页面获取
    ownerFace)); // 从页面获取
```

#### VideoItem 类型（搜索结果）
```java
VideoItem video = (VideoItem) tag;
long avid = Long.parseLong(video.param);
a.startActivity(VideoDetailActivity.Companion.a(a, 
    avid,
    video.cover,
    video.title,
    Long.parseLong(video.play != null ? video.play : "0"),
    Long.parseLong(video.danmaku != null ? video.danmaku : "0"),
    parseDuration(video.duration),  // 需解析 "MM:SS" 格式
    parsePubdate(video.pubdate),    // 需解析日期字符串
    video.author,
    -1,  // 无ownerMid
    null)); // 无ownerFace
```

## 五、实现步骤

### 第一步：修改VideoDetailActivity
1. 添加PreloadData类
2. 修改a(Bundle)方法：解析预加载数据，有数据时直接显示UI不显示Loading
3. 添加showPreloadData()方法
4. 修改API回调：始终用API数据更新UI

### 第二步：修改VideoDetailActivity.a类
1. 添加新的Intent创建方法（带预加载数据）
2. 保持原方法兼容（不传预加载数据时走原逻辑显示Loading）

### 第三步：修改各入口调用
1. 从高优先级入口开始（BiliVideoDetail类型）
2. 每个入口传入已有的基本信息
3. 注意空值处理（如owner可能为null）

### 第四步：测试验证
1. 测试有预加载数据的入口：立即显示UI
2. 测试无预加载数据的入口：显示Loading后显示UI
3. 测试部分字段缺失：显示占位符
4. 验证API返回后数据更新正确

## 六、注意事项

1. **数据一致性**：预加载数据可能过期，API返回后需要更新
2. **空值处理**：部分视频可能缺少某些字段（如owner为null）
3. **兼容性**：保留原方法，支持不传预加载数据的情况
4. **内存占用**：预加载数据在API返回后可释放
5. **Loading显示逻辑**：只有无预加载数据时才显示Loading
6. **数据类型转换**：播放量、弹幕数可能是String类型，需要转换

## 七、遗漏细节补充

### 7.1 番剧跳转处理
**问题**：如果视频是番剧，API返回后会调用 `a(Activity, BiliVideoDetail)` 跳转到番剧详情页，并finish当前页面。

**处理方案**：
- 预加载数据无法判断是否为番剧（缺少 mRedirectUrl、mBangumiInfo 等字段）
- API返回后正常执行跳转逻辑，用户会看到短暂的预加载数据后被跳转
- 这是正常行为，不需要特殊处理

### 7.2 API错误处理
**问题**：如果API返回错误（如视频不存在、已删除、审核中），需要隐藏预加载数据，显示错误信息。

**处理方案**：
```java
@Override
public void onError(Throwable th) {
    // 如果有预加载数据，需要隐藏内容布局
    if (hasPreloadData && m != null) {
        m.setVisibility(View.GONE);
    }
    // 显示错误LoadingImageView
    if (p != null) {
        p.setVisibility(View.VISIBLE);
        p.setRefreshError(true);
    }
    // ... 原有错误处理逻辑
}
```

### 7.3 播放按钮状态
**问题**：预加载数据没有播放进度信息，无法显示正确的播放按钮状态。

**处理方案**：
- 预加载时显示默认的"开始播放"按钮
- `loadHistory()` API返回后更新播放按钮状态
- 这是异步加载，不影响用户体验

### 7.4 相关视频列表
**问题**：预加载数据没有相关视频列表。

**处理方案**：
- 预加载时相关视频区域不显示或显示占位
- API返回后填充相关视频列表
- 这是次要信息，延迟显示不影响用户体验

### 7.5 合集列表
**问题**：预加载数据没有合集信息。

**处理方案**：
- 预加载时合集区域不显示
- API返回后显示合集列表
- 这是次要信息，延迟显示不影响用户体验

### 7.6 点赞/投币/收藏状态
**问题**：预加载数据没有点赞、投币、收藏状态。

**处理方案**：
- 预加载时显示默认状态（未点赞、未投币、未收藏）
- `loadArchiveRelation()` API返回后更新状态
- 这是异步加载，不影响用户体验

### 7.7 焦点处理
**问题**：预加载数据显示后，焦点应该在哪里？

**处理方案**：
- 默认焦点在播放按钮上
- 保持原有焦点逻辑不变

### 7.8 UP主信息点击
**问题**：预加载数据显示的UP主信息，点击后能否跳转到UP主空间？

**处理方案**：
- 预加载时UP主信息可以点击
- 需要确保 ownerMid 有效才能跳转
- 如果 ownerMid 为 -1，点击无响应或显示提示

### 7.9 预加载数据时效性
**问题**：如果用户在列表页停留很久再点击，预加载数据可能已经过期。

**处理方案**：
- 这是可接受的行为
- API返回后会更新为最新数据
- 不需要特殊处理

### 7.10 视频删除/审核中
**问题**：如果视频已被删除或审核中，预加载数据显示后API返回错误。

**处理方案**：
- 按照API错误处理方案执行
- 隐藏预加载数据，显示错误信息

### 7.11 多个API并发加载
**问题**：详情页有多个API调用：getVideoDetail、loadHistory、loadArchiveRelation

**处理方案**：
```
进入详情页 → 显示预加载数据
                ↓
    ┌───────────┼───────────┐
    ↓           ↓           ↓
getVideoDetail loadHistory loadArchiveRelation
    ↓           ↓           ↓
更新完整数据  更新播放按钮  更新点赞状态
```

- 三个API并发请求
- 各自返回后更新对应UI
- 互不影响

### 7.12 预加载数据与API数据合并
**问题**：API返回后如何处理预加载数据？

**处理方案**：
```java
public void a(BiliVideoDetail biliVideoDetail) {
    // 清空预加载数据（释放内存）
    preloadData = null;
    hasPreloadData = false;
    
    // 用API数据完全覆盖UI
    // ... 原有逻辑
}
```

## 八、预期效果

- 有预加载数据时：进入详情页立即看到基本信息，无Loading
- 无预加载数据时：显示Loading，等待API返回
- API返回后：更新/补全所有数据
- 消除不必要的等待时间，提升用户体验
