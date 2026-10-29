.class public final Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
.super Lbl/ady;
.source "AuthSpaceVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;,
        Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$e;,
        Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;,
        Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$g;,
        Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;,
        Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;
    }
.end annotation


# static fields
.field private static final COLUMNS:I = 0x2

.field private static final DYNAMIC_FEATURES:Ljava/lang/String; = "itemOpusStyle,listOnlyfans,opusBigCover,onlyfansVote,decorationCard,onlyfansAssetsV2,forwardListHidden,ugcDelete,onlyfansQaCard,commentsNewVersion,avatarAutoTheme,sunflowerStyle,cardsEnhance,eva3CardOpus,eva3CardVideo,eva3CardComment,eva3CardVote,eva3CardUser"

.field private static final LOCATE_PS:I = 0xf

.field private static final TAG:Ljava/lang/String; = "AuthSpaceVideo"


# instance fields
.field private adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

.field private allVideoOrder:Ljava/lang/String;

.field public attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

.field private callback:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;

.field private cursor:Ljava/lang/Long;

.field private dynamicOffset:Ljava/lang/String;

.field private firstLoad:Z

.field private hasMore:Z

.field private headerCount:Landroid/widget/TextView;

.field private headerLayout:Landroid/view/View;

.field private headerTitle:Landroid/widget/TextView;

.field private hintSort:Landroid/widget/TextView;

.field private isSeasonFav:Z

.field private loading:Z

.field private locateAid:J

.field public locateButton:Lcom/bilibili/tv/widget/DrawTextView;

.field private locateBvid:Ljava/lang/String;

.field private locateGeneration:I

.field private locateHasMoreDown:Z

.field private locateHasMoreUp:Z

.field private locateMode:Z

.field private locateNavigated:Z

.field private locateNewestAid:J

.field private locateOldestAid:J

.field private locateTipWindow:Landroid/widget/PopupWindow;

.field private locateTitle:Ljava/lang/String;

.field private locatingDown:Z

.field private locatingRemote:Z

.field private locatingUp:Z

.field public mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mid:J

.field private mode:Ljava/lang/String;

.field private page:I

.field private pendingLocate:Z

.field private sortDirection:Ljava/lang/String;

.field private sortReverse:Z

.field public subscribeBtn:Lcom/bilibili/tv/widget/DrawTextView;

.field private targetId:J

.field private totalCount:I

.field private upName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    .line 60
    iput-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->cursor:Ljava/lang/Long;

    .line 61
    iput v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    .line 62
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    .line 63
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->firstLoad:Z

    .line 68
    iput-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->dynamicOffset:Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isSeasonFav:Z

    .line 81
    iput-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateAid:J

    .line 82
    iput-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateBvid:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateTitle:Ljava/lang/String;

    .line 85
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateMode:Z

    .line 86
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateNavigated:Z

    .line 87
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateHasMoreUp:Z

    .line 88
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateHasMoreDown:Z

    .line 89
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingUp:Z

    .line 90
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingDown:Z

    .line 91
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingRemote:Z

    .line 92
    iput-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateNewestAid:J

    .line 93
    iput-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateOldestAid:J

    .line 94
    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateGeneration:I

    .line 95
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->pendingLocate:Z

    .line 99
    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    .line 105
    iput-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    .line 106
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortReverse:Z

    .line 107
    const-string v0, "desc"

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortDirection:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->toggleSeasonSubscribe()V

    return-void
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    return-object v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isSeasonFav:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingUp:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingDown:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateGeneration:I

    return v0
.end method

.method static synthetic access$1400(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateMode:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->parseMedialist(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/bilibili/tv/api/auth/BiliSpaceVideo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateKey(Lcom/bilibili/tv/api/auth/BiliSpaceVideo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1702(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateHasMoreUp:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateHasMoreDown:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->updateLocateCursors()V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->updateSubscribeButtonUI()V

    return-void
.end method

.method static synthetic access$2000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;III)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->scrollToAnchor(III)V

    return-void
.end method

.method static synthetic access$2100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->pendingLocate:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->pendingLocate:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    return v0
.end method

.method static synthetic access$2308(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    return v0
.end method

.method static synthetic access$2400(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingRemote:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->b()V

    return-void
.end method

.method static synthetic access$2700(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateAid:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->querySeasonFavStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->showRelationTagMenu()V

    return-void
.end method

.method static synthetic access$3000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->dynamicOffset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->dynamicOffset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->firstLoad:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->firstLoad:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->updateAttentionButton(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->showLocateTip()V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hideLocateTip()V

    return-void
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateToCurrent()V

    return-void
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;I[I[Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->onLocateResponse(I[I[Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->findChildByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    .line 937
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 938
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadAllVideos()V

    .line 948
    :goto_10
    return-void

    .line 939
    :cond_11
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 940
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadSeasonVideos()V

    goto :goto_10

    .line 941
    :cond_1f
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 942
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadSeriesVideos()V

    goto :goto_10

    .line 943
    :cond_2d
    const-string v0, "dynamic"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 944
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadDynamicVideos()V

    goto :goto_10

    .line 946
    :cond_3b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    goto :goto_10
.end method

.method private createLocateCallback(II[I[Lcom/alibaba/fastjson/JSONObject;)Lbl/vn;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I[",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Lbl/vn",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$12;

    move-object v1, p0

    move v2, p1

    move-object v3, p4

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$12;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;I[Lcom/alibaba/fastjson/JSONObject;I[I)V

    return-object v0
.end method

.method private enterLocateMode()V
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateMode:Z

    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateNavigated:Z

    .line 515
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->updateLocateCursors()V

    .line 516
    return-void
.end method

.method private exitLocateMode()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 520
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateMode:Z

    .line 521
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateNavigated:Z

    .line 522
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateHasMoreUp:Z

    .line 523
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateHasMoreDown:Z

    .line 524
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingUp:Z

    .line 525
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingDown:Z

    .line 526
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingRemote:Z

    .line 527
    iput-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateNewestAid:J

    .line 528
    iput-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateOldestAid:J

    .line 529
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateGeneration:I

    .line 530
    return-void
.end method

.method private findChildByPosition(I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 691
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 696
    :goto_6
    return-object v0

    .line 692
    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 693
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 694
    if-eqz v2, :cond_22

    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v3

    if-ne v3, p1, :cond_22

    move-object v0, v2

    goto :goto_6

    .line 692
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_25
    move-object v0, v1

    .line 696
    goto :goto_6
.end method

.method private findLocateIndex()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 491
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    if-nez v0, :cond_7

    move v1, v2

    .line 496
    :cond_6
    :goto_6
    return v1

    .line 492
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->getData()Ljava/util/List;

    move-result-object v3

    .line 493
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 494
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isLocateTarget(Lcom/bilibili/tv/api/auth/BiliSpaceVideo;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 493
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_25
    move v1, v2

    .line 496
    goto :goto_6
.end method

.method private hideLocateTip()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateTipWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_c

    .line 458
    :try_start_4
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateTipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_d

    .line 459
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateTipWindow:Landroid/widget/PopupWindow;

    .line 461
    :cond_c
    return-void

    .line 458
    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method private initHeader()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 202
    const-string v0, "all"

    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "dynamic"

    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 203
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    .line 204
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 205
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_2e
    :goto_2e
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->setupAttentionButton()V

    .line 212
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->setupLocateButton()V

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_56

    .line 214
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    if-lez v0, :cond_77

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u6761"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_53
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_56
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_6a

    .line 217
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    const-string v0, "all"

    iget-object v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    move v0, v1

    :goto_67
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :cond_6a
    :goto_6a
    return-void

    .line 207
    :cond_6b
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 214
    :cond_77
    const-string v0, ""

    goto :goto_53

    :cond_7a
    move v0, v2

    .line 217
    goto :goto_67

    .line 219
    :cond_7c
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isSeasonOrSeriesMode()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 220
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_8d

    .line 221
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    const-string v3, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_8d
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_96

    .line 224
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 226
    :cond_96
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_b8

    .line 227
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    if-lez v0, :cond_c5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u4e2a\u89c6\u9891"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_b8
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_c1

    .line 230
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    :cond_c1
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->setupSubscribeButton()V

    goto :goto_6a

    .line 227
    :cond_c5
    const-string v0, ""

    goto :goto_b5
.end method

.method private isLocateTarget(Lcom/bilibili/tv/api/auth/BiliSpaceVideo;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 500
    if-nez p1, :cond_6

    move v0, v1

    .line 502
    :cond_5
    :goto_5
    return v0

    .line 501
    :cond_6
    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateAid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_18

    iget-wide v2, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    iget-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateAid:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_5

    .line 502
    :cond_18
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateBvid:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateBvid:Ljava/lang/String;

    iget-object v3, p1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_26
    move v0, v1

    goto :goto_5
.end method

.method private loadAllVideos()V
    .locals 13

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 952
    if-nez v0, :cond_7

    .line 1049
    :cond_6
    :goto_6
    return-void

    .line 954
    :cond_7
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 955
    if-eqz v0, :cond_6

    .line 957
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v12

    .line 958
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    .line 959
    iget-object v7, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    .line 960
    const-string v0, "AuthSpaceVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAllVideos mid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    iget v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    const/16 v5, 0x28

    const/4 v6, 0x0

    const-string v8, ""

    const/4 v9, 0x1

    const-string v10, "web"

    const-string v11, "333.1387"

    invoke-interface/range {v1 .. v12}, Lmybl/MyBiliApiService;->getSpaceArcSearch(JIIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$16;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 963
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6
.end method

.method private loadDynamicVideos()V
    .locals 9

    .prologue
    .line 1219
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1220
    if-nez v0, :cond_7

    .line 1314
    :cond_6
    :goto_6
    return-void

    .line 1222
    :cond_7
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 1223
    if-eqz v0, :cond_6

    .line 1225
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v8

    .line 1226
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    .line 1227
    iget-object v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->dynamicOffset:Ljava/lang/String;

    .line 1228
    const-string v0, "AuthSpaceVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadDynamicVideos mid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    const-string v5, "itemOpusStyle,listOnlyfans,opusBigCover,onlyfansVote,decorationCard,onlyfansAssetsV2,forwardListHidden,ugcDelete,onlyfansQaCard,commentsNewVersion,avatarAutoTheme,sunflowerStyle,cardsEnhance,eva3CardOpus,eva3CardVideo,eva3CardComment,eva3CardVote,eva3CardUser"

    const/16 v6, -0x1e0

    const-string v7, "web"

    invoke-interface/range {v1 .. v8}, Lmybl/MyBiliApiService;->getSpaceDynamicFeed(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$19;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$19;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 1231
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6
.end method

.method private loadLocate(Z)V
    .locals 22

    .prologue
    .line 705
    if-eqz p1, :cond_32

    .line 706
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateHasMoreUp:Z

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingUp:Z

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateNewestAid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_19

    .line 781
    :cond_18
    :goto_18
    return-void

    .line 707
    :cond_19
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingUp:Z

    .line 712
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 713
    if-eqz v4, :cond_4e

    invoke-static {v4}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v4

    .line 714
    :goto_28
    if-nez v4, :cond_56

    .line 715
    if-eqz p1, :cond_50

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingUp:Z

    goto :goto_18

    .line 709
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateHasMoreDown:Z

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingDown:Z

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateOldestAid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_18

    .line 710
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingDown:Z

    goto :goto_1e

    .line 713
    :cond_4e
    const/4 v4, 0x0

    goto :goto_28

    .line 715
    :cond_50
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingDown:Z

    goto :goto_18

    .line 718
    :cond_56
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateGeneration:I

    move/from16 v21, v0

    .line 719
    if-eqz p1, :cond_e2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateNewestAid:J

    .line 720
    :goto_62
    invoke-static {v4}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v20

    .line 721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://space.bilibili.com/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/video"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 722
    const-string v4, "AuthSpaceVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadLocate up="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cursor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-class v4, Lmybl/MyBiliApiService;

    invoke-static {v4}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmybl/MyBiliApiService;

    const-string v6, "web"

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    const/4 v12, 0x2

    const/16 v13, 0xf

    const/4 v15, 0x1

    const-string v16, "1"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v14, p1

    .line 724
    invoke-interface/range {v5 .. v20}, Lmybl/MyBiliApiService;->getSpaceMedialist(Ljava/lang/String;IJJIIZZLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v4

    new-instance v5, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$14;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$14;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;ZI)V

    .line 725
    invoke-virtual {v4, v5}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_18

    .line 719
    :cond_e2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateOldestAid:J

    goto/16 :goto_62
.end method

.method private loadSeasonVideos()V
    .locals 12

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1053
    if-nez v0, :cond_7

    .line 1134
    :cond_6
    :goto_6
    return-void

    .line 1056
    :cond_7
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 1057
    if-eqz v0, :cond_6

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/polymer/web-space/seasons_archives_list?mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&season_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sort_reverse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortReverse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page_size=30&page_num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&web_location=333.1387"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1061
    const-string v2, "AuthSpaceVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSeasonVideos URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://space.bilibili.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lists/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?type=season"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1064
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v11

    .line 1065
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    iget-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortReverse:Z

    .line 1066
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/16 v7, 0x1e

    iget v8, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    const-string v9, "333.1387"

    invoke-interface/range {v1 .. v11}, Lmybl/MyBiliApiService;->getSeasonsArchivesList(JJLjava/lang/Boolean;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$17;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$17;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 1067
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_6
.end method

.method private loadSeriesVideos()V
    .locals 15

    .prologue
    .line 1137
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1138
    if-nez v0, :cond_7

    .line 1216
    :cond_6
    :goto_6
    return-void

    .line 1140
    :cond_7
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 1141
    if-eqz v0, :cond_6

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/series/archives?mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&current_mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1143
    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&series_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&only_normal=true&sort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortDirection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ps=30&pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&web_location=333.1387"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1146
    const-string v2, "AuthSpaceVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSeriesVideos URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://space.bilibili.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lists/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?type=series"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1149
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v14

    .line 1150
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    .line 1151
    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortDirection:Ljava/lang/String;

    const/16 v10, 0x1e

    iget v11, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    const-string v12, "333.1387"

    invoke-interface/range {v1 .. v14}, Lmybl/MyBiliApiService;->getSeriesArchives(JJJZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$18;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$18;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 1152
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_6
.end method

.method private static locateKey(Lcom/bilibili/tv/api/auth/BiliSpaceVideo;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 507
    if-nez p0, :cond_5

    const-string v0, "bnull"

    .line 509
    :goto_4
    return-object v0

    .line 508
    :cond_5
    iget-wide v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 509
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    :goto_34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_3d
    const-string v0, ""

    goto :goto_34
.end method

.method private locateToCurrent()V
    .locals 4

    .prologue
    .line 472
    iget-wide v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateAid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    if-eqz v0, :cond_d

    .line 487
    :cond_c
    :goto_c
    return-void

    .line 474
    :cond_d
    const-string v0, "pubdate"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 475
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->pendingLocate:Z

    if-nez v0, :cond_c

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->pendingLocate:Z

    .line 477
    const-string v0, "pubdate"

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->setSortOrder(Ljava/lang/String;)V

    goto :goto_c

    .line 480
    :cond_24
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->findLocateIndex()I

    move-result v0

    .line 481
    if-ltz v0, :cond_31

    .line 482
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->enterLocateMode()V

    .line 483
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->scrollToLocate(I)V

    goto :goto_c

    .line 486
    :cond_31
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->remoteLocate()V

    goto :goto_c
.end method

.method public static newInstance(Ljava/lang/String;JJ)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;-><init>()V

    .line 111
    iput-object p0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    .line 112
    iput-wide p1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    .line 113
    iput-wide p3, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    .line 114
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;JJLjava/lang/String;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;-><init>()V

    .line 119
    iput-object p0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    .line 120
    iput-wide p1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    .line 121
    iput-wide p3, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    .line 122
    iput-object p5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    .line 123
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
    .locals 1

    .prologue
    .line 129
    invoke-static/range {p0 .. p5}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->newInstance(Ljava/lang/String;JJLjava/lang/String;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    move-result-object v0

    .line 130
    iput-wide p6, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateAid:J

    .line 131
    iput-object p8, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateBvid:Ljava/lang/String;

    .line 132
    iput-object p9, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateTitle:Ljava/lang/String;

    .line 133
    return-object v0
.end method

.method private onLocateResponse(I[I[Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 591
    aget v0, p2, v2

    add-int/lit8 v0, v0, -0x1

    aput v0, p2, v2

    .line 592
    aget v0, p2, v2

    if-lez v0, :cond_d

    .line 634
    :cond_c
    :goto_c
    return-void

    .line 593
    :cond_d
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 594
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateGeneration:I

    if-eq p1, v0, :cond_36

    .line 595
    const-string v0, "AuthSpaceVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteLocate stale gen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 598
    :cond_36
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingRemote:Z

    .line 599
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    .line 600
    aget-object v0, p3, v2

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->parseMedialist(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 601
    aget-object v1, p3, v3

    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->parseMedialist(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 603
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 604
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 605
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_54
    :goto_54
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 606
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateKey(Lcom/bilibili/tv/api/auth/BiliSpaceVideo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 608
    :cond_6e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_72
    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 609
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateKey(Lcom/bilibili/tv/api/auth/BiliSpaceVideo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 612
    :cond_8c
    const/4 v4, -0x1

    move v1, v2

    .line 613
    :goto_8e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_fb

    .line 614
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isLocateTarget(Lcom/bilibili/tv/api/auth/BiliSpaceVideo;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 619
    :goto_a0
    if-gez v1, :cond_c0

    .line 620
    const-string v0, "AuthSpaceVideo"

    const-string v1, "remoteLocate target not found"

    invoke-static {v0, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5b9a\u4f4d\u5931\u8d25\uff1a\u672a\u5728UP\u4e3b\u6295\u7a3f\u4e2d\u627e\u5230\u8be5\u89c6\u9891"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 622
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->exitLocateMode()V

    .line 623
    iput v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    .line 624
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->b()V

    goto/16 :goto_c

    .line 613
    :cond_bc
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8e

    .line 627
    :cond_c0
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->setVideos(Ljava/util/List;)V

    .line 628
    aget-object v0, p3, v2

    if-eqz v0, :cond_f7

    aget-object v0, p3, v2

    const-string v4, "has_more"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f7

    move v0, v3

    :goto_d4
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateHasMoreUp:Z

    .line 629
    aget-object v0, p3, v3

    if-eqz v0, :cond_f9

    aget-object v0, p3, v3

    const-string v4, "has_more"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9

    :goto_e4
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateHasMoreDown:Z

    .line 630
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->enterLocateMode()V

    .line 631
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 632
    if-eqz v0, :cond_f2

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 633
    :cond_f2
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->scrollToLocate(I)V

    goto/16 :goto_c

    :cond_f7
    move v0, v2

    .line 628
    goto :goto_d4

    :cond_f9
    move v3, v2

    .line 629
    goto :goto_e4

    :cond_fb
    move v1, v4

    goto :goto_a0
.end method

.method private parseMedialist(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 639
    if-nez p1, :cond_8

    .line 657
    :cond_7
    :goto_7
    return-object v0

    .line 641
    :cond_8
    :try_start_8
    const-string v1, "media_list"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 642
    if-eqz v2, :cond_7

    .line 643
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 645
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2a

    .line 646
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 648
    invoke-static {v4}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->fromMedialistItem(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 650
    :cond_2a
    const-string v1, "\u4e2a\u4eba\u6295\u7a3f"

    invoke-static {v3, v1}, Lmybl/BiliFilter;->filterBiliSpaceVideo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 652
    const-string v1, "AuthSpaceVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseMedialist size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has_more="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "has_more"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5c} :catch_5d

    goto :goto_7

    .line 654
    :catch_5d
    move-exception v1

    .line 655
    const-string v2, "AuthSpaceVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseMedialist error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private querySeasonFavStatus(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 287
    :cond_e
    :goto_e
    return-void

    .line 267
    :cond_f
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SESSDATA="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-interface {v0, p1, v1}, Lmybl/MyBiliApiService;->getArchiveRelation(Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 271
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_e
.end method

.method private remoteLocate()V
    .locals 23

    .prologue
    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 543
    if-nez v4, :cond_7

    .line 563
    :goto_6
    return-void

    .line 544
    :cond_7
    invoke-static {v4}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v4

    .line 545
    if-nez v4, :cond_17

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u5b9a\u4f4d"

    invoke-static {v4, v5}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 549
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->exitLocateMode()V

    .line 550
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingRemote:Z

    .line 551
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    .line 552
    move-object/from16 v0, p0

    iget v5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateGeneration:I

    add-int/lit8 v21, v5, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateGeneration:I

    .line 553
    invoke-static {v4}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v20

    .line 554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://space.bilibili.com/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/video"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 555
    const-string v4, "AuthSpaceVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remoteLocate mid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " aid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateAid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-class v4, Lmybl/MyBiliApiService;

    invoke-static {v4}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmybl/MyBiliApiService;

    .line 557
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/alibaba/fastjson/JSONObject;

    .line 558
    const/4 v6, 0x1

    new-array v0, v6, [I

    move-object/from16 v22, v0

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v22, v6

    .line 559
    const-string v6, "web"

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateAid:J

    const/4 v12, 0x2

    const/16 v13, 0xf

    const/4 v14, 0x1

    const/4 v15, 0x1

    const-string v16, "1"

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-interface/range {v5 .. v20}, Lmybl/MyBiliApiService;->getSpaceMedialist(Ljava/lang/String;IJJIIZZLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v6

    const/4 v7, 0x0

    .line 560
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v7, v1, v2, v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->createLocateCallback(II[I[Lcom/alibaba/fastjson/JSONObject;)Lbl/vn;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 561
    const-string v6, "web"

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateAid:J

    const/4 v12, 0x2

    const/16 v13, 0xf

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v16, "1"

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-interface/range {v5 .. v20}, Lmybl/MyBiliApiService;->getSpaceMedialist(Ljava/lang/String;IJJIIZZLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v5

    const/4 v6, 0x1

    .line 562
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v6, v1, v2, v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->createLocateCallback(II[I[Lcom/alibaba/fastjson/JSONObject;)Lbl/vn;

    move-result-object v4

    invoke-virtual {v5, v4}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_6
.end method

.method private scrollToAnchor(III)V
    .locals 5

    .prologue
    .line 788
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5

    .line 808
    :goto_4
    return-void

    .line 790
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 791
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_47

    .line 795
    :goto_3c
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$15;

    invoke-direct {v1, p0, p3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$15;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 792
    :catch_47
    move-exception v0

    .line 793
    const-string v1, "AuthSpaceVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollToAnchor error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private scrollToLocate(I)V
    .locals 5

    .prologue
    .line 662
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5

    .line 687
    :goto_4
    return-void

    .line 664
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 665
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_48

    .line 674
    :goto_3d
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$13;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$13;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 666
    :catch_48
    move-exception v0

    .line 668
    :try_start_49
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "a"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6c} :catch_6d

    goto :goto_3d

    .line 670
    :catch_6d
    move-exception v0

    .line 671
    const-string v1, "AuthSpaceVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollToLocate error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d
.end method

.method private setupAttentionButton()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-nez v0, :cond_5

    .line 385
    :cond_4
    :goto_4
    return-void

    .line 348
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 350
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 356
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_4

    .line 365
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 366
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-interface {v0, v2, v3, v1}, Lmybl/MyBiliApiService;->getRelation(JLjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 367
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private setupLocateButton()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-nez v0, :cond_6

    .line 435
    :cond_5
    :goto_5
    return-void

    .line 418
    :cond_6
    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateAid:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_49

    const-string v0, "all"

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    .line 419
    :goto_23
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_4b

    :goto_27
    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 420
    if-eqz v0, :cond_5

    .line 421
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 422
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$10;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$10;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 429
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$11;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$11;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_49
    move v0, v1

    .line 418
    goto :goto_23

    .line 419
    :cond_4b
    const/16 v1, 0x8

    goto :goto_27
.end method

.method private setupSubscribeButton()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->subscribeBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-nez v0, :cond_5

    .line 255
    :cond_4
    :goto_4
    return-void

    .line 239
    :cond_5
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 240
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->subscribeBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v1, :cond_34

    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 241
    if-eqz v1, :cond_4

    .line 242
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->subscribeBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 243
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->subscribeBtn:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$1;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 249
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->subscribeBtn:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 240
    :cond_34
    const/16 v0, 0x8

    goto :goto_12
.end method

.method private showLocateTip()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 439
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hideLocateTip()V

    .line 440
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateTitle:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1a

    .line 454
    :cond_19
    :goto_19
    return-void

    .line 441
    :cond_1a
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8df3\u8f6c\u5230"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    const v1, 0x7f060136

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 444
    const v1, 0x7f0500a1

    invoke-static {v1}, Lbl/adl;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    const v1, 0x7f0700f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 446
    const v1, 0x7f0600c7

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 447
    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 448
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 450
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 451
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateTipWindow:Landroid/widget/PopupWindow;

    .line 452
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateTipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 453
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateTipWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    const v2, 0x7f0601bb

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_19
.end method

.method private showRelationTagMenu()V
    .locals 4

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 389
    if-nez v0, :cond_7

    .line 404
    :goto_6
    return-void

    .line 390
    :cond_7
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lbl/mg;->a()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 392
    :cond_13
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8d26\u53f7\u672a\u767b\u5f55"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 395
    :cond_1d
    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-direct {v1, v0, v2, v3}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;-><init>(Landroid/app/Activity;J)V

    .line 396
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$9;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->setOnTagsChangedListener(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$OnTagsChangedListener;)V

    .line 403
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->show()V

    goto :goto_6
.end method

.method private toggleSeasonSubscribe()V
    .locals 6

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 292
    if-nez v1, :cond_7

    .line 344
    :goto_6
    return-void

    .line 293
    :cond_7
    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 295
    :cond_13
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8d26\u53f7\u672a\u767b\u5f55"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 298
    :cond_1d
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v3

    .line 300
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isSeasonFav:Z

    if-nez v0, :cond_43

    const/4 v0, 0x1

    .line 301
    :goto_2a
    if-eqz v0, :cond_45

    .line 302
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    invoke-interface {v0, v4, v5, v3, v2}, Lmybl/MyBiliApiService;->favSeason(JLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v2, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;

    invoke-direct {v2, p0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Landroid/app/Activity;)V

    .line 303
    invoke-virtual {v0, v2}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6

    .line 300
    :cond_43
    const/4 v0, 0x0

    goto :goto_2a

    .line 323
    :cond_45
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    invoke-interface {v0, v4, v5, v3, v2}, Lmybl/MyBiliApiService;->unfavSeason(JLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v2, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;

    invoke-direct {v2, p0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Landroid/app/Activity;)V

    .line 324
    invoke-virtual {v0, v2}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6
.end method

.method private updateAttentionButton(Z)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_15

    .line 408
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz p1, :cond_16

    const-string v0, "\u5df2\u5173\u6ce8"

    :goto_a
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 411
    :cond_15
    return-void

    .line 408
    :cond_16
    const-string v0, "\uff0b\u5173\u6ce8"

    goto :goto_a
.end method

.method private updateLocateCursors()V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 534
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    if-nez v0, :cond_7

    .line 538
    :goto_6
    return-void

    .line 535
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->getData()Ljava/util/List;

    move-result-object v4

    .line 536
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    move-wide v0, v2

    :goto_14
    iput-wide v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateNewestAid:J

    .line 537
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    :goto_1c
    iput-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateOldestAid:J

    goto :goto_6

    .line 536
    :cond_1f
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    iget-wide v0, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    goto :goto_14

    .line 537
    :cond_29
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    iget-wide v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    goto :goto_1c
.end method

.method private updateSubscribeButtonUI()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->subscribeBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_f

    .line 259
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->subscribeBtn:Lcom/bilibili/tv/widget/DrawTextView;

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isSeasonFav:Z

    if-eqz v0, :cond_10

    const-string v0, "\u5df2\u8ba2\u9605\u5408\u96c6"

    :goto_c
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_f
    return-void

    .line 259
    :cond_10
    const-string v0, "\u8ba2\u9605\u5408\u96c6"

    goto :goto_c
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 166
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 167
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 168
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 169
    if-nez v0, :cond_16

    .line 191
    :goto_15
    return-void

    .line 171
    :cond_16
    new-instance v2, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$e;

    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$e;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 172
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 173
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 174
    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 175
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 176
    const v4, 0x7f060154

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    .line 177
    invoke-virtual {p1, v3, v3, v3, v4}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 178
    new-instance v3, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 179
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$g;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$g;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 180
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    .line 181
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->setOuter(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 182
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 183
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->callback:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;

    .line 186
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->initHeader()V

    .line 189
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->i()V

    .line 190
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->b()V

    goto :goto_15
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 918
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    if-eqz v1, :cond_14

    .line 919
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->a()I

    move-result v1

    if-lez v1, :cond_14

    const/4 v0, 0x1

    .line 921
    :cond_14
    return v0
.end method

.method public canSort()Z
    .locals 2

    .prologue
    .line 874
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public d_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 926
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 927
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->exitLocateMode()V

    .line 928
    iput-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->cursor:Ljava/lang/Long;

    .line 929
    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    .line 930
    iput-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->dynamicOffset:Ljava/lang/String;

    .line 931
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    .line 932
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->b()V

    .line 933
    return-void
.end method

.method public getCurrentMode()I
    .locals 2

    .prologue
    .line 878
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 882
    :goto_b
    return v0

    .line 879
    :cond_c
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_b

    .line 880
    :cond_18
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x2

    goto :goto_b

    .line 881
    :cond_24
    const-string v0, "dynamic"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x3

    goto :goto_b

    .line 882
    :cond_30
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 886
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 887
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    .line 893
    :goto_c
    return-object v0

    .line 888
    :cond_d
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 889
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortReverse:Z

    if-eqz v0, :cond_1e

    const-string v0, "default"

    goto :goto_c

    :cond_1e
    const-string v0, "reverse"

    goto :goto_c

    .line 890
    :cond_21
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 891
    const-string v0, "desc"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortDirection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "default"

    goto :goto_c

    :cond_38
    const-string v0, "reverse"

    goto :goto_c

    .line 893
    :cond_3b
    const-string v0, "default"

    goto :goto_c
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    return v0
.end method

.method public isSeasonOrSeriesMode()Z
    .locals 2

    .prologue
    .line 870
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public locateLoadByKeyEvent(Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 834
    iget-boolean v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateMode:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    if-nez v2, :cond_f

    .line 850
    :cond_e
    :goto_e
    return v0

    .line 835
    :cond_f
    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 836
    if-eqz v2, :cond_e

    .line 837
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v2

    .line 838
    if-ltz v2, :cond_e

    .line 839
    if-eqz p1, :cond_4b

    .line 840
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateHasMoreUp:Z

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    if-ge v2, v3, :cond_e

    .line 841
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingUp:Z

    if-eqz v0, :cond_2e

    move v0, v1

    goto :goto_e

    .line 842
    :cond_2e
    const-string v0, "AuthSpaceVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locateLoadByKeyEvent up pos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadLocate(Z)V

    move v0, v1

    .line 844
    goto :goto_e

    .line 846
    :cond_4b
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateHasMoreDown:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-lt v2, v3, :cond_e

    .line 847
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingDown:Z

    if-eqz v3, :cond_63

    move v0, v1

    goto :goto_e

    .line 848
    :cond_63
    const-string v3, "AuthSpaceVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locateLoadByKeyEvent down pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadLocate(Z)V

    move v0, v1

    .line 850
    goto :goto_e
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 138
    const v0, 0x7f0a008d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 139
    const v0, 0x7f08019e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerLayout:Landroid/view/View;

    .line 140
    const v0, 0x7f08019f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0801a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f08016e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    .line 143
    const v0, 0x7f080267

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    .line 144
    const v0, 0x7f08026b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->subscribeBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 145
    const v0, 0x7f080097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_66

    .line 147
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "\u6392\u5e8f"

    invoke-static {v2, v3}, Lbl/abd;->get_more_action_hint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_66
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hideLocateTip()V

    .line 155
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 156
    return-void
.end method

.method public onLocateFocusPosition(I)V
    .locals 3

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateMode:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    if-nez v0, :cond_9

    .line 825
    :cond_8
    :goto_8
    return-void

    .line 817
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 818
    const/4 v1, 0x2

    if-ge p1, v1, :cond_3b

    iget-boolean v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateHasMoreUp:Z

    if-eqz v1, :cond_3b

    iget-boolean v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingUp:Z

    if-nez v1, :cond_3b

    .line 819
    const-string v0, "AuthSpaceVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focus auto load up pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadLocate(Z)V

    goto :goto_8

    .line 821
    :cond_3b
    add-int/lit8 v0, v0, -0x2

    if-lt p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateHasMoreDown:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locatingDown:Z

    if-nez v0, :cond_8

    .line 822
    const-string v0, "AuthSpaceVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focus auto load down pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadLocate(Z)V

    goto :goto_8
.end method

.method public onUserNavigate()V
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateMode:Z

    if-eqz v0, :cond_7

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateNavigated:Z

    .line 468
    :cond_7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Lbl/ady;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 914
    :cond_a
    :goto_a
    return-void

    .line 900
    :cond_b
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 901
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    .line 903
    const-string v0, "pubdate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->pendingLocate:Z

    .line 911
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    if-eqz v0, :cond_a

    .line 912
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->d_()V

    goto :goto_a

    .line 906
    :cond_2a
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 907
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortReverse:Z

    goto :goto_22

    .line 908
    :cond_3d
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 909
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "desc"

    :goto_51
    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortDirection:Ljava/lang/String;

    goto :goto_22

    :cond_54
    const-string v0, "asc"

    goto :goto_51
.end method

.method public updateHeaderInfo(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 856
    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    .line 857
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 858
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_46

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a\u89c6\u9891"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 862
    const-string v1, "all"

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6761"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 865
    :cond_41
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    :cond_46
    return-void
.end method
