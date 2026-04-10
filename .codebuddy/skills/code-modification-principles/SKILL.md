---
name: code-modification-principles
description: 代码修改原则：资源ID追加、编译验证。修改代码时必须遵循的原则，确保代码质量和编译通过。
---

# 代码修改原则

## 资源ID管理原则

### 1. 新增资源ID规则
- **不要修改原有的资源ID**，这样容易出错
- **在现有资源ID末尾追加新的ID**
- 需要修改的文件：
  - `mybv/res/values/ids.xml` - 添加新的ID名称
  - `mybv/res/values/public.xml` - 添加资源ID声明
  - `mybv/java/classes/com/bilibili/tv/R.java` - 添加资源常量

### 2. 资源ID示例
```xml
<!-- ids.xml -->
<item type="id" name="new_button" />

<!-- public.xml -->
<public type="id" name="new_button" id="0x7f0801b6" />

<!-- R.java -->
public static final int new_button = 0x7f0801b6;
```

## 编译验证原则

### 1. 编译命令
修改代码后必须使用以下命令编译项目：
```bash
bash ./build.sh -p uii.ang.bilitv
```

### 2. 编译检查
- 确保编译成功无错误
- 检查是否有警告信息
- 验证APK生成成功

## 代码修改流程

1. 分析需求，确定修改范围
2. 如需新增资源，在资源文件末尾追加ID
3. 修改代码实现功能
4. 运行编译命令验证
5. 确认编译通过后完成任务