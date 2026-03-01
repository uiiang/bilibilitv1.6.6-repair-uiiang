---
name: "code-modification-strategy"
description: "Provides best practices for code modification: analyze original code first, find root cause, reuse existing logic, minimize changes. Invoke when modifying existing code or fixing bugs."
---

# Code Modification Strategy

## 核心原则

在修改现有代码或修复 BUG 时，遵循以下策略可以避免"越改越乱"的问题：

## 1. 先分析，后修改 (Analyze First, Then Modify)

### 为什么重要
- 避免盲目修改导致引入新问题
- 理解原始设计思路和业务逻辑
- 找到问题的根本原因，而不是只修复症状

### 如何执行
1. **阅读相关代码**：查看所有相关的类和方法，理解完整的调用链
2. **查找参考实现**：寻找已经正确实现的类似功能（如其他 Activity、Fragment）
3. **理解数据流**：追踪数据从 API 到 UI 的完整流程
4. **对比差异**：对比工作正常的代码和有问题的代码，找出关键差异

### 示例
```java
// ❌ 错误做法：直接修改
private void loadCollectionVideos() {
    // 直接调用 API，没有分析原始逻辑
    ((MyBiliApiService) vo.a(MyBiliApiService.class))
        .getFavoriteUserSeason(folderId, f, 20)
        .a(...);
}

// ✅ 正确做法：先分析原始代码
// 查看 aed2.java 中的逻辑：
if(biliFavoriteBox.getLong("fid")!=0) {
    BoxListInfoActivity.Companion.a(...); // 使用 fid
} else {
    BoxListInfoActivity2.Companion.a(...); // 使用 season_id
}
// 然后根据分析结果修改代码
```

## 2. 找到根本原因 (Find Root Cause)

### 常见错误
- 只修复症状（如"显示错误数据"），不找原因
- 假设问题所在，没有验证
- 修改了错误的地方

### 如何找到根本原因
1. **添加日志**：在关键位置添加日志，追踪数据流
2. **对比数据**：对比预期数据和实际数据
3. **逐步调试**：从数据源到 UI，逐步检查每个环节
4. **查看 API 文档**：确认 API 参数和返回值的正确性

### 示例
```java
// ❌ 错误做法：假设问题
// 看到第二个合集数据错误，就认为是 API 调用问题

// ✅ 正确做法：找到根本原因
// 1. 添加日志查看传入的参数
Log.d("FavoriteVideoFragment", "fid=" + fid + ", mid=" + mid + ", season_id=" + folderId);
// 2. 对比原始代码发现：fid != 0 时应该用不同的 API
// 3. 确认根本原因：getId() 返回了 fid 而不是 season_id
```

## 3. 复用而不是重新实现 (Reuse, Don't Reinvent)

### 为什么重要
- 原始代码已经经过测试和验证
- 避免引入新的 bug
- 保持代码风格一致性

### 如何复用
1. **查找类似实现**：搜索项目中是否有类似的功能
2. **复制粘贴**：直接复制已经验证过的代码逻辑
3. **调整参数**：只修改必要的参数，保持逻辑不变

### 示例
```java
// ❌ 错误做法：重新实现
// 自己编写新的 API 调用逻辑，可能遗漏细节

// ✅ 正确做法：复用原始代码
// 从 BoxListInfoActivity.java 复制已经验证过的代码：
((BiliFavoriteVideoApiService) vo.a(BiliFavoriteVideoApiService.class))
    .getFavoriteSearchedVideoList(account.e(), new BiliFavoriteVideoApiService.FavParamsMap(mid, fid, 0L, null, null, f))
    .a(new vn<BiliSearchFavoriteBox>() {
        // 复制原始的回调逻辑
    });
```

## 4. 最小化修改 (Minimize Changes)

### 为什么重要
- 减少引入新 bug 的风险
- 更容易回滚
- 更容易理解和维护

### 如何最小化修改
1. **只修改必要的地方**：不要修改没有问题的代码
2. **保持接口不变**：尽量保持方法签名和返回值不变
3. **添加而不是修改**：如果可能，添加新方法而不是修改现有方法

### 示例
```java
// ❌ 错误做法：大规模修改
// 重写整个类，修改所有方法

// ✅ 正确做法：最小化修改
// 只修改 getId() 方法的返回值
@Override
public long getId() {
    // 返回 season_id（id 字段），用于 getFavoriteUserSeason API
    return folder.getLong("id");
}

// 添加新方法而不是修改现有方法
public long getFid() {
    return folder.getLong("fid");
}
```

## 5. 验证和测试 (Verify and Test)

### 为什么重要
- 确保修改没有引入新问题
- 验证修复是否有效

### 如何验证
1. **编译检查**：确保没有编译错误
2. **日志验证**：查看日志确认数据流正确
3. **功能测试**：测试所有相关功能
4. **回归测试**：确保没有破坏其他功能

### 示例
```java
// ✅ 添加日志验证
Log.d("FavoriteVideoFragment", "Collection with fid: fid=" + fid + ", mid=" + mid + ", page=" + f);
Log.d("FavoriteVideoFragment", "Collection result: videos count=" + result.videos.size());

// ✅ 检查编译错误
GetDiagnostics

// ✅ 测试所有合集
// 测试有 fid 的合集
// 测试没有 fid 的合集
```

## 实际应用示例

### 问题场景
- 有三个合集，第二个合集显示错误数据，第三个合集加载失败

### 应用策略

#### 步骤 1：先分析
```bash
# 查看原始代码
grep -r "getFavoriteUserSeason" --include="*.java"
grep -r "getFavoriteSearchedVideoList" --include="*.java"

# 查看合集列表的实现
cat aed2.java | grep -A 10 "onClick"
```

#### 步骤 2：找到根本原因
```java
// 查看 aed2.java 中的逻辑
if(biliFavoriteBox.getLong("fid")!=0) {
    BoxListInfoActivity.Companion.a(...); // 使用 fid
} else {
    BoxListInfoActivity2.Companion.a(...); // 使用 season_id
}

// 发现问题：当前代码没有区分这两种情况
```

#### 步骤 3：复用原始代码
```java
// 从 BoxListInfoActivity.java 复制 API 调用
((BiliFavoriteVideoApiService) vo.a(BiliFavoriteVideoApiService.class))
    .getFavoriteSearchedVideoList(account.e(), new BiliFavoriteVideoApiService.FavParamsMap(mid, fid, 0L, null, null, f))
    .a(new vn<BiliSearchFavoriteBox>() {
        // 复制原始的回调逻辑
    });
```

#### 步骤 4：最小化修改
```java
// 只修改必要的地方
// 1. CollectionFavoriteFolder.getId() 返回 season_id
// 2. 添加 getFid() 和 getMid() 方法
// 3. FavoriteVideoFragment 添加 fid 和 mid 成员变量
// 4. loadCollectionVideos() 根据 fid 选择不同的 API
```

#### 步骤 5：验证
```bash
# 编译检查
GetDiagnostics

# 查看日志
adb logcat | grep "FavoriteVideoFragment"
```

## 常用命令

### 搜索代码
```bash
# 搜索方法调用
grep -r "methodName" --include="*.java" /path/to/code

# 搜索类定义
grep -r "class ClassName" --include="*.java" /path/to/code

# 搜索字符串
grep -r "searchString" --include="*.java" /path/to/code
```

### 查看文件
```bash
# 查看特定行
sed -n '100,150p' filename.java

# 查看方法定义
grep -A 20 "public void methodName" filename.java
```

### 对比文件
```bash
# 对比两个文件
diff file1.java file2.java
```

## 检查清单

在提交修改前，检查以下项目：

- [ ] 是否先分析了原始代码？
- [ ] 是否找到了问题的根本原因？
- [ ] 是否复用了已经验证过的代码？
- [ ] 是否最小化了修改范围？
- [ ] 是否添加了日志以便调试？
- [ ] 是否编译通过？
- [ ] 是否测试了所有相关功能？
- [ ] 是否没有破坏其他功能？

## 总结

遵循这个策略可以：
1. **避免"越改越乱"**：先分析，后修改
2. **提高修复效率**：找到根本原因，一次性解决
3. **减少 bug**：复用已验证的代码
4. **提高代码质量**：最小化修改，保持简洁

记住：**先理解，再修改**是成功的关键！
