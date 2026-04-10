---
name: "wbi-signer"
description: "Bilibili WBI签名工具使用方法。包含签名原理、使用示例、参数说明。Invoke when working with WBI signature, API signing, or modifying code that needs signed API requests."
---

# Bilibili WBI签名使用指南

## 概述

WBI签名是Bilibili API的反爬虫机制，用于验证请求的合法性。所有需要WBI签名的API请求必须携带`wts`和`w_rid`参数。

## 核心类

- **WbiSigner**: `mybv/java/classes/mybl/WbiSigner.java` - 签名工具类
- **WbiSignInterceptor**: `mybv/java/classes/mybl/WbiSignInterceptor.java` - OkHttp拦截器（推荐）

## 推荐方案：拦截器自动签名

### 原理

通过OkHttp拦截器自动检测需要WBI签名的接口，在请求发出前自动添加签名参数。

### 配置位置

拦截器在 `bl/vo.java` 的静态初始化块中注册：

```java
static {
    b.d().add(new WbiSignInterceptor());
}
```

### 支持自动签名的接口

在 `WbiSignInterceptor.java` 中配置：

```java
private static final String[] WBI_PATHS = {
    "/x/web-interface/popular/series/one",      // 每周必看
    "/x/web-interface/popular/series/list",     // 每周必看列表
    "/x/web-interface/popular/precious",        // 入站必刷
    "/x/web-interface/wbi/search/type",         // 搜索
    "/x/space/wbi/arc/search",                  // 用户空间
    "/x/web-interface/wbi/view"                 // 视频信息
};
```

### 新增需要签名的接口

只需在 `WBI_PATHS` 数组中添加路径即可：

```java
private static final String[] WBI_PATHS = {
    // ... 现有路径
    "/x/new/api/path",  // 新增接口
};
```

### 接口定义示例

使用拦截器后，接口定义保持简洁：

```java
@GET("/x/web-interface/popular/series/one")
vp<GeneralResponse<JSONObject>> getWeeklyPrecious(@Query("number") long number, @Header("Cookie") String cookie);

@GET("/x/web-interface/popular/series/list")
vp<GeneralResponse<JSONObject>> getWeeklySeriesList(@Header("Cookie") String cookie);

@GET("/x/web-interface/popular/precious")
vp<GeneralResponse<JSONObject>> getPopularPrecious(@Query("page_size") int pageSize, @Query("page") int page, @Header("Cookie") String cookie);
```

### 调用示例

调用时只需传入Cookie，签名自动处理：

```java
mg biliAccount = mg.a(MainApplication.a());
String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);

api.getWeeklyPrecious(number, cookie).a(callback);
api.getWeeklySeriesList(cookie).a(callback);
api.getPopularPrecious(100, 1, cookie).a(callback);
```

## 手动签名方案（特殊场景）

对于不使用Retrofit的场景，可以手动调用签名：

```java
import mybl.WbiSigner;
import java.util.TreeMap;

WbiSigner wbi = WbiSigner.getInstance();

TreeMap<String, String> params = new TreeMap<>();
params.put("search_type", "video");
params.put("keyword", "关键词");
params.put("page", "1");
params.put("pagesize", "20");

String signedQuery = wbi.encWbiAndGetQuery(params);
String url = "https://api.bilibili.com/x/web-interface/wbi/search/type?" + signedQuery;
```

## 签名原理

1. **获取密钥**: 从 `https://api.bilibili.com/x/web-interface/nav` 获取 `img_key` 和 `sub_key`
2. **混淆密钥**: 通过混淆表生成32位 `mixinKey`
3. **参数排序**: 使用TreeMap按字典序排列参数
4. **添加时间戳**: 自动添加 `wts` 参数（秒级时间戳）
5. **计算签名**: 对 `参数字符串 + mixinKey` 进行MD5计算得到 `w_rid`

## 缓存机制

- 密钥缓存时长: 1小时 (`CACHE_DURATION = 3600000ms`)
- 自动更新: 当缓存过期时，`encWbiAndGetQuery()` 会阻塞等待新密钥

## 注意事项

1. **拦截器方案优先**: 新接口只需添加路径到 `WBI_PATHS`，无需修改调用代码
2. **必须使用TreeMap**: 手动签名时参数必须按字典序排列
3. **不要手动添加wts和w_rid**: 由签名方法自动添加
4. **空值处理**: 参数值为空时不要添加到params中
5. **特殊字符过滤**: 方法内部会自动过滤 `!'()*` 等特殊字符

## 调试日志

```java
LogUtil.d(TAG, "=== Signed URL ===\n" + url);
LogUtil.json(TAG + "_Response", jsonResponse);
```

拦截器会自动打印签名后的URL：
```
D/WbiSignInterceptor: Signed URL: https://api.bilibili.com/x/web-interface/popular/series/one?number=123&wts=xxx&w_rid=xxx
```

## 相关文件

- `mybv/java/classes/mybl/WbiSigner.java` - WBI签名工具类
- `mybv/java/classes/mybl/WbiSignInterceptor.java` - OkHttp拦截器
- `mybv/java/classes/bl/vo.java` - 网络层配置，注册拦截器
- `mybv/java/classes/mybl/MyBiliApiService.java` - API接口定义
