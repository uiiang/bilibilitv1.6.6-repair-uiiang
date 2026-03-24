.class public Lcom/bilibili/tv/ui/search/VideoFilterDialog$Builder;
.super Ljava/lang/Object;
.source "VideoFilterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/VideoFilterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;",
            ">;"
        }
    .end annotation
.end field

.field private onApplyListener:Lcom/bilibili/tv/ui/search/VideoFilterDialog$OnApplyListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$Builder;->groups:Ljava/util/List;

    .line 218
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$Builder;->activity:Landroid/app/Activity;

    .line 219
    return-void
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/bilibili/tv/ui/search/VideoFilterDialog$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bilibili/tv/ui/search/VideoFilterDialog$Builder;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$Builder;->groups:Ljava/util/List;

    new-instance v1, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    return-object p0
.end method

.method public build()Lcom/bilibili/tv/ui/search/VideoFilterDialog;
    .locals 6

    .prologue
    .line 232
    new-instance v1, Lcom/bilibili/tv/ui/search/VideoFilterDialog;

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;-><init>(Landroid/content/Context;)V

    .line 233
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$Builder;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;

    .line 234
    iget-object v3, v0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->paramKey:Ljava/lang/String;

    iget-object v5, v0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->options:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->selectedValue:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->addGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    goto :goto_d

    .line 236
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$Builder;->onApplyListener:Lcom/bilibili/tv/ui/search/VideoFilterDialog$OnApplyListener;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->setOnApplyListener(Lcom/bilibili/tv/ui/search/VideoFilterDialog$OnApplyListener;)V

    .line 237
    return-object v1
.end method

.method public setOnApplyListener(Lcom/bilibili/tv/ui/search/VideoFilterDialog$OnApplyListener;)Lcom/bilibili/tv/ui/search/VideoFilterDialog$Builder;
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$Builder;->onApplyListener:Lcom/bilibili/tv/ui/search/VideoFilterDialog$OnApplyListener;

    .line 228
    return-object p0
.end method
