---
name: "right-menu-analysis"
description: "Bilibili TV 右侧弹出菜单的详细分析文档和复用指南。记录了菜单的实现方式、呼出关闭逻辑、样式大小透明度焦点管理等代码逻辑，以及如何在其他页面复用该组件。"
---

# Bilibili TV 右侧菜单分析与复用指南

## 概述

本文档记录了 Bilibili TV 视频播放页右侧弹出菜单的完整实现分析，包括菜单的呼出关闭逻辑、动画效果、样式大小、透明度和焦点管理等，同时提供了如何在其他页面复用该菜单组件的指南。

---

## 一、主要类结构

### 核心类
1. **`bl.xw.java`** - 菜单逻辑控制器
2. **`com.bilibili.tv.player.widget.PlayerMenuRight.java`** - 自定义 View 实现
3. **`aay` (基类)** - 菜单基类

---

## 二、呼出关闭逻辑

### 1. 呼出菜单 (xw.java:195-206)
```java
private void d(boolean z) {
    v();
    if (this.c == null) {
        this.c = (PlayerMenuRight) ((ViewStub) a(R.id.right_menu)).inflate();
        this.c.setListener(this);
        S();
        this.c.a(false);
    }
    if (this.c.isShown() != z) {
        this.c.a(z);
    }
}
```

- 使用 `ViewStub` 懒加载菜单，第一次显示时才 inflate
- 通过 `PlayerMenuRight.a(boolean z)` 控制显示/隐藏

### 2. 遥控器按钮 (xw.java:107-128)
```java
public boolean g(int keyCode, KeyEvent event) {
    switch (keyCode) {
        case KeyEvent.KEYCODE_BACK:
            if (R()) {
                d(false);
                return true;
            }
            return false;
        case KeyEvent.KEYCODE_MENU:
            d(!R());
            return true;
        case KeyEvent.KEYCODE_DPAD_UP:
        case KeyEvent.KEYCODE_DPAD_DOWN:
            return R();
        default:
            if (this.f) {
                a(this.g);
            }
            this.f = false;
            return R();
    }
}
```

- **菜单键**：切换显示/隐藏
- **返回键**：关闭菜单
- **上下键**：菜单显示时消费事件

---

## 三、动画效果 (PlayerMenuRight.java:564-615)

### 动画资源
- **呼出动画**：`in_from_right.xml` - 从右侧滑入 (250ms)
- **关闭动画**：`out_to_right.xml` - 向右侧滑出 (250ms)

### in_from_right.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<set android:duration="250" android:fillAfter="true"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <translate android:fromXDelta="100.0%" android:toXDelta="0.0%" />
</set>
```

### out_to_right.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<set android:duration="250" android:fillAfter="true"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <translate android:fromXDelta="0.0%" android:toXDelta="100.0%" />
</set>
```

### 显示动画
```java
public void a(boolean z) {
    if (z) {
        if (this.a == null) {
            this.a = AnimationUtils.loadAnimation(getContext(), R.anim.in_from_right);
            // ... 动画监听器
        }
        setVisibility(0);
        startAnimation(this.a);
        this.c = true;
    } else {
        // ... 关闭动画
    }
}
```

---

## 四、菜单层级结构

### 一级菜单 (player_right_menu_level_1)
菜单项来自 `arrays.xml:17-28`：
- 画质
- 弹幕开关
- 画面比例
- 画面调节
- 弹幕大小
- 弹幕透明度
- 播放速度
- 播放模式
- CC字幕
- 章节

### 二级菜单
通过 `b(int i, int i2)` 返回对应子项的列表。

---

## 五、样式大小

### 布局文件

#### 1. 一级菜单项 (player_right_text_menu_item.xml)
```xml
<TextView 
    android:id="@id/text" 
    android:background="@drawable/player_right_menu_bg_1" 
    android:layout_width="@dimen/px_330" 
    android:layout_height="@dimen/px_72" 
    android:layout_marginTop="@dimen/px_34" 
    style="@style/PlayerTextView.Focusable.Normal"
    xmlns:android="http://schemas.android.com/apk/res/android" />
```

#### 2. 二级菜单项 (player_right_text_menu_item_2.xml)
```xml
<TextView 
    android:id="@id/text" 
    android:background="@drawable/player_right_menu_bg_2" 
    android:paddingLeft="@dimen/px_50" 
    android:paddingRight="@dimen/px_50" 
    android:layout_width="@dimen/px_400" 
    android:layout_height="@dimen/px_72" 
    android:layout_marginTop="@dimen/px_34" 
    android:drawableLeft="@drawable/oval" 
    android:drawablePadding="@dimen/px_20" 
    style="@style/PlayerTextView.Focusable.Normal"
    xmlns:android="http://schemas.android.com/apk/res/android" />
```

---
## 六、焦点管理详细分析

基于代码分析，右侧菜单的焦点管理非常完善，覆盖了遥控器操作的所有场景。

### 一、焦点管理的核心代码位置

| 功能 | 代码位置 |
|-----|---------|
| 遥控器按键拦截 | `PlayerMenuRight.java:252-272` |
| 焦点变化视觉反馈 | `PlayerMenuRight.java:274-299` |
| 菜单层与层间导航 | `PlayerMenuRight.java:259-266` |
| 边界聚焦锁定 | `PlayerMenuRight.java:267-268` |

### 二、遥控器按键拦截器 (PlayerMenuRight.java:252-272)

这是焦点管理的核心，拦截所有遥控器按键事件：

```java
public final /* synthetic */ boolean a(aax aaxVar, View view, View view2, int i, int i2, KeyEvent keyEvent) {
    if ((view instanceof RecyclerView) && keyEvent.getAction() == 0) {
        e();  // 重置自动关闭计时器
        
        // 右方向键（KEYCODE_DPAD_RIGHT = 22）
        if (i2 == 21) { 
            // 展开下一级菜单
            a(a(view), i, view2, (ViewGroup) view, (String) aaxVar.e().get(i));
            return true;
        } 
        // 左方向键（KEYCODE_DPAD_LEFT = 22）
        else if (i2 == 22) {
            int a2 = a(view);
            if (a2 == 2) {
                // 在第三层，返回到第二层
                e(1, this.q);
                removeViewAt(0);
            } else if (a2 == 1) {
                // 在第二层，关闭整个菜单
                a(false);
            }
            return true;
        } 
        // 边界锁定：第一项按上键 / 最后一项按下键
        else if ((i == 0 && i2 == 19) || (i == ((RecyclerView) view).getChildCount() - 1 && i2 == 20)) {
            return true;  // 消费事件，不让焦点跑出菜单
        }
    }
    return false;
}
```

#### 按键映射表：
| 按键码 | 按键名称 | 功能 |
|-------|---------|-----|
| 19 | `KEYCODE_DPAD_UP` | 上键 |
| 20 | `KEYCODE_DPAD_DOWN` | 下键 |
| 21 | `KEYCODE_DPAD_LEFT` | 左键 |
| 22 | `KEYCODE_DPAD_RIGHT` | 右键 |

### 三、焦点变化视觉反馈 (PlayerMenuRight.java:274-299)

当焦点状态变化时，改变文字大小和颜色：

```java
public final /* synthetic */ void a(float f, int i, int i2, float f2, View view, int i3, boolean z) {
    TextView textView = (TextView) view;
    ViewGroup viewGroup = (ViewGroup) view.getParent();
    
    // 失去焦点时
    if (!textView.isFocused()) {
        if (i2 == 2) {  // 二级菜单项
            textView.setTextSize(0, f);      // 恢复普通字体大小
            textView.setTextColor(i);         // 恢复普通颜色
            return;
        }
        return;
    }
    
    // 获得焦点时
    e();  // 重置自动关闭计时器
    for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
        TextView textView2 = (TextView) viewGroup.getChildAt(i4);
        textView2.setTextSize(0, f);      // 其他项设为普通大小
        textView2.setTextColor(i);         // 其他项设为普通颜色
    }
    if (i2 == 1) {  // 一级菜单
        textView.setTextSize(0, f2);      // 聚焦项变大
        if (this.q < viewGroup.getChildCount()) {
            viewGroup.getChildAt(this.q).setSelected(false);
        }
    }
    textView.setSelected(false);
    textView.setTextColor(-1);  // 白色
}
```

#### 样式参数：
| 参数 | 说明 | 值 |
|-----|------|-----|
| `f` | 普通字体大小 | `px_36` |
| `f2` | 聚焦字体大小 | `px_42` |
| `i` | 普通颜色 | `white_50` (半透明白) |
| 聚焦颜色 | 白色 | `-1` (0xFFFFFFFF) |

### 四、菜单层级导航系统

菜单支持三层结构，通过左右键导航：

```
层级 1 (一级菜单)
    ↓ 右键 / 确认
层级 2 (二级菜单)
    ↓ 右键 / 确认
层级 3 (三级菜单，可选)
```

#### 导航逻辑：
- **右键 (KEYCODE_DPAD_RIGHT)**：向下展开一级菜单
- **左键 (KEYCODE_DPAD_LEFT)**：
  - 在第 2 层 → 关闭整个菜单
  - 在第 3 层 → 返回第 2 层

### 五、边界聚焦锁定 (PlayerMenuRight.java:267-268)

```java
else if ((i == 0 && i2 == 19) || (i == ((RecyclerView) view).getChildCount() - 1 && i2 == 20)) {
    return true;  // 消费事件
}
```

**锁定规则：**
- 当在第一项且按上键 → 消费事件，不移动焦点
- 当在最后一项且按下键 → 消费事件，不移动焦点

这样防止焦点跑出菜单区域。

### 六、控制器层的按键处理 (xw.java:107-128)

在 `xw.java` 中也有按键处理，主要处理菜单键和返回键：

```java
public boolean g(int keyCode, KeyEvent event) {
    switch (keyCode) {
        case KeyEvent.KEYCODE_BACK:
            if (R()) {  // 菜单是否显示
                d(false);  // 关闭菜单
                return true;
            }
            return false;
        case KeyEvent.KEYCODE_MENU:
            d(!R());  // 切换显示/隐藏
            return true;
        case KeyEvent.KEYCODE_DPAD_UP:
        case KeyEvent.KEYCODE_DPAD_DOWN:
            return R();  // 菜单显示时消费事件
        default:
            if (this.f) {
                a(this.g);
            }
            this.f = false;
            return R();
    }
}
```

### 七、焦点管理流程图

```
┌─────────────────────────────────────────────────────────┐
│                    遥控器按键事件                          │
└──────────────────────┬──────────────────────────────────┘
                       │
           ┌───────────┴───────────┐
           │                       │
      菜单键/返回键           方向键
           │                       │
    ┌──────▼──────┐       ┌──────▼──────┐
    │ xw.java     │       │ PlayerMenu- │
    │ 处理        │       │ Right.java  │
    │ 显示/隐藏   │       │ 处理        │
    └─────────────┘       │ 方向导航    │
                          └──────┬──────┘
                                 │
                    ┌────────────┼────────────┐
                    │            │            │
                  左/右键      上/下键      边界键
                    │            │            │
              ┌─────▼─────┐ ┌──▼──┐   ┌────▼────┐
              │层级导航   │ │移动  │   │锁定焦点 │
              │展开/收起  │ │焦点  │   │不跑出   │
              └───────────┘ └─────┘   └─────────┘
                    │
              ┌─────▼─────┐
              │ 视觉反馈   │
              │ 字体变化   │
              │ 颜色变化   │
              └───────────┘
```

### 八、关键复用点

这个焦点管理系统设计非常完善，可以完全复用：

| 组件 | 复用度 | 说明 |
|-----|-------|-----|
| 按键拦截器 | 100% | 完全通用 |
| 边界锁定 | 100% | 完全通用 |
| 层级导航 | 100% | 完全通用 |
| 视觉反馈 | 100% | 完全通用（只需调整样式参数） |
| 自动关闭 | 100% | 完全通用 |

---

## 八、自动关闭机制 (PlayerMenuRight.java:301-312)

```java
private void e() {
    if (this.r == null) {
        this.r = new aau(this);
    }
    removeCallbacks(this.r);
    postDelayed(this.r, 5000L);
}

public final /* synthetic */ void b() {
    a(false);
}
```

- 5秒无操作自动关闭菜单

---

## 九、关键文件位置总结

| 功能 | 文件路径 |
|-----|-----|
| 菜单数据 | `mybv/res/values/arrays.xml:17-28` |
| 菜单逻辑控制 | `mybv/java/classes/bl/xw.java` |
| 自定义 View | `mybv/java/classes/com/bilibili/tv/player/widget/PlayerMenuRight.java` |
| 一级菜单项布局 | `mybv/res/layout/player_right_text_menu_item.xml` |
| 二级菜单项布局 | `mybv/res/layout/player_right_text_menu_item_2.xml` |
| 滑入动画 | `mybv/res/anim/in_from_right.xml` |
| 滑出动画 | `mybv/res/anim/out_to_right.xml` |

---

## 十、可复用的核心组件

### 一、高度可复用：`PlayerMenuRight.java` (90% 可复用)

这个自定义 View 本身设计得非常通用：

#### 可复用部分：
1. **基础框架** - 整个类的结构，继承自 `aay`
2. **动画系统** - 滑入/滑出动画完全通用 (`in_from_right`/`out_to_right`)
3. **自动关闭机制** - 5秒无操作自动关闭
4. **焦点管理** - 遥控器按键处理（左/右/上/下/返回）
5. **二级菜单展开/收起** - 通过 `b(int i, int i2)` 动态获取子菜单项
6. **样式系统** - `player_right_text_menu_item.xml` 和 `player_right_text_menu_item_2.xml` 完全通用
7. **选中状态管理** - 对勾图标的透明度控制
8. **接口定义** - `PlayerMenuRight.a` 接口（回调监听器）可以直接使用

### 二、可复用：动画资源 (100%)

| 资源文件 | 用途 |
|---------|-----|
| `in_from_right.xml` | 从右侧滑入动画 |
| `out_to_right.xml` | 向右侧滑出动画 |

### 三、可复用：布局资源 (100%)

| 布局文件 | 用途 |
|---------|-----|
| `player_right_text_menu_item.xml` | 一级菜单项（330px 宽） |
| `player_right_text_menu_item_2.xml` | 二级菜单项（400px 宽，带选中图标） |

---

## 十一、只需修改的部分（最小改动）

为了在其他页面复用，你只需要：

### 1. 修改菜单项数据
替换 `player_right_menu_level_1` 为你自己的菜单项数组。

### 2. 修改监听器实现
`xw.java` 中的监听器实现（`PlayerMenuRight.a` 接口）需要改成你自己的业务逻辑：
```java
// 原实现
public void e(int i) { ... }        // 切换画质
public void f(int i) { ... }        // 切换比例
public void a(float f) { ... }      // 弹幕大小
// 等...

// 改成你的业务逻辑
public void onItem1Click() { ... }
public void onItem2Click() { ... }
// 等...
```

### 3. 修改数据初始化方法
把 `S()` 方法改成初始化你自己的数据：
```java
private void S() {
    Resources resources = o().getResources();
    this.c.b(Arrays.asList(resources.getStringArray(R.array.your_menu_array)), 0);
    // 初始化你的子菜单项...
}
```

---

## 十二、最佳实践：提取通用基类

为了更好地复用，建议：

### 方案一：提取菜单基类
- 创建一个 `BaseMenuController` 基类，包含：
  - `ViewStub` 懒加载逻辑
  - 菜单显示/隐藏
  - 遥控器按键监听（菜单键、返回键）
  - 自动关闭机制

### 方案二：直接使用 `PlayerMenuRight`
- 直接使用 `PlayerMenuRight` 这个 View
- 只需要自己实现 `PlayerMenuRight.a` 接口
- 自己调用 `b(List<String> list, int i)` 设置菜单项

---

## 十三、关键复用点总结

| 组件 | 复用度 | 说明 |
|-----|-------|-----|
| `PlayerMenuRight` 自定义 View | 90% | 只需改数据初始化和监听器 |
| 动画资源 | 100% | 完全通用 |
| 布局资源 | 100% | 完全通用 |
| 样式/背景 | 100% | 完全通用 |
| `xw.java` 逻辑控制器 | 50% | 结构可参考，业务逻辑需重写 |

---

## 十四、总结

这个菜单组件的设计非常优秀，UI 框架部分几乎可以 100% 复用，只需要替换菜单项数据和点击事件的业务逻辑即可！

特别是焦点管理系统，是一个优秀的 Android TV 焦点管理实现案例，可以直接复用到其他项目中！
