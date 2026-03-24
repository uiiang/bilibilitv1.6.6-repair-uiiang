.class public Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;
.super Ljava/lang/Object;
.source "VideoFilterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/VideoFilterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterGroup"
.end annotation


# instance fields
.field public options:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public paramKey:Ljava/lang/String;

.field public selectedValue:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;)V
    .locals 0
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
            ")V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->title:Ljava/lang/String;

    .line 196
    iput-object p2, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->paramKey:Ljava/lang/String;

    .line 197
    iput-object p3, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->options:Ljava/util/LinkedHashMap;

    .line 198
    iput-object p4, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->selectedValue:Ljava/lang/String;

    .line 199
    return-void
.end method
