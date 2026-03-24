.class Lcom/bilibili/tv/ui/search/VideoFilterDialog$OptionTag;
.super Ljava/lang/Object;
.source "VideoFilterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/VideoFilterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptionTag"
.end annotation


# instance fields
.field paramKey:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$OptionTag;->paramKey:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$OptionTag;->value:Ljava/lang/String;

    .line 209
    return-void
.end method
