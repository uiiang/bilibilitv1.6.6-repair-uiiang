.class public Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;
.super Ljava/lang/Object;
.source "EbookMenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;
    }
.end annotation


# static fields
.field public static final MENU_CHAPTER_LIST:Ljava/lang/String; = "\u7ae0\u8282\u5217\u8868"

.field public static final MENU_CLOSE_BOOK:Ljava/lang/String; = "\u5173\u95ed\u4e66\u7c4d"

.field public static final MENU_CLOSE_EBOOK:Ljava/lang/String; = "\u5173\u95ed\u7535\u5b50\u4e66"

.field public static final MENU_COLOR_THEME:Ljava/lang/String; = "\u914d\u8272\u65b9\u6848"

.field public static final MENU_CONTROL_EBOOK:Ljava/lang/String; = "\u63a7\u5236\u7535\u5b50\u4e66"

.field public static final MENU_CONTROL_VIDEO:Ljava/lang/String; = "\u63a7\u5236\u89c6\u9891"

.field public static final MENU_EXIT_READING:Ljava/lang/String; = "\u9000\u51fa\u9605\u8bfb"

.field public static final MENU_FONT_SIZE:Ljava/lang/String; = "\u5b57\u4f53\u5927\u5c0f"

.field public static final MENU_OPEN_EBOOK:Ljava/lang/String; = "\u7535\u5b50\u4e66"

.field public static final MENU_ORGANIZE_SHELF:Ljava/lang/String; = "\u6574\u7406\u4e66\u67b6"

.field public static final MENU_SCREEN_PERCENT:Ljava/lang/String; = "\u5c4f\u5e55\u5360\u6bd4"

.field public static final MENU_SELECT_FILE:Ljava/lang/String; = "\u9009\u62e9\u6587\u4ef6"

.field public static final MENU_VIDEO_POSITION:Ljava/lang/String; = "\u89c6\u9891\u4f4d\u7f6e"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEbookMenus(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    if-nez p0, :cond_26

    .line 91
    const-string v1, "\u63a7\u5236\u89c6\u9891"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v1, "\u9009\u62e9\u6587\u4ef6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v1, "\u6574\u7406\u4e66\u67b6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v1, "\u5c4f\u5e55\u5360\u6bd4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v1, "\u89c6\u9891\u4f4d\u7f6e"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v1, "\u9000\u51fa\u9605\u8bfb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_25
    return-object v0

    .line 98
    :cond_26
    const-string v1, "\u63a7\u5236\u89c6\u9891"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v1, "\u7ae0\u8282\u5217\u8868"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v1, "\u5b57\u4f53\u5927\u5c0f"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v1, "\u914d\u8272\u65b9\u6848"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v1, "\u5c4f\u5e55\u5360\u6bd4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v1, "\u5173\u95ed\u4e66\u7c4d"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25
.end method

.method public static dispatch(Ljava/lang/String;Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 201
    if-eqz p1, :cond_a

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    move v0, v1

    .line 246
    :goto_b
    return v0

    .line 205
    :cond_c
    const-string v2, "\u7ae0\u8282\u5217\u8868"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 206
    invoke-interface {p1}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->showChapterList()V

    goto :goto_b

    .line 210
    :cond_18
    const-string v2, "\u9009\u62e9\u6587\u4ef6"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 211
    invoke-interface {p1}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->openEbookFileChooser()V

    goto :goto_b

    .line 215
    :cond_24
    const-string v2, "\u6574\u7406\u4e66\u67b6"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 216
    invoke-interface {p1}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->organizeBookshelf()V

    goto :goto_b

    .line 220
    :cond_30
    const-string v2, "\u9000\u51fa\u9605\u8bfb"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "\u5173\u95ed\u7535\u5b50\u4e66"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 221
    :cond_40
    invoke-interface {p1}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->openEbookReader()V

    goto :goto_b

    .line 225
    :cond_44
    const-string v2, "\u5173\u95ed\u4e66\u7c4d"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 226
    invoke-interface {p1}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->closeCurrentBook()V

    goto :goto_b

    .line 230
    :cond_50
    const-string v2, "\u63a7\u5236\u89c6\u9891"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 231
    const-string v1, "video"

    invoke-interface {p1, v1}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->switchControlTarget(Ljava/lang/String;)V

    goto :goto_b

    .line 235
    :cond_5e
    const-string v2, "\u63a7\u5236\u7535\u5b50\u4e66"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 236
    const-string v1, "ebook"

    invoke-interface {p1, v1}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->switchControlTarget(Ljava/lang/String;)V

    goto :goto_b

    .line 240
    :cond_6c
    const-string v2, "\u7535\u5b50\u4e66"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 241
    invoke-interface {p1}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->openEbookReader()V

    goto :goto_b

    :cond_78
    move v0, v1

    .line 246
    goto :goto_b
.end method

.method public static getOriginalMenuIndex(Ljava/util/List;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 119
    if-eqz p0, :cond_b

    if-ltz p1, :cond_b

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    :cond_b
    move v0, v1

    .line 135
    :goto_c
    return v0

    .line 122
    :cond_d
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    const-string v2, "\u5b57\u4f53\u5927\u5c0f"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 124
    const/4 v0, 0x4

    goto :goto_c

    .line 126
    :cond_1d
    const-string v2, "\u914d\u8272\u65b9\u6848"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 127
    const/4 v0, 0x5

    goto :goto_c

    .line 129
    :cond_27
    const-string v2, "\u5c4f\u5e55\u5360\u6bd4"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 130
    const/16 v0, 0xa

    goto :goto_c

    .line 132
    :cond_32
    const-string v2, "\u89c6\u9891\u4f4d\u7f6e"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 133
    const/16 v0, 0xd

    goto :goto_c

    :cond_3d
    move v0, v1

    .line 135
    goto :goto_c
.end method

.method public static getSelection(IZIII)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    packed-switch p0, :pswitch_data_18

    .line 167
    :goto_4
    :pswitch_4
    return v0

    .line 157
    :pswitch_5
    if-eqz p1, :cond_9

    :goto_7
    move v0, p2

    goto :goto_4

    :cond_9
    move p2, v0

    goto :goto_7

    .line 161
    :pswitch_b
    if-eqz p1, :cond_f

    :goto_d
    move v0, p3

    goto :goto_4

    :cond_f
    move p3, p4

    goto :goto_d

    .line 165
    :pswitch_11
    if-eqz p1, :cond_15

    :goto_13
    move v0, p4

    goto :goto_4

    :cond_15
    move p4, v0

    goto :goto_13

    .line 150
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method public static isEbookMenuItem(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 178
    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v1, "\u63a7\u5236\u89c6\u9891"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "\u9009\u62e9\u6587\u4ef6"

    .line 179
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "\u6574\u7406\u4e66\u67b6"

    .line 180
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "\u5c4f\u5e55\u5360\u6bd4"

    .line 181
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "\u89c6\u9891\u4f4d\u7f6e"

    .line 182
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "\u9000\u51fa\u9605\u8bfb"

    .line 183
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "\u7ae0\u8282\u5217\u8868"

    .line 184
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "\u5b57\u4f53\u5927\u5c0f"

    .line 185
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "\u914d\u8272\u65b9\u6848"

    .line 186
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "\u5173\u95ed\u4e66\u7c4d"

    .line 187
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "\u7535\u5b50\u4e66"

    .line 188
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "\u63a7\u5236\u7535\u5b50\u4e66"

    .line 189
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "\u5173\u95ed\u7535\u5b50\u4e66"

    .line 190
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_70
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isEbookMode(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isReadingPage(Z)Z
    .locals 0

    .prologue
    .line 78
    return p0
.end method
