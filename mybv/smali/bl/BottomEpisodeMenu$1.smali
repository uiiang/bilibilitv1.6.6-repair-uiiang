.class Lbl/BottomEpisodeMenu$1;
.super Ljava/lang/Object;
.source "BottomEpisodeMenu.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/BottomEpisodeMenu;->setData([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/BottomEpisodeMenu;

.field final synthetic val$items:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;


# direct methods
.method constructor <init>(Lbl/BottomEpisodeMenu;[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 145
    iput-object p1, p0, Lbl/BottomEpisodeMenu$1;->this$0:Lbl/BottomEpisodeMenu;

    iput-object p2, p0, Lbl/BottomEpisodeMenu$1;->val$items:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemFocused(I)V
    .locals 2

    .prologue
    .line 148
    if-ltz p1, :cond_12

    iget-object v0, p0, Lbl/BottomEpisodeMenu$1;->val$items:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-ge p1, v0, :cond_12

    .line 149
    iget-object v0, p0, Lbl/BottomEpisodeMenu$1;->this$0:Lbl/BottomEpisodeMenu;

    iget-object v1, p0, Lbl/BottomEpisodeMenu$1;->val$items:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    # invokes: Lbl/BottomEpisodeMenu;->updateTitleForItem(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lbl/BottomEpisodeMenu;->access$000(Lbl/BottomEpisodeMenu;Ljava/lang/String;)V

    .line 151
    :cond_12
    return-void
.end method
