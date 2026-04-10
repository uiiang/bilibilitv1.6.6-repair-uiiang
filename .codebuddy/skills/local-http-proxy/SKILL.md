---
name: "local-http-proxy"
description: "本地HTTP代理实现方案，用于DASH流的本地代理，解决IjkPlayer请求CDN时的403问题，支持Range请求和seek-at-start优化。 Invoke when implementing local HTTP proxy for DASH streaming."
---

# 本地HTTP代理实施流程

## 一、问题背景

### 为什么需要本地代理？

| 问题 | 原因 |
|------|------|
| IjkPlayer请求CDN时403 | IjkPlayer的dashdec模块可能缺少必要的请求头(Referer/UA/Cookie) |
| MP4播放慢 | 需要先下载moov atom才能播放，如果moov在文件末尾需要等待很久 |
| Range请求处理不正确 | 需要正确处理206 Partial Content响应 |

### blbl的解决方案

blbl使用`DashLocalHttpProxy`本地HTTP代理，所有请求通过OkHttp转发，自动添加必要的请求头。

## 二、启用条件判断

```kotlin
val needDashProxy = dataSource is PlaybackSource.Vod && dataSource.playable is Playable.Dash
```

| 流类型 | 是否启用本地代理 |
|--------|------------------|
| VOD + DASH | ✅ 启用 |
| VOD + 非DASH(MP4) | ❌ 不启用 |
| 直播流 | ❌ 不启用 |

## 三、核心组件

### 1. DashLocalHttpProxy

**位置**: `mybv/java/classes/mybl/DashLocalHttpProxy.java`

**核心功能**:
- 监听本地端口(127.0.0.1:随机端口)
- URL映射: key -> CDN URL
- 请求转发: 添加必要的请求头
- Range请求处理: 正确处理206响应

**关键方法**:
```java
// 注册URL，返回本地代理URL
public String register(String kind, String upstreamUrl)

// 重置所有注册
public void resetRegistrations()

// 关闭代理
public void close()
```

### 2. DashMpdGenerator

**位置**: `mybv/java/classes/mybl/DashMpdGenerator.java`

**核心功能**:
- 从DASH JSON生成标准MPD文件
- 设置正确的SegmentBase(initialization, indexRange)

**MPD结构**:
```xml
<MPD>
  <Period>
    <AdaptationSet contentType="video">
      <Representation>
        <BaseURL>http://127.0.0.1:port/v/key.m4s</BaseURL>
        <SegmentBase indexRange="1234-5678">
          <Initialization range="0-1233"/>
        </SegmentBase>
      </Representation>
    </AdaptationSet>
    <AdaptationSet contentType="audio">...</AdaptationSet>
  </Period>
</MPD>
```

### 3. OkHttpClient配置

**位置**: `mybv/java/classes/mybl/BiliHttpClient.java`

**必要配置**:
```java
OkHttpClient client = new OkHttpClient.Builder()
    .addInterceptor(chain -> {
        Request request = chain.request().newBuilder()
            .header("User-Agent", "Bilibili Freedoooooom/MarkII")
            .header("Referer", "https://www.bilibili.com/")
            .build();
        return chain.proceed(request);
    })
    .connectTimeout(10, TimeUnit.SECONDS)
    .readTimeout(30, TimeUnit.SECONDS)
    .build();
```

## 四、实施步骤

### Step 1: 创建DashLocalHttpProxy类

```java
public class DashLocalHttpProxy implements Closeable {
    private final ServerSocket serverSocket;
    private final ConcurrentHashMap<String, String> upstreamByKey = new ConcurrentHashMap<>();
    
    public String register(String kind, String upstreamUrl) {
        String key = md5Hex(kind + "|" + upstreamUrl);
        upstreamByKey.put(key, upstreamUrl);
        return "http://127.0.0.1:" + getPort() + "/" + kind + "/" + key + ".m4s";
    }
    
    // 处理客户端请求
    private void handleClient(Socket socket) {
        // 1. 解析HTTP请求
        // 2. 查找upstream URL
        // 3. 转发请求(添加Range头)
        // 4. 流式返回响应
    }
}
```

### Step 2: 创建DashMpdGenerator类

```java
public class DashMpdGenerator {
    public static File generateMpd(JSONObject dash, long durationMs, 
                                   String videoProxyUrl, String audioProxyUrl) {
        // 1. 从dash JSON提取segment_base信息
        // 2. 生成MPD XML
        // 3. 写入缓存文件
        // 4. 返回文件路径
    }
}
```

### Step 3: 修改IjkCommander

```java
// 在openVideo方法中
if (hasDash) {
    // 启用本地代理
    DashLocalHttpProxy proxy = getOrCreateProxy();
    proxy.resetRegistrations();
    
    // 注册视频和音频URL
    String videoProxyUrl = proxy.register("v", videoUrl);
    String audioProxyUrl = proxy.register("a", audioUrl);
    
    // 生成MPD文件
    File mpdFile = DashMpdGenerator.generateMpd(dash, durationMs, videoProxyUrl, audioProxyUrl);
    
    // 设置数据源为MPD文件
    mIjkMediaPlayer.setDataSource(mpdFile.getAbsolutePath());
}
```

### Step 4: 配置IjkPlayer选项

```java
// 协议白名单(关键!)
mIjkMediaPlayer.setOption(OPT_CATEGORY_FORMAT, "protocol_whitelist",
    "async,cache,crypto,file,http,https,ijkhttphook,ijkinject,ijklivehook,ijklongurl,ijksegment,ijktcphook,pipe,rtp,tcp,tls,udp,ijkurlhook,data");

// seek-at-start
if (progressSec > 0) {
    mIjkMediaPlayer.setOption(OPT_CATEGORY_PLAYER, "seek-at-start", progressSec * 1000L);
}
```

## 五、关键细节

### 1. SegmentBase信息

**必须从DASH JSON中提取**:
- `initialization`: 初始化数据范围(包含moov等元数据)
- `indexRange`: 索引范围(包含分段信息)

**本项目现状**: 目前没有segment_base信息，需要从API响应中获取或计算

### 2. URL映射Key生成

```java
private String md5Hex(String text) {
    MessageDigest md = MessageDigest.getInstance("MD5");
    byte[] digest = md.digest(text.getBytes(StandardCharsets.UTF_8));
    StringBuilder sb = new StringBuilder(digest.length * 2);
    for (byte b : digest) {
        sb.append(String.format("%02x", b));
    }
    return sb.toString();
}
```

### 3. Range请求处理

```java
// 解析Content-Range头计算实际长度
// "bytes 0-1023/5000" -> 1024
private long parseContentRangeLength(String contentRange) {
    String rangePart = contentRange.substringAfter("bytes ").substringBefore("/");
    long start = Long.parseLong(rangePart.substringBefore("-"));
    long end = Long.parseLong(rangePart.substringAfter("-"));
    return end - start + 1;
}
```

### 4. 线程模型

- 1个accept线程(守护线程)
- 4个worker线程池(处理请求)
- 使用ExecutorService管理

### 5. 错误处理

- Socket超时: 15秒
- 连接关闭: 捕获SocketException(客户端可能提前关闭)
- 上游请求失败: 返回502 Bad Gateway

## 六、验证方法

### 日志验证

```bash
adb logcat | grep -E "DashProxy|IjkCommander"
```

### 预期日志

```
DashProxy: started port=12345
IjkCommander: [DASH] Using local proxy,DashProxy: register v -> abc123...
DashProxy: req method=GET key=abc123 range=bytes=0-1023
DashProxy: res http=206 key=abc123 len=1024
```

## 七、注意事项

1. **协议白名单**: 必须设置`protocol_whitelist`，否则本地MPD无法访问远程segment
2. **SegmentBase**: 必须正确设置initialization和indexRange，否则无法正确seek
3. **线程安全**: 使用ConcurrentHashMap存储URL映射
4. **资源释放**: 播放结束或切换视频时关闭代理
5. **端口冲突**: 使用端口0让系统自动分配空闲端口

## 八、MPD支持测试结果

### 测试日期: 2026-03-30

### 测试结果
```
MpdTestRunner: ========== MPD Support Test Start ==========
MpdTestRunner: MPD file created: /data/user/0/uii.ang.bilitv/cache/mpd_test.mpd
MpdTestRunner: MPD file size: 1087 bytes
MpdTestRunner: Setting data source: /data/user/0/uii.ang.bilitv/cache/mpd_test.mpd
MpdTestRunner: Preparing async...
MpdTestRunner: Info: what=10101, extra=0
MpdTestRunner: Info2: what=10101, extra=0, extraLong=52262427
MpdTestRunner: ========== MPD TEST RESULT ==========
MpdTestRunner: RESULT: MPD NOT SUPPORTED
MpdTestRunner: Error: what=-10000, extra=0
MpdTestRunner: =====================================
```

### 结论

**本项目IjkPlayer不支持标准MPD/DASH格式！**

| 对比项 | blbl项目 | 本项目 |
|--------|----------|--------|
| DASH实现 | 标准MPD文件 | Bilibili定制`ijkdash://`协议 |
| 播放器配置 | setDataSource(mpdFile) | setDataSource("ijkdash") + setDashDataSource() |
| 本地代理可行性 | ✅ 可行 | ❌ 不可行(不支持MPD) |

### 原因分析

本项目的IjkMediaPlayer是Bilibili定制版本，使用`ijkdash://`协议处理DASH流：
```java
// 本项目的DASH处理方式
mIjkMediaPlayer.setDataSource("ijkdash");
mIjkMediaPlayer.setDashDataSource(bundleData, -1, quality);
```

而非标准的MPD文件方式：
```java
// blbl的DASH处理方式(标准MPD)
mIjkMediaPlayer.setDataSource(mpdFile.getAbsolutePath());
```

### 影响范围

由于不支持标准MPD，以下blbl优化方案**无法直接实施**：
1. ❌ DashLocalHttpProxy本地代理
2. ❌ DashMpdGenerator生成MPD
3. ❌ 通过MPD实现seek-at-start优化

### 可行方案

| 方案 | 可行性 | 说明 |
|------|--------|------|
| 更新IjkPlayer版本 | ⚠️ 风险高 | 需要找到支持标准MPD的IjkPlayer版本，可能影响现有功能 |
| 保持现有ijkdash方案 | ✅ 推荐 | 继续使用Bilibili定制的DASH实现，已实现seek-at-start |
| 切换到ExoPlayer | ⚠️ 工作量大 | 需要重写播放器逻辑 |

### 当前优化状态

已实现的优化：
- ✅ seek-at-start: 在IjkCommander中已实现，对DASH流生效
- ✅ CDN竞速: 对DASH和非DASH流都已实现
- ✅ 请求头设置: 已设置Referer和UA

## 八、IjkPlayer替换尝试记录

### 尝试日期: 2026-03-31

### 尝试内容
从blbl项目提取`libijkplayer.so`替换到本项目

### 失败原因
```
E art: Failed to register native method tv.danmaku.ijk.media.player.IjkMediaPlayer._setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
```

### 分析

| 组件 | 本项目 | blbl项目 |
|------|--------|----------|
| libijkplayer.so | 297KB (Bilibili定制) | 8.1MB (标准版) |
| IjkMediaPlayer.java | 包含`setDashDataSource()`等定制API | 标准API |
| DASH实现 | `ijkdash://`协议 | 标准MPD文件 |

**根本原因：** 本项目的IjkMediaPlayer是Bilibili深度定制版本，Java层和Native层紧密耦合。blbl的标准版so文件不支持本项目特有的native方法。

### 结论

**无法简单替换IjkPlayer库**，需要同时替换整个IjkPlayer模块（Java + Native），风险极高，不建议实施。

## 九、参考文件

- `参考/blbl/app/src/main/java/blbl/cat3399/feature/player/engine/DashLocalHttpProxy.kt`
- `参考/blbl/app/src/main/java/blbl/cat3399/feature/player/engine/DashMpdGenerator.kt`
- `参考/blbl/app/src/main/java/blbl/cat3399/feature/player/engine/IjkPlayerEngine.kt`
- `参考/blbl/app/src/main/java/blbl/cat3399/feature/player/PlayerModels.kt`
