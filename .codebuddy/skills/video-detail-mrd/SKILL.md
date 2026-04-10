---
name: "video-detail-mrd"
description: "视频详情页完整业务逻辑MRD文档。包含入口类型、PGC/UGC处理、播放历史、分集列表、互动功能、焦点导航等所有业务细节。Invoke when working on VideoDetailActivity or discussing video detail page requirements."
---

# 视频详情页完整业务逻辑MRD文档

## 一、页面概述

视频详情页（VideoDetailActivity）是Bilibili TV客户端的核心页面，负责展示视频/番剧的详细信息、提供播放入口、展示分集列表、相关推荐等功能。该页面业务逻辑极其复杂，涉及多种视频类型、多种入口方式、复杂的焦点导航等。

**代码位置**: `mybv/java/classes/com/bilibili/tv/ui/video/VideoDetailActivity.java`

**代码版本**: v2.5-fixDataIndex

---

## 二、入口类型与参数传递

### 2.1 入口类型枚举

```java
public enum EntryType {
    UGC_BY_AVID,        // 通过avid进入UGC视频
    PGC_BY_SEASON_ID    // 通过seasonId进入PGC视频
}
```

### 2.2 参数传递方式

#### 2.2.1 UGC视频入口（通过avid）

```java
// 方式1：仅传递avid
Intent intent = VideoDetailActivity.Companion.a(context, avid);

// 方式2：传递avid + 预加载封面
Intent intent = VideoDetailActivity.Companion.a(context, avid, coverUrl);
```

**参数说明**:
- `bundle_ac_id`: 视频的avid（long类型）
- `preload_cover`: 预加载封面URL（可选，用于优化加载体验）

#### 2.2.2 PGC视频入口（通过seasonId）

```java
// 方式1：仅传递seasonId
Intent intent = VideoDetailActivity.Companion.a(context, seasonId);

// 方式2：传递seasonId + 预加载封面
Intent intent = VideoDetailActivity.Companion.a(context, seasonId, coverUrl);

// 方式3：通过int类型seasonId
Intent intent = VideoDetailActivity.Companion.aForSeason(context, seasonId);
```

**参数说明**:
- `bundle_season_id`: 番剧的seasonId（String类型）
- `preload_cover`: 预加载封面URL（可选）

### 2.3 参数解析逻辑

```java
private final void m() {
    Intent intent = getIntent();
    Bundle extras = intent.getExtras();
    
    this.mSeasonId = extras.getString(SEASON_ID_KEY);  // 获取seasonId
    this.s = extras.getLong(D);                         // 获取avid
    this.preloadCoverUrl = extras.getString("preload_cover");  // 获取预加载封面
    
    if (!TextUtils.isEmpty(this.mSeasonId)) {
        mEntryType = EntryType.PGC_BY_SEASON_ID;
        mIsPgcMode = true;
    } else if (this.s > 0) {
        mEntryType = EntryType.UGC_BY_AVID;
        mIsPgcMode = false;
    } else {
        // 参数无效，提示并关闭
        lr.a(this, R.string.video_not_exist);
        finish();
    }
}
```

---

## 三、视频类型处理逻辑

### 3.1 视频类型分类

#### 3.1.1 UGC视频（User Generated Content）
- 普通用户上传的视频
- 通过avid访问
- API: `https://api.bilibili.com/x/web-interface/view?aid={avid}`

#### 3.1.2 PGC视频（Professional Generated Content）
- 番剧、电影、纪录片等专业内容
- 通过seasonId访问
- API: `http://api.bilibili.com/pgc/view/app/season?season_id={seasonId}`

### 3.2 数据加载流程

#### 3.2.1 UGC视频加载流程

```
1. loadUgcByAvid()
   ↓
2. API请求: getVideoInfo(avid)
   ↓
3. VideoApiParser3解析数据
   ↓
4. 检测是否为PGC视频
   - 是: loadPgcInfo() → 转PGC流程
   - 否: requestHistoryForUgc() → 并行加载历史
   ↓
5. updateAllUIForUgc() → 更新UI
```

**关键代码**:
```java
private final void loadUgcByAvid() {
    LoadingImageView loadingImageView = this.p;
    if (loadingImageView != null) {
        loadingImageView.a();  // 显示加载动画
    }
    
    ((MyBiliApiService) vo.a(MyBiliApiService.class))
        .getVideoInfo(this.s)
        .a(new VideoApiParser3())
        .a(this.A);  // 回调处理
}
```

#### 3.2.2 PGC视频加载流程

```
1. loadPgcBySeasonId()
   ↓
2. loadPgcSeasonInfo(seasonId)
   ↓
3. API请求: getPgcSeasonInfo(signedUrl)
   ↓
4. 解析PgcInfo数据
   ↓
5. convertPgcToBiliVideoDetail() → 转换为统一数据结构
   ↓
6. showPgcInfo() → 显示PGC信息
```

**关键代码**:
```java
private void loadPgcSeasonInfo(String seasonId, final PgcLoadCallback callback) {
    Map<String, String> params = new HashMap<>();
    params.put("access_key", accessKey);
    params.put("season_id", seasonId);
    params.put("season_type", "1");
    params.put("platform", "android");
    
    SignedQuery signedQuery = LibBili.a(params);
    String signedUrl = "http://api.bilibili.com/pgc/view/app/season?" + signedQuery.toString();
    
    retrofit2.Call<JSONObject> call = 
        ((MyBiliApiService) vo.a(MyBiliApiService.class)).getPgcSeasonInfo(signedUrl);
    retrofit2.Response<JSONObject> response = call.execute();
    
    PgcInfo pgcInfo = JSON.parseObject(result.toJSONString(), PgcInfo.class);
    callback.onSuccess(pgcInfo);
}
```

### 3.3 UGC检测到PGC的处理

**场景**: 用户从UGC入口进入，但视频实际是PGC内容（如番剧片段）

**处理逻辑**:
```java
if (mEntryType == EntryType.UGC_BY_AVID && isPgcVideo(biliVideoDetail)) {
    // 检测到PGC视频，加载PGC信息
    VideoDetailActivity.this.u = biliVideoDetail;
    VideoDetailActivity.this.loadPgcInfo(biliVideoDetail);
    return;
}
```

**判断PGC视频的条件**:
```java
private boolean isPgcVideo(BiliVideoDetail biliVideoDetail) {
    // 条件1: 有重定向URL
    if (!TextUtils.isEmpty(biliVideoDetail.mRedirectUrl)) {
        return true;
    }
    // 条件2: 有番剧信息
    if (biliVideoDetail.mBangumiInfo != null) {
        return true;
    }
    return false;
}
```

---

## 四、视频信息展示

### 4.1 基础信息展示

#### 4.1.1 UGC视频信息

| 信息项 | 数据来源 | 显示位置 | 格式化 |
|--------|----------|----------|--------|
| 标题 | biliVideoDetail.mTitle | video_detail_title | 原文显示 |
| UP主 | biliVideoDetail.getAuthor() | video_uper_container | 带头像、可点击 |
| 播放量 | biliVideoDetail.getPlays() | video_detail_play_count | 数字格式化（如1.2万） |
| 弹幕数 | biliVideoDetail.getDanmakus() | video_detail_danmaku | 数字格式化 |
| 时长 | biliVideoDetail.mDuration | video_detail_duration | HH:MM:SS 或 MM:SS |
| 发布时间 | biliVideoDetail.mCreatedTimestamp | video_detail_uptime | 日期格式化 |
| 封面 | biliVideoDetail.mCover | blur + gradient_mask | 模糊背景+渐变遮罩 |

#### 4.1.2 PGC视频信息

**额外展示项**:
| 信息项 | 数据来源 | 显示位置 | 说明 |
|--------|----------|----------|------|
| 评分 | pgcInfo.rating | pgc_rating | 如"9.8分" |
| 类型 | pgcInfo.type | pgc_type | 如"番剧"、"电影" |
| 地区 | pgcInfo.area | pgc_area | 如"日本" |
| 最新剧集 | pgcInfo.newEp.indexShow | pgc_new_ep | 如"更新至第12话" |
| 徽章 | pgcInfo.badgeInfo | 动态添加 | 如"会员专享" |

**关键代码**:
```java
private void showPgcInfo(PgcInfo pgcInfo) {
    pgcInfoContainer.setVisibility(View.VISIBLE);
    
    // 评分
    if (pgcRating != null && pgcInfo.rating != null) {
        pgcRating.setText(pgcInfo.getRatingString());
    }
    
    // 类型
    if (pgcType != null) {
        pgcType.setText(pgcInfo.getTypeName());
    }
    
    // 地区
    if (pgcArea != null) {
        pgcArea.setText(pgcInfo.getAreaString());
    }
    
    // 最新剧集
    if (pgcNewEp != null && pgcInfo.newEp != null) {
        pgcNewEp.setText(pgcInfo.newEp.indexShow);
    }
    
    // 徽章
    if (pgcInfo.badgeInfo != null) {
        TextView badgeView = new TextView(this);
        badgeView.setText(pgcInfo.badgeInfo.text);
        // 设置背景色、圆角等样式
        pgcInfoContainer.addView(badgeView);
    }
}
```

### 4.2 UP主/制作方展示

#### 4.2.1 单UP主展示

```java
if (!TextUtils.isEmpty(authorName)) {
    addStaffView(staffContainer, authorName, mid, faceUrl, 0, 1);
}
```

#### 4.2.2 多UP主/制作方展示（联合投稿）

```java
List<BiliVideoDetail.Staff> staffList = biliVideoDetail.getStaffList();
for (int i = 0; i < staffList.size(); i++) {
    BiliVideoDetail.Staff staff = staffList.get(i);
    addStaffView(staffContainer, staff.name, staff.mid, staff.face, i, totalCount);
}
```

**交互逻辑**:
- 默认只显示第一个UP主名称
- 焦点移到某个UP主时，显示该UP主名称
- 失去焦点时，恢复默认状态（只显示第一个）
- 点击跳转到UP主空间页

**关键代码**:
```java
wrapper.setOnFocusChangeListener(new View.OnFocusChangeListener() {
    @Override
    public void onFocusChange(View v, boolean hasFocus) {
        wrapper.setUpEnabled(hasFocus);
        if (hasMultipleStaff && !isFirstStaff) {
            staffView.setVisibility(hasFocus ? View.VISIBLE : View.GONE);
        }
    }
});
```

---

## 五、播放历史功能

### 5.1 历史记录加载

#### 5.1.1 UGC视频历史加载

**API**: `https://api.bilibili.com/x/player/wbi/v2?bvid={bvid}&cid={cid}`

**流程**:
```
1. requestHistoryForUgc()
   ↓
2. 并行请求历史API（不阻塞UI）
   ↓
3. 解析last_play_cid和last_play_time
   ↓
4. 设置biliVideoDetail.mHistory
   ↓
5. updateHistoryDisplay() → 更新历史显示
```

**关键代码**:
```java
private void requestHistoryForUgc(final BiliVideoDetail biliVideoDetail, final Runnable callback) {
    // 如果已有历史记录（从其他来源获取），直接回调
    if (biliVideoDetail.mHistory != null) {
        if (callback != null) {
            callback.run();
        }
        return;
    }
    
    // 并行请求历史
    new Thread(new Runnable() {
        @Override
        public void run() {
            TreeMap<String, String> params = new TreeMap<>();
            params.put("bvid", finalBvid);
            params.put("cid", String.valueOf(finalCid));
            
            String signedQuery = WbiSigner.getInstance().encWbiAndGetQuery(params);
            String fullUrl = "https://api.bilibili.com/x/player/wbi/v2?" + signedQuery;
            
            // 请求并解析
            long lastPlayCid = data.getLongValue("last_play_cid");
            int lastPlayTime = data.getIntValue("last_play_time") / 1000;
            
            if (lastPlayCid > 0) {
                BiliVideoDetail.History history = new BiliVideoDetail.History();
                history.mCid = lastPlayCid;
                history.mProgress = lastPlayTime;
                biliVideoDetail.mHistory = history;
            }
        }
    }).start();
}
```

#### 5.1.2 PGC视频历史加载

**来源**: PGC API返回的user_status.progress

```java
if (pgcInfo.userStatus != null && pgcInfo.userStatus.progress != null) {
    PgcInfo.Progress progress = pgcInfo.userStatus.progress;
    long lastEpId = progress.lastEpId;
    int lastTime = progress.lastTime;
    
    // 根据epId找到对应的cid
    long historyCid = 0;
    for (PgcInfo.Episode ep : pgcInfo.episodes) {
        if (ep.id == lastEpId) {
            historyCid = ep.cid;
            break;
        }
    }
    
    if (historyCid > 0) {
        BiliVideoDetail.History history = new BiliVideoDetail.History();
        history.mCid = historyCid;
        history.mProgress = lastTime;
        biliVideoDetail.mHistory = history;
    }
}
```

### 5.2 历史显示逻辑

#### 5.2.1 无历史记录

**显示**:
- "开始播放"按钮
- "无痕"按钮（带复选框）

**布局**:
```
[开始播放] [无痕 ☐] [展开]
```

#### 5.2.2 有历史记录

**显示**:
- "继续播放"按钮
- "重播"按钮
- 历史信息：上次播放到 + 标题 + 进度

**布局**:
```
[继续播放] [重播] [展开]
上次播放到 P2 : 第二集  12:34
```

**显示规则**:
```java
private final void updateHistoryDisplay(BiliVideoDetail biliVideoDetail) {
    long cid = biliVideoDetail.mHistory.mCid;
    int progress = biliVideoDetail.mHistory.mProgress;
    String title = findTitleByCid(cid, biliVideoDetail);
    
    // 显示历史信息
    historyPlayBtn.setText("继续播放");
    rePlayBtn.setText("重播");
    
    if (historyLabel != null) {
        historyLabel.setVisibility(View.VISIBLE);
        historyLabel.setText("上次播放到");
    }
    
    // 标题显示逻辑
    boolean hasMultipleEpisodes = biliVideoDetail.mPageList.size() > 1;
    if (hasTitle && hasMultipleEpisodes) {
        historyTitle.setText(title);
        historyTitle.setVisibility(View.VISIBLE);
    } else {
        historyTitle.setVisibility(View.GONE);
    }
    
    // 进度显示逻辑
    if (progress == -1) {
        historyProgress.setText("已看完");
    } else if (progress > 0) {
        historyProgress.setText(formatProgressTime(progress));
    } else {
        historyProgress.setText("00:00");
    }
    historyProgress.setVisibility(View.VISIBLE);
}
```

### 5.3 无痕播放模式

**功能**: 不记录本次播放进度

**实现**:
```java
public static boolean sNoHistoryPlayMode = false;  // 全局静态变量

noHistoryPlayBtnLayout.setOnClickListener(new View.OnClickListener() {
    @Override
    public void onClick(View v) {
        boolean newState = !noHistoryPlayCheckBox.isChecked();
        noHistoryPlayCheckBox.setChecked(newState);
        sNoHistoryPlayMode = newState;  // 保存到全局
    }
});
```

**播放时使用**:
```java
if (noHistoryPlayCheckBox != null) {
    sNoHistoryPlayMode = noHistoryPlayCheckBox.isChecked();
}
playVideo(biliVideoDetail, 0, 0);  // 从头开始播放
```

### 5.4 播放入口逻辑

#### 5.4.1 继续播放

```java
historyPlayBtnLayout.setOnClickListener(new View.OnClickListener() {
    @Override
    public void onClick(View v) {
        if (noHistoryPlayCheckBox != null) {
            sNoHistoryPlayMode = noHistoryPlayCheckBox.isChecked();
        }
        if (biliVideoDetail.mHistory != null) {
            long historyCid = biliVideoDetail.mHistory.mCid;
            int historyProgressVal = biliVideoDetail.mHistory.mProgress;
            playVideo(biliVideoDetail, historyCid, historyProgressVal);
        } else {
            playVideo(biliVideoDetail, 0, 0);
        }
    }
});
```

#### 5.4.2 重播

```java
rePlayBtnLayout.setOnClickListener(new View.OnClickListener() {
    @Override
    public void onClick(View v) {
        if (biliVideoDetail.mHistory != null) {
            long historyCid = biliVideoDetail.mHistory.mCid;
            biliVideoDetail.mHistory.mProgress = 0;  // 重置进度
            playVideo(biliVideoDetail, historyCid, 0);
        } else {
            playVideo(biliVideoDetail, 0, 0);
        }
    }
});
```

#### 5.4.3 播放视频核心逻辑

```java
private final void playVideo(BiliVideoDetail biliVideoDetail, long cid, int progress) {
    // 1. 查找目标分P
    BiliVideoDetail.Page targetPage = null;
    if (cid > 0 && biliVideoDetail.mPageList != null) {
        for (BiliVideoDetail.Page page : biliVideoDetail.mPageList) {
            if (page.mCid == cid) {
                targetPage = page;
                break;
            }
        }
    }
    
    // 2. 如果没找到，使用第一个分P
    if (targetPage == null && biliVideoDetail.mPageList != null) {
        targetPage = biliVideoDetail.mPageList.get(0);
    }
    
    // 3. 预加载封面到内存缓存
    abd.prefetchCoverToMemoryCache(this, biliVideoDetail.mCover);
    
    // 4. 跳转到播放页
    xg.a(this, biliVideoDetail, targetPage, new Bundle(), REQUEST_CODE_PLAY_VIDEO, progress);
}
```

---

## 六、分集列表功能

### 6.1 分集列表类型

#### 6.1.1 分P列表（UGC视频多P）

**数据来源**: `biliVideoDetail.mPageList`

**显示条件**: `mPageList.size() > 1`

**标题**: "选集"

**点击行为**: 切换到对应分P播放

#### 6.1.2 合集列表（UGC合集）

**数据来源**: `biliVideoDetail.sectionInfoList`

**显示条件**: `sectionInfoList` 不为空且总集数 > 1

**特点**:
- 可能有多个section（如"正片"、"花絮"等）
- 包含当前视频的section排在最前面
- 每个section有独立的标题

#### 6.1.3 选集列表（PGC番剧）

**数据来源**: `pgcInfo.episodes`

**显示条件**: `episodes.size() > 1`

**标题**: "选集"

**点击行为**: 切换到对应剧集播放

#### 6.1.4 多季列表（PGC多季）

**数据来源**: `pgcInfo.seasons`

**显示条件**: `seasons` 不为空

**标题**: "多季列表"

**点击行为**: 跳转到对应季的详情页

### 6.2 分集列表UI实现

#### 6.2.1 使用VideoListSection组件

所有分集列表统一使用`VideoListSection`组件，支持：
- 标题显示
- 横向滚动列表
- 当前播放项高亮
- 导航标签（01-10, 11-20等）
- 焦点记忆

#### 6.2.2 UGC分P列表实现

```java
private void createUgcEpisodesSectionView(BiliVideoDetail biliVideoDetail) {
    VideoListSection listSection = new VideoListSection(this);
    listSection.setSectionId(300);  // 固定ID
    
    int totalPages = biliVideoDetail.mPageList.size();
    listSection.setTitle("选集", totalPages);
    
    // 构建数据列表
    List<Object> list = new ArrayList<>();
    for (int i = 0; i < biliVideoDetail.mPageList.size(); i++) {
        BiliVideoDetail.Page page = biliVideoDetail.mPageList.get(i);
        BiliVideoDetail detail = convertUgcPageToBiliVideoDetail(page, biliVideoDetail);
        list.add(detail);
    }
    
    // 设置数据和绑定器
    PageVideoDetailBinder binder = new PageVideoDetailBinder(false);
    listSection.setData(list, binder);
    
    // 设置当前播放项
    if (this.s > 0) {
        listSection.setCurrentVideoId(this.s);
    }
    if (historyCid > 0) {
        listSection.setCurrentCid(historyCid);
    }
    
    // 点击事件
    listSection.setOnVideoClickListener(new OnVideoClickListener() {
        @Override
        public void onVideoClicked(Object data, int position) {
            BiliVideoDetail detail = (BiliVideoDetail) data;
            if (detail.sourcePage != null) {
                xg.a(VideoDetailActivity.this, u, detail.sourcePage, 
                     new Bundle(), REQUEST_CODE_PLAY_VIDEO, -1);
            }
        }
    });
    
    // 添加到容器
    seasonsContainer.addView(listSection, 0);
}
```

#### 6.2.3 UGC合集列表实现

```java
private void showEpisodes(BiliVideoDetail biliVideoDetail) {
    // 清空之前的列表
    seasonsContainer.removeAllViews();
    seasonSectionViews.clear();
    
    // 检查是否有sections数据
    if (biliVideoDetail.sectionInfoList == null || sectionInfoList.isEmpty()) {
        seasonsContainer.setVisibility(View.GONE);
        return;
    }
    
    // 计算总集数
    int totalEpisodesCount = 0;
    for (SectionInfo sectionInfo : biliVideoDetail.sectionInfoList) {
        if (sectionInfo.episodes != null) {
            totalEpisodesCount += sectionInfo.episodes.size();
        }
    }
    
    // 只有一集则隐藏
    if (totalEpisodesCount <= 1) {
        seasonsContainer.setVisibility(View.GONE);
        return;
    }
    
    // 找到包含当前视频的section索引
    int currentVideoSectionIndex = -1;
    long currentAvid = this.s;
    for (int i = 0; i < sectionInfoList.size(); i++) {
        // 遍历查找当前视频
        if (found) {
            currentVideoSectionIndex = i;
            break;
        }
    }
    
    // 排序：包含当前视频的section放在最前面
    List<Integer> sortedIndices = new ArrayList<>();
    if (currentVideoSectionIndex >= 0) {
        sortedIndices.add(currentVideoSectionIndex);
        for (int i = 0; i < sectionInfoList.size(); i++) {
            if (i != currentVideoSectionIndex) {
                sortedIndices.add(i);
            }
        }
    }
    
    // 创建各个section
    for (int displayIndex = 0; displayIndex < sortedIndices.size(); displayIndex++) {
        int originalIndex = sortedIndices.get(displayIndex);
        SectionInfo sectionInfo = sectionInfoList.get(originalIndex);
        createSeasonSectionView(sectionInfo, displayIndex, totalSections, biliVideoDetail);
    }
}
```

#### 6.2.4 PGC选集列表实现

```java
private void createPgcEpisodesSectionView(PgcInfo pgcInfo) {
    VideoListSection listSection = new VideoListSection(this);
    listSection.setSectionId(200);
    
    int totalEpisodes = pgcInfo.episodes.size();
    listSection.setTitle("选集", totalEpisodes);
    
    // 构建数据列表
    List<Object> list = new ArrayList<>();
    for (int i = 0; i < pgcInfo.episodes.size(); i++) {
        PgcInfo.Episode episode = pgcInfo.episodes.get(i);
        BiliVideoDetail detail = convertEpisodeToBiliVideoDetail(episode);
        
        // 处理vt文本（播放量等）
        if (episode.statForUnity != null) {
            JSONObject vtObj = episode.statForUnity.getJSONObject("vt");
            if (vtObj != null) {
                detail.vtText = vtObj.getString("pure_text");
            }
        }
        
        list.add(detail);
    }
    
    // 设置数据和绑定器
    PageVideoDetailBinder binder = new PageVideoDetailBinder(true);  // true表示PGC
    listSection.setData(list, binder);
    
    // 设置当前播放项
    if (this.s > 0) {
        listSection.setCurrentVideoId(this.s);
    }
    if (pgcHistoryCid > 0) {
        listSection.setCurrentCid(pgcHistoryCid);
    }
    
    // 点击事件
    listSection.setOnVideoClickListener(new OnVideoClickListener() {
        @Override
        public void onVideoClicked(Object data, int position) {
            BiliVideoDetail detail = (BiliVideoDetail) data;
            if (detail.sourceEpisode != null) {
                PgcInfo.Episode episode = (PgcInfo.Episode) detail.sourceEpisode;
                BiliVideoDetail.Page targetPage = convertEpisodeToPage(episode, position);
                xg.a(VideoDetailActivity.this, u, targetPage, 
                     new Bundle(), REQUEST_CODE_PLAY_VIDEO, -1);
            }
        }
    });
    
    // 设置导航标签
    setupNavigationTagsForSection(listSection, totalEpisodes);
    
    // 滚动到当前播放项
    listSection.scrollToCurrentVideo();
    
    // 添加到容器
    seasonsContainer.addView(listSection, 0);
}
```

### 6.3 导航标签功能

**功能**: 在分集列表上方显示导航标签（如"01-10", "11-20"），快速定位到对应范围的视频。

**实现**:
```java
private void setupNavigationTagsForSection(VideoListSection listSection, int totalCount) {
    // 设置导航标签
    listSection.setupNavigationTags(totalCount);
    
    // 标签焦点监听
    listSection.setOnNavTagFocusListener(new OnNavTagFocusListener() {
        @Override
        public void onNavTagFocus(int sectionId, int tagIndex, int videoStartPosition) {
            // 记录焦点位置
            seasonSectionNavTagFocusPositions.put(sectionId, tagIndex);
            
            // 如果当前视频不在可见范围，滚动列表
            int currentVideoPosition = listSection.getFocusPosition();
            int rangeStart = videoStartPosition;
            int rangeEnd = videoStartPosition + 9;
            
            if (currentVideoPosition < rangeStart || currentVideoPosition > rangeEnd) {
                scrollVideoListToPosition(listSection, videoStartPosition);
            }
        }
    });
    
    // 标签点击监听
    listSection.setOnNavTagClickListener(new OnNavTagClickListener() {
        @Override
        public void onNavTagClick(int sectionId, int tagIndex, int videoStartPosition) {
            seasonSectionNavTagFocusPositions.put(sectionId, tagIndex);
            scrollVideoListToPosition(listSection, videoStartPosition);
        }
    });
    
    // 更新当前选中的标签
    int currentVideoPosition = listSection.getFocusPosition();
    if (currentVideoPosition >= 0) {
        listSection.updateNavTagSelection(currentVideoPosition);
    }
}
```

---

## 七、互动功能

### 7.1 互动按钮布局

#### 7.1.1 收起状态（默认）

```
[展开] 
```

#### 7.1.2 展开状态

```
[点赞] [投币] [收藏] [稍后再看] [详情]
```

**交互逻辑**:
- 点击"展开"按钮：显示所有互动按钮，焦点移到"点赞"
- 互动按钮失去焦点后100ms：如果没有其他互动按钮获得焦点，自动收起

**实现**:
```java
private void showInteractionButtons() {
    expandBtn.setVisibility(View.GONE);
    likeBtn.setVisibility(View.VISIBLE);
    coinBtn.setVisibility(View.VISIBLE);
    favoriteBtn.setVisibility(View.VISIBLE);
    watchLaterBtn.setVisibility(View.VISIBLE);
    infoBtn.setVisibility(View.VISIBLE);
}

private void hideInteractionButtons() {
    likeBtn.setVisibility(View.GONE);
    coinBtn.setVisibility(View.GONE);
    favoriteBtn.setVisibility(View.GONE);
    watchLaterBtn.setVisibility(View.GONE);
    infoBtn.setVisibility(View.GONE);
    expandBtn.setVisibility(View.VISIBLE);
}

// 焦点监听器中
if (!hasFocus) {
    view.postDelayed(new Runnable() {
        @Override
        public void run() {
            if (!isFinishing() && !isAnyInteractionButtonFocused()) {
                hideInteractionButtons();
            }
        }
    }, 100);
}
```

### 7.2 点赞功能

#### 7.2.1 普通点赞

**API**: `POST /x/web-interface/archive/like`

**参数**:
- `aid`: 视频avid
- `like`: 0-点赞, 1-取消点赞
- `csrf`: CSRF token

**实现**:
```java
private final void likeVideo(int like) {
    if (this.B) return;  // 防止重复点击
    this.B = true;
    
    mg a2 = mg.a(this);
    String cookie = CookieUtil.getFullCookieWithDevice(a2);
    String csrf = CookieUtil.getBiliJct(a2);
    
    ((MyBiliApiService) vo.a(MyBiliApiService.class))
        .likeVideo(this.s, like, csrf, cookie)
        .a(new LikeResponse());
}

public final class LikeResponse extends vn<JSONObject> {
    @Override
    public void a(JSONObject response) {
        VideoDetailActivity.this.B = false;
        BiliVideoDetail biliVideoDetail = VideoDetailActivity.this.u;
        
        if (biliVideoDetail != null) {
            // 切换点赞状态
            boolean wasLiked = biliVideoDetail.isLikeVideo();
            biliVideoDetail.setLikeStatus(!wasLiked);
            
            // 更新点赞数
            if (!wasLiked) {
                biliVideoDetail.increaseLikes(1);
            } else {
                biliVideoDetail.increaseLikes(-1);
            }
        }
        
        VideoDetailActivity.this.o();  // 更新UI
        
        // 提示
        if (biliVideoDetail.isLikeVideo()) {
            lr.b(getApplicationContext(), "点赞成功");
        } else {
            lr.b(getApplicationContext(), "取消点赞成功");
        }
    }
}
```

#### 7.2.2 三连（长按点赞）

**API**: `POST /x/web-interface/archive/like/triple`

**效果**: 同时点赞、投币、收藏

**实现**:
```java
@Override
public final boolean onLongClick(View view) {
    if (!biliAccount.a()) {
        lr.a(this, R.string.bangumi_not_login);
        LoginActivity.Companion.a(this, H);
        return true;
    }
    
    int id = view.getId();
    if (id == R.id.video_detail_like) {
        VideoDetailActivity.this.tripleVideo();
    }
    return true;
}

private final void tripleVideo() {
    if (this.B) return;
    this.B = true;
    
    String cookie = CookieUtil.getFullCookieWithDevice(a2);
    String csrf = CookieUtil.getBiliJct(a2);
    
    ((MyBiliApiService) vo.a(MyBiliApiService.class))
        .tripleVideo(this.s, csrf, cookie)
        .a(new TripleResponse());
}

public final class TripleResponse extends vn<JSONObject> {
    @Override
    public void a(JSONObject response) {
        VideoDetailActivity.this.B = false;
        BiliVideoDetail biliVideoDetail = VideoDetailActivity.this.u;
        JSONObject data = response.getJSONObject("data");
        int multiply = data.getIntValue("multiply");  // 投币数量
        
        if (biliVideoDetail != null) {
            biliVideoDetail.setLikeStatus(true);
            biliVideoDetail.setCoinStatus(true);
            biliVideoDetail.setFavoriteStatus(true);
            biliVideoDetail.increaseCoins(multiply);
        }
        
        VideoDetailActivity.this.o();
        lr.b(getApplicationContext(), "三连推荐成功");
    }
}
```

### 7.3 投币功能

#### 7.3.1 普通投币

**API**: `POST /x/web-interface/coin/add`

**参数**:
- `aid`: 视频avid
- `multiply`: 投币数量（1或2）
- `select_like`: 是否同时点赞（0-否, 1-是）
- `csrf`: CSRF token

**实现**:
```java
private final void coinVideo(int multiply, int select_like) {
    if (this.B) return;
    this.B = true;
    
    String cookie = CookieUtil.getFullCookieWithDevice(a2);
    String csrf = CookieUtil.getBiliJct(a2);
    
    ((MyBiliApiService) vo.a(MyBiliApiService.class))
        .coinVideo(this.s, multiply, select_like, csrf, cookie)
        .a(new CoinResponse());
}

public final class CoinResponse extends vn<JSONObject> {
    @Override
    public void a(JSONObject response) {
        VideoDetailActivity.this.B = false;
        BiliVideoDetail biliVideoDetail = VideoDetailActivity.this.u;
        JSONObject data = response.getJSONObject("data");
        boolean isLike = data.getBooleanValue("like");
        
        if (biliVideoDetail != null) {
            biliVideoDetail.setCoinStatus(true);
            biliVideoDetail.increaseCoins(1);
            if (isLike) {
                biliVideoDetail.setLikeStatus(true);
                biliVideoDetail.increaseCoins(1);  // 额外投币？
            }
        }
        
        VideoDetailActivity.this.o();
        
        if (isLike) {
            lr.b(getApplicationContext(), "投币成功，感谢您的支持");
        } else {
            lr.b(getApplicationContext(), "投币成功啦");
        }
    }
}
```

#### 7.3.2 长按投币

**效果**: 投2个币 + 同时点赞

```java
if (id == R.id.video_detail_coin) {
    VideoDetailActivity.this.coinVideo(2, 1);
}
```

### 7.4 收藏功能

#### 7.4.1 收藏菜单

**实现**: 使用`FavoriteMenuDialog`弹窗

```java
private void showFavoriteMenu() {
    if (this.u == null) return;
    
    FavoriteMenuDialog dialog = new FavoriteMenuDialog(this, this.s, this.u);
    dialog.setOnFavoriteStatusChangedListener(new OnFavoriteStatusChangedListener() {
        @Override
        public void onFavoriteStatusChanged(boolean isFavorited) {
            if (u != null) {
                u.setFavoriteStatus(isFavorited);
            }
            o();  // 更新UI
        }
    });
    dialog.show();
}
```

**FavoriteMenuDialog功能**:
- 显示所有收藏夹列表
- 支持多选收藏/取消收藏
- 显示当前视频已收藏的收藏夹
- 支持创建新收藏夹

#### 7.4.2 添加到收藏夹

**API**: `POST /api/favourite/add`

**参数**:
- `access_key`: 访问令牌
- `fid`: 收藏夹ID
- `aid`: 视频avid

```java
private final void p(String fid) {
    if (this.B) return;
    this.B = true;
    
    ((BiliFavoriteVideoApiService) vo.a(BiliFavoriteVideoApiService.class))
        .addVideoToList(accessKey, fid, this.s, "0")
        .a(new l());
}

public final class l extends vn<Void> {
    @Override
    public void a(Void r2) {
        VideoDetailActivity.this.B = false;
        BiliVideoDetail biliVideoDetail = VideoDetailActivity.this.u;
        if (biliVideoDetail != null) {
            biliVideoDetail.setFavoriteStatus(true);
        }
        VideoDetailActivity.this.o();
        lr.a(getApplicationContext(), R.string.video_favored1);
    }
}
```

#### 7.4.3 从收藏夹移除

**API**: `POST /api/favourite/del`

```java
private final void q(String fid) {
    if (this.B) return;
    this.B = true;
    
    ((BiliFavoriteVideoApiService) vo.a(BiliFavoriteVideoApiService.class))
        .deleteVideoFromList(accessKey, fid, this.s)
        .a(new m());
}
```

### 7.5 稍后再看

**API**: `POST /x/v2/history/toview/add`

**参数**:
- `aid`: 视频avid
- `csrf`: CSRF token

```java
if (id == R.id.video_detail_watch_later) {
    if (!biliAccount.a()) {
        lr.a(this, "账号未登录，无法点击");
        return;
    }
    
    String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
    String csrf = CookieUtil.getBiliJct(biliAccount);
    
    ((BiliPlayerHistoryService) vo.a(BiliPlayerHistoryService.class))
        .addVideoToviews(biliVideoDetail3.mAvid, csrf, cookie)
        .a(new AddToViewResponse());
}

public final class AddToViewResponse extends vm<JSONObject> {
    @Override
    public void onSuccess(JSONObject response) {
        if (response != null) {
            String message = response.getString("message");
            if ("OK".equals(message)) {
                lr.a(VideoDetailActivity.this, "已将视频添加到稍后再看");
            } else {
                lr.a(VideoDetailActivity.this, "添加稍后再看失败");
            }
        }
    }
}
```

### 7.6 详情信息

**功能**: 跳转到视频详情信息页（VideoDetailInfoActivity）

**传递参数**:
- `avid`: 视频ID
- `description`: 视频简介
- `cover`: 封面URL
- `url`: 视频链接

```java
if (id == R.id.video_detail_info || id == R.id.video_detail_more_btn) {
    startActivity(VideoDetailInfoActivity.Companion.a(
        this, 
        this.s, 
        biliVideoDetail.mDescription, 
        biliVideoDetail.mCover,
        "http://www.bilibili.com/video/av" + biliVideoDetail.mAvid
    ));
    ok.a("tv_video_view_click_infomore", new String[0]);
}
```

### 7.7 互动状态加载

**API**: `GET /x/web-interface/archive/relation`

**返回**:
- `like`: 是否已点赞
- `favorite`: 是否已收藏
- `coin`: 投币数量

```java
private final void loadArchiveRelation(final BiliVideoDetail biliVideoDetail) {
    if (!isLoggedIn) return;
    
    String sessdata = a2.getSESSDATA();
    String bvid = biliVideoDetail.mBvid;
    String cookie = "SESSDATA=" + sessdata;
    
    ((MyBiliApiService) vo.a(MyBiliApiService.class))
        .getArchiveRelation(bvid, cookie)
        .a(new vn<JSONObject>() {
            @Override
            public void a(JSONObject jsonObject) {
                boolean like = jsonObject.getBooleanValue("like");
                boolean favorite = jsonObject.getBooleanValue("favorite");
                int coin = jsonObject.getIntValue("coin");
                
                BiliVideoDetail.RequestUser requestUser = finalDetail.mRequestUser;
                if (requestUser == null) {
                    requestUser = new BiliVideoDetail.RequestUser();
                    finalDetail.mRequestUser = requestUser;
                }
                requestUser.mLike = like;
                requestUser.mFavorite = favorite;
                requestUser.mCoin = coin > 0;
                
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        VideoDetailActivity.this.o();  // 更新UI
                    }
                });
            }
        });
}
```

### 7.8 互动状态UI更新

```java
private final void o() {
    BiliVideoDetail biliVideoDetail = this.u;
    if (biliVideoDetail != null) {
        // 更新点赞状态
        ImageView likeImg = (ImageView) d(R.id.video_detail_like_img);
        if (likeImg != null) {
            likeImg.setBackgroundResource(
                biliVideoDetail.isLikeVideo() ? 
                R.drawable.ic_like_hightlight : R.drawable.ic_like
            );
        }
        TextView likeText = (TextView) d(R.id.video_detail_like_text);
        if (likeText != null) {
            likeText.setText(biliVideoDetail.isLikeVideo() ? "已点赞" : "点赞");
        }
        
        // 更新投币状态
        ImageView coinImg = (ImageView) d(R.id.video_detail_coin_img);
        if (coinImg != null) {
            coinImg.setBackgroundResource(
                biliVideoDetail.isCoinVideo() ? 
                R.drawable.ic_coin_hightlight : R.drawable.ic_coin
            );
        }
        TextView coinText = (TextView) d(R.id.video_detail_coin_text);
        if (coinText != null) {
            coinText.setText(biliVideoDetail.isCoinVideo() ? "已投币" : "投币");
        }
        
        // 更新收藏状态
        ImageView favoriteImg = this.k;
        if (favoriteImg != null) {
            favoriteImg.setBackgroundResource(
                biliVideoDetail.isFavoriteVideo() ? 
                R.drawable.ic_favorite_hightlight : R.drawable.ic_favorite
            );
        }
        TextView favoriteText = this.l;
        if (favoriteText != null) {
            favoriteText.setText(
                biliVideoDetail.isFavoriteVideo() ? 
                R.string.video_favorited : R.string.video_favorite
            );
        }
    }
}
```

---

## 八、推荐视频与标签

### 8.1 相关视频推荐

**API**: `GET /x/web-interface/archive/related`

**参数**: `aid` - 视频avid

**实现**:
```java
private void loadRelatedVideosAndTags() {
    final long aid = VideoDetailActivity.this.s;
    
    ((MyBiliApiService) vo.a(MyBiliApiService.class))
        .getRelatedVideos(aid)
        .a(new RelatedVideoParser())
        .a(new vn<List<BiliVideoDetail>>() {
            @Override
            public void a(List<BiliVideoDetail> relatedList) {
                if (relatedList == null || relatedList.isEmpty()) {
                    // 隐藏相关视频区域
                    i.setVisibility(View.GONE);
                    r.setVisibility(View.GONE);
                    return;
                }
                
                // 创建相关视频列表
                createRelateVideoSectionView(relatedList);
            }
            
            @Override
            public void onError(Throwable th) {
                i.setVisibility(View.GONE);
                r.setVisibility(View.GONE);
            }
        });
}
```

**显示逻辑**:
- 使用VideoListSection组件
- 标题: "相关推荐"
- 点击跳转到对应视频详情页

### 8.2 视频标签

**API**: `GET /x/tag/archive/tags`

**参数**: `aid` - 视频avid

**实现**:
```java
((MyBiliApiService) vo.a(MyBiliApiService.class))
    .getVideoTags(aid)
    .a(new TagParser())
    .a(new vn<List<BiliVideoDetail.Tag>>() {
        @Override
        public void a(List<BiliVideoDetail.Tag> tagList) {
            if (tagList == null || tagList.isEmpty()) {
                return;
            }
            
            // 构建标签Map
            HashMap<String, Integer> hashMap = new HashMap<>(tagList.size());
            for (BiliVideoDetail.Tag tag : tagList) {
                hashMap.put(tag.name, Integer.valueOf(tag.id));
            }
            
            // 更新标签适配器
            g gVar = VideoDetailActivity.this.x;
            if (gVar != null) {
                gVar.a(hashMap);
            }
        }
    });
```

**显示逻辑**:
- 横向滚动标签列表
- 显示前N个标签（根据宽度计算）
- 点击跳转到标签搜索页

**标签适配器**:
```java
final class g extends RecyclerView.a<RecyclerView.v> {
    private final ArrayList<String> b = new ArrayList<>();
    private final HashMap<String, Integer> c = new HashMap<>();
    
    public final void a(HashMap<String, Integer> hashMap) {
        this.b.clear();
        
        TextPaint textPaint = new TextPaint();
        int maxWidth = adl.b(R.dimen.px_500);
        int tagWidth = adl.b(R.dimen.px_68);
        int totalWidth = 0;
        
        // 根据宽度计算可显示的标签数量
        for (Map.Entry<String, Integer> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            totalWidth += ((int) textPaint.measureText(key)) + tagWidth;
            if (totalWidth >= maxWidth) {
                break;
            }
            this.b.add(key);
            this.c.put(key, entry.getValue());
        }
        
        d();  // 刷新列表
    }
}
```

**标签点击**:
```java
@Override
public void onClick(View view) {
    String str = (String) view.getTag();
    int tagId = (Integer) view.getTag(R.id.video_tag_id);
    
    VideoTagSearchActivity.Companion.a(a2, str, tagId);
    ok.a("tv_video_view_tag_click", PluginApk.PROP_NAME, str);
}
```

---

## 九、焦点导航逻辑

### 9.1 焦点位置记忆

**目的**: 用户从列表页返回详情页时，恢复之前的焦点位置

**实现变量**:
```java
// 分P列表焦点位置
private int epLayoutFocusPosition = 0;

// 合集列表焦点位置
private int episodesVideoFocusPosition = 0;

// 相关视频列表焦点位置
private int relateVideoFocusPosition = 0;

// 标签列表焦点位置
private int tagViewFocusPosition = 0;

// 多合集列表焦点位置（按sectionId存储）
private Map<Integer, Integer> seasonSectionFocusPositions = new HashMap<>();

// 导航标签焦点位置（按sectionId存储）
private Map<Integer, Integer> seasonSectionNavTagFocusPositions = new HashMap<>();
```

**保存焦点位置**:
```java
private void saveCurrentFocusPosition(View currentFocus) {
    if (currentFocus == null) return;
    
    // 检查是否在标签列表内
    if (currentFocus.getId() == R.id.tag_view || 
        (currentFocus.getParent() instanceof View && 
         ((View) currentFocus.getParent()).getId() == R.id.flow_tag_view)) {
        for (int i = 0; i < this.n.getChildCount(); i++) {
            if (this.n.getChildAt(i) == currentFocus) {
                tagViewFocusPosition = i;
                break;
            }
        }
    }
    // 检查是否在相关视频列表内
    else if (currentFocus.getParent() instanceof RecyclerView &&
             ((RecyclerView) currentFocus.getParent()).getId() == R.id.video_detail_relate_video) {
        RecyclerView recyclerView = (RecyclerView) currentFocus.getParent();
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            if (recyclerView.getChildAt(i) == currentFocus) {
                relateVideoFocusPosition = i;
                break;
            }
        }
    }
    // ... 其他列表类似
}
```

**恢复焦点位置**:
```java
private View restoreFocusPosition(RecyclerView recyclerView, int savedPosition) {
    if (recyclerView == null) return null;
    
    int childCount = recyclerView.getChildCount();
    if (childCount > 0) {
        int position = Math.min(savedPosition, childCount - 1);
        position = Math.max(0, position);
        return recyclerView.getChildAt(position);
    }
    return null;
}
```

### 9.2 列表类型识别

```java
private static final int LIST_TYPE_EP_LAYOUT = 1;           // 分P列表
private static final int LIST_TYPE_EPISODES_VIDEO = 2;      // 合集列表
private static final int LIST_TYPE_RELATE_VIDEO = 3;        // 相关视频列表
private static final int LIST_TYPE_TAG = 4;                 // 标签列表
private static final int LIST_TYPE_SEASON_SECTION = 5;      // 多合集列表
private static final int LIST_TYPE_NAV_TAG = 6;             // 导航标签列表

private int getCurrentListType(View currentFocus) {
    if (currentFocus == null) return -1;
    
    View view = currentFocus;
    while (view != null) {
        int id = view.getId();
        if (id == R.id.video_detail_ep_layout) {
            return LIST_TYPE_EP_LAYOUT;
        } else if (id == R.id.video_detail_episodes_video) {
            return LIST_TYPE_EPISODES_VIDEO;
        } else if (id == R.id.video_detail_relate_video) {
            return LIST_TYPE_RELATE_VIDEO;
        } else if (id == R.id.flow_tag_view) {
            return LIST_TYPE_TAG;
        } else if (id == R.id.season_section_recycler) {
            return LIST_TYPE_SEASON_SECTION;
        } else if (id == R.id.season_section_nav_tags) {
            return LIST_TYPE_NAV_TAG;
        }
        
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            view = (View) parent;
        } else {
            break;
        }
    }
    
    return -1;
}
```

### 9.3 列表间焦点导航

**导航逻辑**:
```
播放按钮区域
    ↓ (向下)
分P列表 / 合集列表
    ↓ (向下)
多合集列表（如果有）
    ↓ (向下)
导航标签（如果有）
    ↓ (向下)
相关视频列表
    ↓ (向下)
标签列表
```

**实现**:
```java
private boolean handleListFocusNavigation(View currentFocus, int direction) {
    int currentListType = getCurrentListType(currentFocus);
    if (currentListType < 0) return false;
    
    RecyclerView targetRecyclerView = null;
    int savedPosition = 0;
    
    if (direction == KeyEvent.KEYCODE_DPAD_DOWN) {
        if (currentListType == LIST_TYPE_EP_LAYOUT) {
            // 从分P列表向下移动
            if (seasonsContainer != null && seasonsContainer.getVisibility() == View.VISIBLE) {
                // 移动到第一个合集列表
                SeasonSectionView firstSection = seasonSectionViews.get(0);
                targetRecyclerView = firstSection.recyclerView;
                savedPosition = getSeasonSectionFocusPosition(firstSection.sectionId);
            } else if (this.r != null && this.r.getVisibility() == View.VISIBLE) {
                // 移动到相关视频列表
                targetRecyclerView = this.r;
                savedPosition = relateVideoFocusPosition;
            } else if (this.n != null && this.n.getVisibility() == View.VISIBLE) {
                // 移动到标签列表
                targetRecyclerView = this.n;
                savedPosition = tagViewFocusPosition;
            }
        }
        // ... 其他列表类型类似
    } else if (direction == KeyEvent.KEYCODE_DPAD_UP) {
        // 向上导航逻辑
    }
    
    // 恢复焦点
    if (targetRecyclerView != null) {
        View targetView = targetRecyclerView.getChildAt(savedPosition);
        if (targetView != null) {
            targetView.requestFocus();
            return true;
        }
    }
    
    return false;
}
```

### 9.4 播放按钮区域焦点导航

**向上导航**:
```java
if (valueOf2 == KeyEvent.KEYCODE_DPAD_UP) {
    if (currentFocus.getId() == R.id.video_detail_like || 
        currentFocus.getId() == R.id.video_detail_coin ||
        currentFocus.getId() == R.id.video_detail_favorite ||
        currentFocus.getId() == R.id.video_detail_watch_later) {
        
        // 移动到UP主/制作方区域
        if (staffContainer != null && staffContainer.getChildCount() > 0) {
            View firstStaff = staffContainer.getChildAt(0);
            if (firstStaff != null) {
                firstStaff.requestFocus();
                return true;
            }
        }
        
        // 移动到播放按钮
        if (historyPlayBtnLayout != null && historyPlayBtnLayout.getVisibility() == View.VISIBLE) {
            historyPlayBtnLayout.requestFocus();
            return true;
        }
    }
}
```

**向下导航**:
```java
if (valueOf2 == KeyEvent.KEYCODE_DPAD_DOWN) {
    if (currentFocus.getId() == R.id.video_detail_like || ...) {
        // 移动到分P列表
        if (this.o != null && this.o.getVisibility() == View.VISIBLE) {
            View epView = this.o.getChildAt(savedPosition);
            if (epView != null) {
                epView.requestFocus();
                return true;
            }
        }
        // 或移动到合集列表
        else if (seasonsContainer != null && seasonsContainer.getVisibility() == View.VISIBLE) {
            SeasonSectionView firstSection = seasonSectionViews.get(0);
            // ...
        }
    }
}
```

### 9.5 自动滚动逻辑

**目的**: 焦点移动时自动滚动页面，确保焦点项可见

**实现**:
```java
private void scrollToViewIfNeeded(View view) {
    if (scrollView == null || view == null) return;
    
    // 播放按钮区域和UP主区域滚动到顶部
    int viewId = view.getId();
    boolean isPlayButtonArea = viewId == R.id.video_history_play_btn_layout 
            || viewId == R.id.video_re_play_btn_layout 
            || viewId == R.id.video_no_history_play_btn_layout
            || viewId == R.id.video_detail_like 
            || viewId == R.id.video_detail_coin
            || viewId == R.id.video_detail_favorite 
            || viewId == R.id.video_detail_watch_later;
    
    if (isPlayButtonArea || isStaffArea) {
        scrollView.smoothScrollTo(0, 0);
        return;
    }
    
    // 计算目标视图位置
    Rect scrollBounds = new Rect();
    scrollView.getHitRect(scrollBounds);
    
    int[] scrollLocation = new int[2];
    scrollView.getLocationOnScreen(scrollLocation);
    
    int[] viewLocation = new int[2];
    view.getLocationOnScreen(viewLocation);
    
    int targetTop = viewLocation[1] - scrollLocation[1];
    int targetBottom = targetTop + view.getHeight();
    int scrollViewBottom = scrollView.getHeight();
    
    float density = getResources().getDisplayMetrics().density;
    int margin = (int) (50 * density);
    
    // 如果目标视图在上方不可见区域，向上滚动
    if (targetTop < margin) {
        int scrollY = scrollView.getScrollY();
        scrollView.smoothScrollTo(0, scrollY + targetTop - margin);
    }
    // 如果目标视图在下方不可见区域，向下滚动
    else if (targetBottom > scrollViewBottom - margin) {
        int scrollY = scrollView.getScrollY();
        scrollView.smoothScrollTo(0, scrollY + targetBottom - scrollViewBottom + margin);
    }
}
```

---

## 十、数据结构

### 10.1 BiliVideoDetail（视频详情）

**核心字段**:
```java
public class BiliVideoDetail {
    public long mAvid;                          // 视频ID
    public String mBvid;                        // BV号
    public String mTitle;                       // 标题
    public String mCover;                       // 封面URL
    public String mDescription;                 // 简介
    public int mDuration;                       // 时长（秒）
    public long mCreatedTimestamp;              // 发布时间戳
    public String mRedirectUrl;                 // 重定向URL（PGC视频）
    public String mFirstFrame;                  // 第一帧URL
    
    public BiliUser mOwner;                     // UP主信息
    public List<Staff> mStaffList;              // 联合投稿列表
    public Stat mStat;                          // 统计信息
    public RequestUser mRequestUser;            // 用户交互状态
    public BangumiInfo mBangumiInfo;            // 番剧信息
    public List<Page> mPageList;                // 分P列表
    public History mHistory;                    // 播放历史
    public List<SectionInfo> sectionInfoList;   // 合集列表
    public String season_title;                 // 合集标题
    
    // 交互状态
    public boolean isLikeVideo() { return mRequestUser != null && mRequestUser.mLike; }
    public boolean isCoinVideo() { return mRequestUser != null && mRequestUser.mCoin; }
    public boolean isFavoriteVideo() { return mRequestUser != null && mRequestUser.mFavorite; }
}
```

### 10.2 PgcInfo（PGC视频信息）

**核心字段**:
```java
public class PgcInfo {
    public long seasonId;                       // 季ID
    public String title;                        // 标题
    public String cover;                        // 封面URL
    public String evaluate;                     // 简介
    public int type;                            // 类型（1-番剧, 2-电影, 3-纪录片等）
    public Rating rating;                       // 评分
    public NewEp newEp;                         // 最新剧集
    public BadgeInfo badgeInfo;                 // 徽章信息
    public Stat stat;                           // 统计信息
    public UserStatus userStatus;               // 用户状态
    public List<Episode> episodes;              // 剧集列表
    public List<Season> seasons;                // 多季列表
    public List<Section> sections;              // 分段列表
    public Producer producer;                   // 制作方
    public UpInfo upInfo;                       // UP主信息
}
```

### 10.3 SeasonSectionView（合集列表视图）

```java
public static class SeasonSectionView {
    public TextView titleView;          // 标题视图
    public RecyclerView recyclerView;   // 列表视图
    public EpisodesVideoAdapter adapter; // 适配器
    public int sectionId;               // section ID
}
```

---

## 十一、关键业务流程

### 11.1 UGC视频详情页加载流程

```
1. 用户点击视频 → 传递avid
   ↓
2. VideoDetailActivity.onCreate()
   ↓
3. m() 解析参数，设置EntryType = UGC_BY_AVID
   ↓
4. a(Bundle) 调用n()
   ↓
5. n() 根据EntryType调用loadUgcByAvid()
   ↓
6. loadUgcByAvid() 请求API: getVideoInfo(avid)
   ↓
7. VideoApiParser3解析数据 → BiliVideoDetail
   ↓
8. 检测是否为PGC视频
   - 是: loadPgcInfo() → 转PGC流程
   - 否: requestHistoryForUgc() → 并行加载历史
   ↓
9. updateAllUIForUgc() 更新UI
   - 显示标题、UP主、播放量等
   - 显示分P列表/合集列表
   - 显示播放按钮
   - 加载互动状态
   - 加载相关视频和标签
   ↓
10. 页面展示完成
```

### 11.2 PGC视频详情页加载流程

```
1. 用户点击番剧 → 传递seasonId
   ↓
2. VideoDetailActivity.onCreate()
   ↓
3. m() 解析参数，设置EntryType = PGC_BY_SEASON_ID
   ↓
4. a(Bundle) 调用n()
   ↓
5. n() 根据EntryType调用loadPgcBySeasonId()
   ↓
6. loadPgcSeasonInfo() 请求API: getPgcSeasonInfo(seasonId)
   ↓
7. 解析JSON → PgcInfo
   ↓
8. convertPgcToBiliVideoDetail() 转换为统一数据结构
   ↓
9. showPgcInfo() 显示PGC信息
   - 显示评分、类型、地区等
   - 显示选集列表
   - 显示多季列表（如果有）
   - 显示播放按钮（带历史）
   ↓
10. 页面展示完成
```

### 11.3 播放视频流程

```
1. 用户点击播放按钮
   ↓
2. playVideo(biliVideoDetail, cid, progress)
   ↓
3. 查找目标分P
   - 如果cid > 0，查找对应分P
   - 否则使用第一个分P
   ↓
4. 预加载封面到内存缓存
   ↓
5. xg.a() 跳转到播放页
   - 传递: BiliVideoDetail, Page, Bundle, requestCode, progress
   ↓
6. 播放页播放视频
   ↓
7. 播放结束返回 → onActivityResult()
   ↓
8. 获取播放进度（last_cid, last_progress）
   ↓
9. 更新历史记录
   ↓
10. 更新历史显示
```

### 11.4 点赞/投币/收藏流程

```
1. 用户点击互动按钮
   ↓
2. 检查登录状态
   - 未登录: 提示登录，跳转登录页
   - 已登录: 继续
   ↓
3. 调用对应API
   - 点赞: likeVideo()
   - 投币: coinVideo()
   - 收藏: showFavoriteMenu()
   ↓
4. API返回结果
   ↓
5. 更新BiliVideoDetail中的状态
   ↓
6. 调用o()更新UI
   - 更新图标（高亮/普通）
   - 更新文字（已点赞/点赞）
   ↓
7. 显示提示信息
```

---

## 十二、特殊场景处理

### 12.1 视频不存在

**场景**: avid或seasonId无效

**处理**:
```java
if (!mIsPgcMode && this.s <= 0) {
    lr.a(this, R.string.video_not_exist);
    finish();
    return;
}
```

### 12.2 网络错误

**场景**: API请求失败

**处理**:
```java
@Override
public void onError(Throwable th) {
    LoadingImageView loadingImageView = VideoDetailActivity.this.p;
    if (loadingImageView != null) {
        loadingImageView.setRefreshError(false);  // 显示错误状态
    }
    
    String str = "net_error";
    // ... 错误上报
}
```

### 12.3 未登录

**场景**: 用户未登录时点击互动按钮

**处理**:
```java
mg a2 = mg.a(this);
if (!a2.a()) {  // 检查登录状态
    lr.a(this, R.string.bangumi_not_login);
    LoginActivity.Companion.a(this, H);  // 跳转登录页
    return;
}
```

### 12.4 防止重复点击

**实现**:
```java
private boolean B = false;  // 防重复点击标志

private final void likeVideo(int like) {
    if (this.B) return;  // 如果正在处理，直接返回
    this.B = true;       // 设置标志
    
    // ... API请求
    
    // 在回调中重置标志
    @Override
    public void a(JSONObject response) {
        VideoDetailActivity.this.B = false;
        // ... 处理结果
    }
    
    @Override
    public void onError(Throwable th) {
        VideoDetailActivity.this.B = false;  // 错误时也要重置
        // ... 错误处理
    }
}
```

### 12.5 Activity已销毁

**场景**: 异步回调时Activity已finish

**处理**:
```java
@Override
public boolean isCancel() {
    return VideoDetailActivity.this.isFinishing();
}

@Override
public void a(JSONObject jsonObject) {
    if (VideoDetailActivity.this.isFinishing()) {
        return;  // Activity已销毁，不处理
    }
    // ... 正常处理
}
```

---

## 十三、性能优化

### 13.1 预加载封面

**目的**: 从列表页传入封面URL，提前加载封面图片

**实现**:
```java
// 列表页传递封面URL
Intent intent = VideoDetailActivity.Companion.a(context, avid, coverUrl);

// 详情页接收并加载
if (!TextUtils.isEmpty(preloadCoverUrl) && this.b != null) {
    nv.a().a(preloadCoverUrl, this.b);
    if (this.gradientMaskView != null) {
        this.gradientMaskView.setVisibility(View.INVISIBLE);
    }
}
```

### 13.2 并行加载历史

**目的**: 历史加载不阻塞UI显示

**实现**:
```java
private void requestHistoryForUgc(final BiliVideoDetail biliVideoDetail, final Runnable callback) {
    new Thread(new Runnable() {
        @Override
        public void run() {
            // 在后台线程请求历史
            // ...
            
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    if (callback != null) {
                        callback.run();  // 回调更新UI
                    }
                }
            });
        }
    }).start();
}
```

### 13.3 封面内存缓存

**目的**: 播放时预加载封面到内存，提升播放页加载速度

**实现**:
```java
private final void playVideo(BiliVideoDetail biliVideoDetail, long cid, int progress) {
    // ...
    abd.prefetchCoverToMemoryCache(this, biliVideoDetail.mCover);
    xg.a(this, biliVideoDetail, targetPage, new Bundle(), REQUEST_CODE_PLAY_VIDEO, progress);
}
```

### 13.4 阻止自动抢焦

**问题**: 分集列表初始化时会自动抢焦点

**解决**:
```java
private boolean blockEpisodeAutoFocus = true;

// 初始化时阻止抢焦
if (this.blockEpisodeAutoFocus) {
    this.o.setDescendantFocusability(ViewGroup.FOCUS_BLOCK_DESCENDANTS);
}

// 用户操作时允许抢焦
VideoDetailActivity.this.blockEpisodeAutoFocus = false;
VideoDetailActivity.this.o.setDescendantFocusability(ViewGroup.FOCUS_AFTER_DESCENDANTS);
```

---

## 十四、埋点统计

### 14.1 页面打开

```java
ok.a("tv_video_view_open", new String[0]);
```

### 14.2 点击互动按钮

```java
// 点击详情
ok.a("tv_video_view_click_infomore", new String[0]);

// 点击相关视频
ok.a("tv_video_view_click_relate", new String[0]);

// 点击分P
ok.a("tv_video_view_click_part", new String[0]);

// 点击标签
ok.a("tv_video_view_tag_click", PluginApk.PROP_NAME, str);
```

### 14.3 API响应

```java
abi.a.a("tv_detail_view2_resp", 
    abi.a.a(
        String.valueOf(VideoDetailActivity.this.s),
        String.valueOf(mg.a(VideoDetailActivity.this).d()),
        "success",  // 或 "parse_error"
        "0"
    )
);
```

---

## 十五、相关类与组件

### 15.1 VideoListSection

**功能**: 统一的分集列表组件

**特性**:
- 支持标题显示
- 支持横向滚动
- 支持当前项高亮
- 支持导航标签
- 支持焦点记忆

### 15.2 FavoriteMenuDialog

**功能**: 收藏夹选择弹窗

**特性**:
- 显示所有收藏夹
- 支持多选
- 显示当前收藏状态
- 支持创建新收藏夹

### 15.3 VideoDetailInfoActivity

**功能**: 视频详情信息页

**显示内容**:
- 视频简介
- 标签列表
- 分P列表
- 相关推荐

### 15.4 VideoTagSearchActivity

**功能**: 标签搜索页

**参数**:
- 标签名称
- 标签ID

---

## 十六、注意事项

### 16.1 Cookie使用

**UGC API**: 使用Cookie认证（SESSDATA）

```java
String cookie = "SESSDATA=" + sessdata;
```

**PGC API**: 使用access_key认证

```java
params.put("access_key", accessKey);
```

### 16.2 WBI签名

**部分API需要WBI签名**:
```java
TreeMap<String, String> params = new TreeMap<>();
params.put("bvid", bvid);
params.put("cid", String.valueOf(cid));

String signedQuery = WbiSigner.getInstance().encWbiAndGetQuery(params);
String fullUrl = "https://api.bilibili.com/x/player/wbi/v2?" + signedQuery;
```

### 16.3 CSRF Token

**POST请求需要CSRF token**:
```java
String csrf = CookieUtil.getBiliJct(biliAccount);
```

### 16.4 数据转换

**PGC数据转换为UGC数据结构**:
```java
private BiliVideoDetail convertPgcToBiliVideoDetail(PgcInfo pgcInfo) {
    BiliVideoDetail detail = new BiliVideoDetail();
    detail.mTitle = pgcInfo.title;
    detail.mCover = pgcInfo.cover;
    // ... 转换各个字段
    return detail;
}
```

---

## 十七、常见问题

### 17.1 焦点丢失

**问题**: 从播放页返回后焦点丢失

**解决**: 使用焦点位置记忆机制

### 17.2 列表滚动位置错误

**问题**: 列表滚动位置不正确

**解决**: 使用scrollToDataPosition()方法精确滚动

### 17.3 历史记录不显示

**问题**: 历史记录加载失败

**解决**: 使用fallback机制，先尝试WBI API，失败后使用app API

### 17.4 PGC视频无法播放

**问题**: PGC视频播放失败

**解决**: 确保mFrom字段正确设置（"bangumi"或"movie"）

---

## 十八、未来优化方向

### 18.1 数据预加载

- 在列表页预加载部分详情数据
- 使用ViewModel保存数据，避免重复加载

### 18.2 焦点导航优化

- 简化焦点导航逻辑
- 使用统一的焦点管理器

### 18.3 UI性能优化

- 使用DiffUtil优化列表刷新
- 使用异步加载优化图片显示

### 18.4 代码重构

- 拆分Activity，使用Fragment
- 使用MVVM架构
- 抽取公共逻辑到基类

---

## 十九、总结

视频详情页是Bilibili TV客户端最复杂的页面之一，涉及：

1. **多种入口类型**: UGC和PGC两种不同的入口方式
2. **多种视频类型**: UGC视频、PGC视频、混合类型
3. **复杂的数据流**: API请求、数据解析、数据转换
4. **丰富的功能**: 播放、互动、收藏、推荐等
5. **复杂的焦点导航**: 多个列表间的焦点切换和记忆
6. **性能优化**: 预加载、并行加载、内存缓存

理解这些业务逻辑对于后续的开发和维护至关重要。本MRD文档详细记录了所有业务细节，可作为开发参考。

---

**文档版本**: v1.0
**最后更新**: 2026-04-08
**维护者**: AI Assistant
