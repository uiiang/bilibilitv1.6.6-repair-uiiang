.class public Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;
.super Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;
.source "RelationTagMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$OnTagsChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RelationTagMenuDialog"


# instance fields
.field private activity:Landroid/app/Activity;

.field private adapter:Lcom/bilibili/tv/ui/auth/RelationTagAdapter;

.field private isFollowed:Z

.field private isOperating:Z

.field private listener:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$OnTagsChangedListener;

.field private tagItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmybl/RelationTagItem;",
            ">;"
        }
    .end annotation
.end field

.field private targetMid:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 43
    const/16 v0, 0x12c

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;-><init>(Landroid/app/Activity;IZ)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->tagItems:Ljava/util/List;

    .line 34
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->isOperating:Z

    .line 35
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->isFollowed:Z

    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;

    .line 45
    iput-wide p2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->targetMid:J

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->isOperating:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->isOperating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Lmybl/RelationTagItem;ZI)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->toggleTag(Lmybl/RelationTagItem;ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->isFollowed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->isFollowed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/lang/String;Ljava/lang/String;Lmybl/MyBiliApiService;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->followUserThenLoadTags(Ljava/lang/String;Ljava/lang/String;Lmybl/MyBiliApiService;)V

    return-void
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/lang/String;Lmybl/MyBiliApiService;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->loadRelationTagsWithSelection(Ljava/lang/String;Lmybl/MyBiliApiService;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->dismissWithoutSubmit()V

    return-void
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->tagItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Lcom/bilibili/tv/ui/auth/RelationTagAdapter;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->adapter:Lcom/bilibili/tv/ui/auth/RelationTagAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$OnTagsChangedListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->listener:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$OnTagsChangedListener;

    return-object v0
.end method

.method private dismissWithoutSubmit()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->dismiss()V

    .line 182
    return-void
.end method

.method private followUserThenLoadTags(Ljava/lang/String;Ljava/lang/String;Lmybl/MyBiliApiService;)V
    .locals 8

    .prologue
    .line 149
    const-string v0, "RelationTagMenuDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Following user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->targetMid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->targetMid:J

    const/4 v4, 0x1

    const/16 v5, 0xb

    move-object v1, p3

    move-object v6, p2

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lmybl/MyBiliApiService;->modifyRelation(JIILjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;

    invoke-direct {v1, p0, p1, p3}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/lang/String;Lmybl/MyBiliApiService;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 178
    return-void
.end method

.method private loadRelationTags()V
    .locals 8

    .prologue
    .line 93
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 94
    if-nez v0, :cond_10

    .line 95
    const-string v0, "RelationTagMenuDialog"

    const-string v1, "User not logged in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_f
    return-void

    .line 99
    :cond_10
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 101
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 103
    const-string v3, "RelationTagMenuDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading user current tags for mid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->targetMid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-wide v4, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->targetMid:J

    invoke-interface {v0, v4, v5, v1}, Lmybl/MyBiliApiService;->getRelation(JLjava/lang/String;)Lbl/vp;

    move-result-object v3

    new-instance v4, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$3;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$3;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/lang/String;Ljava/lang/String;Lmybl/MyBiliApiService;)V

    invoke-virtual {v3, v4}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_f
.end method

.method private loadRelationTagsWithSelection(Ljava/lang/String;Lmybl/MyBiliApiService;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmybl/MyBiliApiService;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    const-string v0, "RelationTagMenuDialog"

    const-string v1, "Loading relation tags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x1

    const-string v1, "333.788"

    invoke-interface {p2, v0, v1, p1}, Lmybl/MyBiliApiService;->getRelationTags(ZLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;

    invoke-direct {v1, p0, p3}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 237
    return-void
.end method

.method private submitTagsChange()V
    .locals 9

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->getSelectedTagIds()Ljava/util/List;

    move-result-object v8

    .line 272
    const-string v0, "RelationTagMenuDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected tag IDs on dismiss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 275
    if-nez v0, :cond_2c

    .line 276
    const-string v0, "RelationTagMenuDialog"

    const-string v1, "User not logged in, skip submit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_2b
    return-void

    .line 280
    :cond_2c
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v7

    .line 281
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 282
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    .line 284
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 285
    const-string v0, "RelationTagMenuDialog"

    const-string v2, "No tags selected, unfollow user"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->targetMid:J

    const/4 v4, 0x2

    const/16 v5, 0xb

    invoke-interface/range {v1 .. v7}, Lmybl/MyBiliApiService;->modifyRelation(JIILjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$7;

    invoke-direct {v1, p0, v8}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$7;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_2b

    .line 317
    :cond_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    const/4 v0, 0x0

    :goto_61
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_78

    .line 319
    if-lez v0, :cond_6e

    .line 320
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_6e
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 324
    :cond_78
    const-string v0, "RelationTagMenuDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set tags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-wide v3, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->targetMid:J

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v1

    invoke-interface/range {v2 .. v7}, Lmybl/MyBiliApiService;->setRelationTags(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$8;

    invoke-direct {v1, p0, v8}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$8;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_2b
.end method

.method private toggleTag(Lmybl/RelationTagItem;ZI)V
    .locals 4

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->isOperating:Z

    .line 242
    invoke-virtual {p1, p2}, Lmybl/RelationTagItem;->setSelected(Z)V

    .line 243
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$6;

    invoke-direct {v1, p0, p3}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$6;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 251
    const-string v0, "RelationTagMenuDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmybl/RelationTagItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmybl/RelationTagItem;->getTagid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->submitTagsChange()V

    .line 267
    invoke-super {p0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->dismiss()V

    .line 268
    return-void
.end method

.method public getSelectedTagIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->tagItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/RelationTagItem;

    .line 257
    invoke-virtual {v0}, Lmybl/RelationTagItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 258
    invoke-virtual {v0}, Lmybl/RelationTagItem;->getTagid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 261
    :cond_29
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00bc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->setContent(Landroid/view/View;)V

    .line 56
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f08022e

    .line 59
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 60
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 61
    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagAdapter;

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->tagItems:Ljava/util/List;

    new-instance v3, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$1;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$1;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)V

    invoke-direct {v1, v2, v3}, Lcom/bilibili/tv/ui/auth/RelationTagAdapter;-><init>(Ljava/util/List;Lcom/bilibili/tv/ui/auth/RelationTagAdapter$OnItemToggleListener;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->adapter:Lcom/bilibili/tv/ui/auth/RelationTagAdapter;

    .line 69
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->adapter:Lcom/bilibili/tv/ui/auth/RelationTagAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 71
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->loadRelationTags()V

    .line 72
    return-void
.end method

.method public setOnTagsChangedListener(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$OnTagsChangedListener;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->listener:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$OnTagsChangedListener;

    .line 50
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 76
    invoke-super {p0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->show()V

    .line 77
    const v0, 0x7f08022e

    .line 78
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 79
    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->adapter:Lcom/bilibili/tv/ui/auth/RelationTagAdapter;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->adapter:Lcom/bilibili/tv/ui/auth/RelationTagAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/RelationTagAdapter;->a()I

    move-result v1

    if-lez v1, :cond_24

    .line 80
    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$2;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$2;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    :cond_24
    return-void
.end method
