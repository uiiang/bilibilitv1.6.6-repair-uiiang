---
name: "video-detail-pgc-ugc-analysis"
description: "视频详情页PGC/UGC视频处理逻辑分析和BUG修复。包含入口类型、视频类型、数据流程分析和测试用例。Invoke when analyzing or fixing PGC/UGC video handling in VideoDetailActivity."
---

# 视频详情页PGC/UGC视频处理逻辑分析

## 一、问题描述

视频详情页在处理不同入口、不同视频类型时存在逻辑混乱，导致以下问题：
1. PGC视频从UGC入口进入时，历史记录不显示进度
2. PGC视频从收藏夹入口进入时，无法正常播放
3. PGC视频播放列表不完整
4. 花絮视频播放错误（播放剧集而非花絮）

## 二、入口类型分析

### 2.1 入口参数
| 入口类型 | Intent参数 | 数据来源 |
|----------|------------|----------|
| 首页推荐 | `bundle_ac_id` (avid) | UGC API |
| 搜索(视频) | `bundle_ac_id` (avid) | UGC API |
| 搜索(番剧) | `bundle_season_id` | PGC API |
| 搜索(影视) | `bundle_season_id` | PGC API |
| 历史记录 | `bundle_ac_id` 或 `bundle_season_id` | 混合 |
| 收藏夹 | `bundle_ac_id` (avid) | UGC API |
| 稍后再看 | `bundle_ac_id` (avid) | UGC API |

### 2.2 入口判断逻辑 (VideoDetailActivity.java:722-755)
```java
this.mSeasonId = extras.getString(SEASON_ID_KEY);
this.s = extras.getLong(D);
if (!TextUtils.isEmpty(this.mSeasonId)) {
    mIsPgcMode = true;  // PGC入口
} else if (this.s > 0) {
    mIsPgcMode = false; // UGC入口
}
```

## 三、视频类型分析

### 3.1 视频类型
| 类型 | 标识字段 | API |
|------|----------|-----|
| UGC单P视频 | 无特殊标识 | /x/web-interface/view |
| UGC多P视频 | `pages[]` 多个 | /x/web-interface/view |
| UGC合集视频 | `season_id` 或 `sections[]` | /x/web-interface/view |
| PGC剧集 | `redirect_url` 或 `bangumi_info` | /pgc/view/web/season |
| PGC花絮 | `redirect_url` 指向ep | /x/web-interface/view |

### 3.2 PGC视频识别逻辑 (VideoDetailActivity.java:1770-1780)
```java
private boolean isPgcVideo(BiliVideoDetail biliVideoDetail) {
    if (!TextUtils.isEmpty(biliVideoDetail.mRedirectUrl)) {
        return true;
    }
    if (biliVideoDetail.mBangumiInfo != null) {
        return true;
    }
    return false;
}
```

## 四、数据流程分析

### 4.1 UGC入口流程
```
UGC入口 (avid)
    ↓
n2() → /x/web-interface/view?aid=xxx
    ↓
判断 isPgcVideo()
    ├── 是PGC → loadPgcInfo() → /pgc/view/web/season?season_id=xxx
    │               ↓
    │           updateBiliVideoDetailWithPgcInfo()
    │               ↓
    │           显示完整剧集列表
    │
    └── 不是PGC → 直接显示UGC视频
```

### 4.2 PGC入口流程
```
PGC入口 (season_id)
    ↓
loadPgcBySeasonId() → /pgc/view/web/season?season_id=xxx
    ↓
convertPgcToBiliVideoDetail()
    ↓
显示剧集列表
```

## 五、测试数据

测试数据目录: `json/测试数据/`

| 文件名 | 数据类型 | 用途 |
|--------|----------|------|
| 首页个性推荐返回结果视频列表数据.json | 入口数据 | 分析首页推荐入口参数 |
| 历史记录视频列表数据.json | 入口数据 | 分析历史记录入口参数(含PGC) |
| 收藏夹返回结果视频列表.json | 入口数据 | 分析收藏夹入口参数 |
| 稍后再看返回结果视频列表.json | 入口数据 | 分析稍后再看入口参数 |
| 搜索返回结果视频模式视频列表.json | 入口数据 | 分析搜索视频模式入口参数 |
| 搜索返回结果番剧模式视频列表.json | 入口数据 | 分析搜索番剧模式入口参数 |
| 搜索返回结果影视模式视频列表.json | 入口数据 | 分析搜索影视模式入口参数 |
| UGC单P有合集视频详情数据.json | 视频详情 | 分析UGC合集视频结构 |
| UGC多P无合集视频详情数据.json | 视频详情 | 分析UGC多P视频结构 |
| pgc剧集有兽焉的视频详情数据.json | 视频详情 | 分析PGC剧集结构 |
| pgc剧集凡人修仙传花絮的视频信息数据.json | 视频详情 | 分析PGC花絮视频结构 |

## 六、测试用例

### 6.1 入口×视频类型组合测试

| 序号 | 入口 | 视频类型 | 测试场景 | 预期结果 |
|------|------|----------|----------|----------|
| 1 | 首页推荐 | UGC单P | 点击视频卡片 | 正常显示视频详情 |
| 2 | 首页推荐 | UGC多P | 点击视频卡片 | 显示分P列表 |
| 3 | 首页推荐 | UGC合集 | 点击视频卡片 | 显示合集列表 |
| 4 | 首页推荐 | PGC剧集 | 点击视频卡片 | 显示剧集列表 |
| 5 | 搜索(视频) | UGC单P | 搜索后点击 | 正常显示视频详情 |
| 6 | 搜索(番剧) | PGC剧集 | 搜索后点击 | 显示剧集列表 |
| 7 | 搜索(影视) | 影视剧集 | 搜索后点击 | 显示剧集列表 |
| 8 | 历史记录 | UGC视频 | 有历史进度 | 显示继续播放 |
| 9 | 历史记录 | PGC剧集 | 有历史进度 | 显示继续播放 |
| 10 | 收藏夹 | UGC视频 | 点击收藏项 | 正常显示视频详情 |
| 11 | 收藏夹 | PGC剧集 | 点击收藏项 | 显示剧集列表 |
| 12 | 稍后再看 | UGC视频 | 点击稍后再看项 | 正常显示视频详情 |

### 6.2 PGC视频特殊测试

| 序号 | 测试场景 | 测试步骤 | 预期结果 |
|------|----------|----------|----------|
| 1 | PGC剧集从UGC入口进入 | 1.从稍后再看进入PGC剧集<br>2.检查历史进度 | 显示历史进度 |
| 2 | PGC剧集播放列表 | 1.进入PGC剧集详情<br>2.点击播放按钮<br>3.按上键显示播放列表 | 显示完整剧集列表 |
| 3 | PGC剧集分集播放 | 1.进入PGC剧集详情<br>2.点击某一集 | 正常播放该集 |
| 4 | PGC花絮播放 | 1.从UGC入口进入PGC花絮<br>2.点击播放 | 播放花絮而非剧集 |
| 5 | PGC会员剧集 | 1.非会员进入会员剧集<br>2.点击播放 | 提示需要会员 |

## 七、已知问题及修复状态

| 问题 | 状态 | 修复内容 |
|------|------|----------|
| PGC视频历史记录不显示进度 | 已修复 | 添加 `ep_id` 参数到历史记录查询 |
| PGC视频播放失败 | 已修复 | 添加 `ep_id` 参数到播放URL请求 |
| 花絮视频播放错误 | 已修复 | 保留原始 `mPageList` 不覆盖 |
| 播放列表不完整 | 待验证 | 需要测试确认 |
| 历史记录PGC入口参数错误 | 已修复 | 使用 `kid` 作为 `season_id` 而非 `oid` |
| 入口类型判断逻辑混乱 | 已修复 | 增加 `EntryType` 枚举清晰区分入口类型 |

## 八、代码修改记录

### 8.1 已修改文件
- `VideoDetailActivity.java`: PGC/UGC视频处理逻辑，增加 `EntryType` 枚举
- `BiliVideoDetail.java`: 添加 `mEpisodeId` 字段
- `qh.java`: 添加 `ep_id` 参数到播放请求
- `HistoryVideoFragment.java`: 修复PGC视频入口参数

### 8.2 关键方法
- `m()`: 入口参数解析，设置 `EntryType`
- `n()`: 数据加载入口，根据 `EntryType` 分发
- `loadUgcByAvid()`: UGC视频加载 (原 `n2()`)
- `loadPgcBySeasonId()`: PGC视频加载
- `isPgcVideo()`: PGC视频识别
- `loadPgcInfo()`: 加载PGC剧集信息
- `updateBiliVideoDetailWithPgcInfo()`: 更新视频详情数据
- `loadHistory()`: 加载历史记录

### 8.3 2026-03-29 重构记录

#### 入口类型枚举 (VideoDetailActivity.java)
```java
public enum EntryType {
    UGC_BY_AVID,      // 通过 avid 进入的UGC视频
    PGC_BY_SEASON_ID  // 通过 season_id 进入的PGC视频
}
```

#### 数据加载流程
```
入口参数解析 m()
    ↓
设置 EntryType
    ↓
n() 根据 EntryType 分发
    ├── UGC_BY_AVID → loadUgcByAvid()
    │       ↓
    │   检测 isPgcVideo() → loadPgcInfo()
    │
    └── PGC_BY_SEASON_ID → loadPgcBySeasonId()
```

#### 历史记录入口修复 (HistoryVideoFragment.java)
```java
String business = history.getString("business");
if ("pgc".equals(business)) {
    // PGC视频：使用 kid 作为 season_id
    long seasonId = item.getLongValue("kid");
    activity.startActivity(VideoDetailActivity.Companion.a(context, String.valueOf(seasonId)));
} else {
    // UGC视频：使用 oid 作为 avid
    long avid = history.getLongValue("oid");
    activity.startActivity(VideoDetailActivity.Companion.a(context, avid));
}
```

## 九、后续工作

1. **代码逻辑梳理**: 深度分析入口参数传递和视频类型判断逻辑
2. **测试用例验证**: 按测试用例逐个验证功能
3. **BUG修复**: 修复发现的问题
4. **回归测试**: 确保不引入新问题

## 十、注意事项

1. 修改代码时遵循 `code-modification-principles` skill
2. 新增资源ID必须在文件末尾追加
3. 优先修改Java文件，无Java文件才改Smali
4. 编译命令: `bash ./build.sh -p uii.ang.bilitv`
5. 使用 `Log.i()` 或 `LogUtil.i()` 打印日志
