.class public Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;
.super Ljava/lang/Object;
.source "NavigationTagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagItem"
.end annotation


# instance fields
.field public label:Ljava/lang/String;

.field public startIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->label:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->startIndex:I

    .line 23
    return-void
.end method
