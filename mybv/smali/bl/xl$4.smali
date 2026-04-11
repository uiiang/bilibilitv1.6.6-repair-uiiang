.class Lbl/xl$4;
.super Ljava/lang/Object;
.source "xl.java"

# interfaces
.implements Lbl/BottomEpisodeMenu$OnEpisodeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xl;->getBottomEpisodeMenu()Lbl/BottomEpisodeMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xl;


# direct methods
.method constructor <init>(Lbl/xl;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lbl/xl$4;->this$0:Lbl/xl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpisodeClicked(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;I)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lbl/xl$4;->this$0:Lbl/xl;

    # invokes: Lbl/xl;->e(I)V
    invoke-static {v0, p2}, Lbl/xl;->access$200(Lbl/xl;I)V

    .line 431
    return-void
.end method
