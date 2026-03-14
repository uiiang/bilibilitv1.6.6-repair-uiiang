.class public Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;
.super Ljava/lang/Object;
.source "AuthSpaceSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuItem"
.end annotation


# instance fields
.field public id:J

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-wide p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->id:J

    .line 382
    iput-object p3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->name:Ljava/lang/String;

    .line 383
    iput p4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->type:I

    .line 384
    return-void
.end method
