.class Lcom/bilibili/tv/ui/setting/SettingActivity$b$a$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/setting/SettingActivity$b$a;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ui/setting/SettingActivity$b$a;

.field final synthetic val$afpVar:Lbl/afp;

.field final synthetic val$f:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/setting/SettingActivity$b$a;Lbl/afp;I)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/bilibili/tv/ui/setting/SettingActivity$b$a$1;->this$2:Lcom/bilibili/tv/ui/setting/SettingActivity$b$a;

    iput-object p2, p0, Lcom/bilibili/tv/ui/setting/SettingActivity$b$a$1;->val$afpVar:Lbl/afp;

    iput p3, p0, Lcom/bilibili/tv/ui/setting/SettingActivity$b$a$1;->val$f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/bilibili/tv/ui/setting/SettingActivity$b$a$1;->val$afpVar:Lbl/afp;

    iget v1, p0, Lcom/bilibili/tv/ui/setting/SettingActivity$b$a$1;->val$f:I

    invoke-virtual {v0, v1}, Lbl/afp;->c(I)V

    .line 369
    return-void
.end method
