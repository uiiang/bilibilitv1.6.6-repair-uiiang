.class public Lcom/bilibili/tv/ui/search/SearchResultSideActivity$SearchCategoryItem;
.super Ljava/lang/Object;
.source "SearchResultSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultSideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchCategoryItem"
.end annotation


# instance fields
.field private title:Ljava/lang/String;

.field private type:I

.field private typeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$SearchCategoryItem;->title:Ljava/lang/String;

    .line 228
    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$SearchCategoryItem;->typeStr:Ljava/lang/String;

    .line 229
    iput p3, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$SearchCategoryItem;->type:I

    .line 230
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$SearchCategoryItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$SearchCategoryItem;->type:I

    return v0
.end method

.method public getTypeStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$SearchCategoryItem;->typeStr:Ljava/lang/String;

    return-object v0
.end method
