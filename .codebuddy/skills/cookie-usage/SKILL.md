---
name: "cookie-usage"
description: "Bilibili API Cookie使用方法记录。包含Retrofit接口中Cookie传递方式、Cookie组成、工具类使用方法、access_key迁移方案。Invoke when working with API authentication, cookie handling, migrating access_key to cookie, or modifying API to use cookie."
---

# Cookie使用方法

## 一、Retrofit API接口中的Cookie使用方式

### 1. 动态传递Cookie（推荐）

使用`@Header("Cookie")`参数动态传递cookie：

```java
@GET("/x/web-interface/wbi/index/top/feed/rcmd")
vp<GeneralResponse<JSONObject>> recommendVideos(
    @Query("ps") int page_size, 
    @Query("fresh_idx") int fresh_idx,
    @Header("Cookie") String cookie);

@GET("/x/relation")
vp<GeneralResponse<JSONObject>> getRelation(
    @Query("fid") long fid, 
    @Header("Cookie") String cookie);

@FormUrlEncoded
@POST("/x/relation/modify")
vp<GeneralResponse<JSONObject>> modifyRelation(
    @Field("fid") long fid,
    @Field("act") int act, 
    @Field("re_src") int re_src, 
    @Field("csrf") String csrf, 
    @Header("Cookie") String cookie);
```

### 2. 静态设置Cookie

使用`@Headers`注解静态设置固定cookie值：

```java
@Headers("Cookie: buvid3=00000000-0000-0000-0000-00000000000000000infoc")
@GET("/x/web-interface/popular/series/one")
vp<GeneralResponse<JSONObject>> getWeeklyPrecious(@Query("number") long number);

@Headers("Cookie: buvid3=00000000-0000-0000-0000-00000000000000000infoc")
@GET("/x/web-interface/popular/series/list")
vp<GeneralResponse<JSONObject>> getWeeklySeriesList();
```

## 二、Cookie的组成

### 1. 认证Cookie（Essential Cookies）

存储在用户账号中，用于身份验证：

| Cookie名称 | 说明 |
|-----------|------|
| SESSDATA | 会话令牌，最重要的认证凭证 |
| bili_jct | CSRF Token，用于POST请求验证 |
| DedeUserID | 用户ID |
| DedeUserID__ckMd5 | 用户ID的MD5值 |
| sid | 会话ID |

### 2. 设备Cookie（Device Cookies）

存储在设备上，用于设备识别：

| Cookie名称 | 说明 |
|-----------|------|
| buvid3 | 设备唯一标识（格式：UUID + 00000infoc） |
| buvid4 | 设备标识v4版本 |
| b_nut | B站Nut标识 |
| _uuid | UUID标识 |
| bili_ticket | B站票据（有过期时间） |

## 三、Cookie工具类使用方法

### CookieUtil.java

位置：`mybl/CookieUtil.java`

#### 1. 获取完整Cookie（认证+设备）

```java
mg biliAccount = mg.a(MainApplication.a());
String fullCookie = CookieUtil.getFullCookieWithDevice(biliAccount);
```

内部实现：
- 调用`getEssentialCookie()`获取认证cookie
- 调用`DeviceIdentityManager.getInstance().getDeviceCookie()`获取设备cookie
- 用分号连接两部分

#### 2. 获取认证Cookie

```java
String authCookie = CookieUtil.getEssentialCookie(biliAccount);
```

返回格式：`SESSDATA=xxx; bili_jct=xxx; DedeUserID=xxx; DedeUserID__ckMd5=xxx; sid=xxx`

#### 3. 获取单个Cookie值

```java
String sessdata = CookieUtil.getSESSDATA(biliAccount);
String biliJct = CookieUtil.getBiliJct(biliAccount);
String dedeUserId = CookieUtil.getDedeUserID(biliAccount);
String sid = CookieUtil.getSid(biliAccount);

// 或使用通用方法
String value = CookieUtil.getCookieValue(biliAccount, "cookie_name");
```

#### 4. 获取完整Cookie（所有cookie字段）

```java
String allCookies = CookieUtil.getFullCookie(biliAccount);
```

### DeviceIdentityManager.java

位置：`mybl/DeviceIdentityManager.java`

#### 获取设备Cookie

```java
String deviceCookie = DeviceIdentityManager.getInstance().getDeviceCookie();
```

返回格式：`buvid3=xxx; buvid4=xxx; b_nut=xxx; _uuid=xxx; bili_ticket=xxx`

## 四、实际使用示例

### 在API调用中使用Cookie

```java
mg biliAccount = mg.a(MainApplication.a());
String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);

MyBiliApiService api = MyRetrofit.getInstance().create(MyBiliApiService.class);
vp<GeneralResponse<JSONObject>> call = api.recommendVideos(20, 1, cookie);
```

### 在OkHttp请求中使用Cookie

```java
qa request = new qa.a(JsonResponse.class)
    .a("https://api.bilibili.com/x/player/wbi/v2")
    .a(true)
    .a("Cookie", "SESSDATA=" + mg.a(MainApplication.a()).getSESSDATA())
    .b("")
    .b("aid", String.valueOf(aid))
    .b("cid", String.valueOf(cid))
    .a(new qb())
    .a();
```

### 在弹幕客户端中使用设备Cookie

```java
.a("Cookie", "buvid3=" + UUID.randomUUID().toString().toUpperCase() + "00000infoc")
```

## 五、注意事项

1. **认证Cookie必须与设备Cookie结合使用**：部分API需要完整的cookie才能正常工作
2. **CSRF Token**：POST请求需要传递`csrf`参数，值为`bili_jct`
3. **Cookie格式**：多个cookie用分号和空格连接：`name1=value1; name2=value2`
4. **空值处理**：工具类已处理空值情况，返回空字符串而非null
5. **日志调试**：CookieUtil包含详细日志，可通过`adb logcat -s CookieUtil`查看

## 六、使用access_key的API列表（待迁移到Cookie）

以下API使用`access_key`进行认证，计划迁移到使用Cookie认证方式。

### 1. 视频交互类 (MyBiliApiService.java)

| API | 端点 | 方法 | 功能 | 迁移方案 |
|-----|------|------|------|---------|
| `likeVideo` | `/x/v2/view/like` | POST | 点赞视频 | 改用Cookie + csrf |
| `coinVideo` | `/x/v2/view/coin/add` | POST | 投币 | 改用Cookie + csrf |
| `tripleVideo` | `/x/v2/view/like/triple` | POST | 三连 | 改用Cookie + csrf |

### 2. 历史记录类 (BiliPlayerHistoryService.java)

| API | 端点 | 方法 | 功能 | 迁移方案 |
|-----|------|------|------|---------|
| `clearVideoHistories` | `/x/v2/history/clear` | POST | 清空历史 | 改用Cookie + csrf |
| `clearVideoHistories(kid)` | `/x/v2/history/delete` | POST | 删除单条历史 | 改用Cookie + csrf |
| `getVideoHistoryList` | `/x/web-interface/history/cursor` | GET | 获取历史列表 | 改用Cookie |
| `clearVideoToviews` | `/x/v2/history/toview/del` | POST | 清空稍后再看 | 改用Cookie + csrf |
| `clearVideoToviews(aid)` | `/x/v2/history/toview/del` | POST | 删除稍后再看 | 改用Cookie + csrf |
| `addVideoToviews` | `/x/v2/history/toview/add` | POST | 添加稍后再看 | 改用Cookie + csrf |
| `reportProgress` | `/x/v2/history/report` | POST | 上报进度 | 改用Cookie + csrf |

**注意**: `getVideoToviewList`已使用Cookie方式

### 3. 收藏夹类 (BiliFavoriteVideoApiService.java)

| API | 端点 | 方法 | 功能 | 迁移方案 |
|-----|------|------|------|---------|
| `addVideoToList` | `/x/v2/fav/video/add` | POST | 添加到收藏夹 | 改用Cookie + csrf |
| `deleteVideoFromList` | `/x/v2/fav/video/del` | POST | 从收藏夹删除 | 改用Cookie + csrf |
| `getStatedBoxList` | `/x/v2/fav/folder` | GET | 获取收藏夹列表 | 改用Cookie |
| `getFavoriteVideoListV2` | `/x/v2/fav/video` | GET | 获取收藏视频列表 | 改用Cookie |
| `getFavoriteSearchedVideoList` | `/x/v2/fav/video` | GET | 搜索收藏视频 | 改用Cookie |
| `addBox` | `/x/v2/fav/folder/add` | POST | 创建收藏夹 | 改用Cookie + csrf |
| `deleteBox` | `/x/v2/fav/folder/del` | POST | 删除收藏夹 | 改用Cookie + csrf |
| `deleteVideo` | `/x/v2/fav/video/del` | POST | 删除收藏视频 | 改用Cookie + csrf |
| `rename` | `/x/v2/fav/folder/rename` | POST | 重命名收藏夹 | 改用Cookie + csrf |

### 4. 用户空间类 (BiliSpaceApiService.java)

| API | 端点 | 方法 | 功能 | 迁移方案 |
|-----|------|------|------|---------|
| `loadArchiveVideos` | `/x/v2/space/archive/cursor` | GET | 获取用户投稿 | 改用Cookie |
| `loadBangumi` | `/x/v2/space/bangumi` | GET | 获取用户追番 | 改用Cookie |

### 5. 视频详情类 (VideoApiService.java)

| API | 端点 | 方法 | 功能 | 迁移方案 |
|-----|------|------|------|---------|
| `getJumpPgc` | `/x/v2/view` | GET | 获取PGC跳转信息 | 改用Cookie |
| `getVideoDetails` | `/x/v2/view` | GET | 获取视频详情 | 改用Cookie |

### 6. 番剧类 (BangumiApiService.java, ke.java, kd.java)

| API | 端点 | 方法 | 功能 | 迁移方案 |
|-----|------|------|------|---------|
| `getConcernedSeason` | `/api/get_concerned_season` | GET | 获取追番列表 | 改用Cookie |
| `getUserSeasonStatus` | `/api/user_season_status` | GET | 获取追番状态 | 改用Cookie |
| `getSeasonInfo` | `/pgc/view/app/season` | GET | 获取番剧信息 | 改用Cookie |
| `followBangumi` | `/x/ott/autonomy/follow/add` | POST | 追番 | 改用Cookie + csrf |
| `unfollowBangumi` | `/x/ott/autonomy/follow/delete` | POST | 取消追番 | 改用Cookie + csrf |

### 7. 账户信息类 (me.java)

| API | 端点 | 方法 | 功能 | 迁移方案 |
|-----|------|------|------|---------|
| `getAccountInfo` | `/api/myinfo/v2` | GET | 获取账户信息 | 改用Cookie |

### 8. 直播类 (aeh.java, BiliLiveContent.java)

| API | 端点 | 方法 | 功能 | 迁移方案 |
|-----|------|------|------|---------|
| `getAttentionRoomList` | `/xlive/app-interface/v1/relation/liveAnchor` | GET | 关注主播直播 | 改用Cookie |
| `getRoomPlayInfo` | `/xlive/web-room/v2/index/getRoomPlayInfo` | GET | 直播播放地址 | 改用Cookie |

### 9. 弹幕类 (BiliApiDanmakuSender.java)

| API | 端点 | 方法 | 功能 | 迁移方案 |
|-----|------|------|------|---------|
| `sendDanmaku` | `/comment/post` | POST | 发送弹幕 | 改用Cookie + csrf |
| `sendDanmaku` | `/x/v2/dm/post` | POST | 发送弹幕(新) | 改用Cookie + csrf |

### 10. 分区类 (RegionService.java)

| API | 端点 | 方法 | 功能 | 迁移方案 |
|-----|------|------|------|---------|
| `getHotVideoList` | `/x/v2/region/show/child` | GET | 分区热门视频 | 改用Cookie |

### 11. 关注动态类 (BiliApiService.java)

| API | 端点 | 方法 | 功能 | 迁移方案 |
|-----|------|------|------|---------|
| `getFeedUpperArchive` | `/x/feed/upper/archive` | GET | 关注UP主动态 | 改用Cookie |

### 12. 播放地址类 (qh.java, ql.java, ql2.java)

| 文件 | 端点 | 功能 | 迁移方案 |
|------|------|------|---------|
| `qh.java` | `/pgc/player/web/playurl` | PGC播放地址 | 改用Cookie |
| `ql.java` | `/x/player/playurl` | UGC播放地址 | 改用Cookie |
| `ql2.java` | `/pugv/player/web/playurl` | PUGV播放地址 | 改用Cookie |

### 13. 其他使用access_key的地方

| 文件 | 位置 | 功能 | 说明 |
|------|------|------|------|
| `VideoDetailActivity.java:1601` | params.put | 视频详情参数 | 需要改为Cookie |
| `VideoDetailActivity.java:2016` | urlBuilder | 视频详情URL | 需要改为Cookie |
| `BangumiDetailActivity.java:209` | URL拼接 | 番剧详情 | 需要改为Cookie |
| `AuthSpaceVideoFragment.java:360` | URL拼接 | 用户空间视频 | 需要改为Cookie |

## 七、迁移策略

### 1. access_key获取方式

```java
mg biliAccount = mg.a(MainApplication.a());
String accessKey = biliAccount.e();  // 获取access_key
```

### 2. Cookie替代方案

```java
// 原来的方式
String accessKey = biliAccount.e();
api.likeVideo(accessKey, aid, 1);

// 改为Cookie方式
String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
String csrf = CookieUtil.getBiliJct(biliAccount);
api.likeVideo(aid, 1, csrf, cookie);
```

### 3. POST请求注意事项

POST请求需要同时传递：
- `csrf` 参数（值为`bili_jct`）
- `Cookie` Header（包含完整认证信息）

### 4. GET请求注意事项

GET请求只需传递：
- `Cookie` Header

## 八、相关文件

- [MyBiliApiService.java](file:///d:/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/mybl/MyBiliApiService.java) - API接口定义
- [CookieUtil.java](file:///d:/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/mybl/CookieUtil.java) - Cookie工具类
- [DeviceIdentityManager.java](file:///d:/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/mybl/DeviceIdentityManager.java) - 设备标识管理
- [BiliPlayerHistoryService.java](file:///d:/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/com/bilibili/tv/api/history/BiliPlayerHistoryService.java) - 历史记录API
- [BiliFavoriteVideoApiService.java](file:///d:/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/com/bilibili/tv/api/favorite/BiliFavoriteVideoApiService.java) - 收藏夹API
- [BiliSpaceApiService.java](file:///d:/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/com/bilibili/tv/api/auth/BiliSpaceApiService.java) - 用户空间API
- [VideoApiService.java](file:///d:/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/com/bilibili/tv/api/video/VideoApiService.java) - 视频API
- [BangumiApiService.java](file:///d:/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/com/bilibili/bangumi/api/BangumiApiService.java) - 番剧API
- [qh.java](file:///d:/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/bl/qh.java) - PGC播放URL
- [ql.java](file:///d:/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/bl/ql.java) - UGC播放URL
- [ql2.java](file:///d:/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/bl/ql2.java) - PUGV播放URL
