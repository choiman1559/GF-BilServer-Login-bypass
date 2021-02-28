.class public abstract Lcn/sharesdk/dingding/utils/d;
.super Ljava/lang/Object;
.source "DingdingReq.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 11
    const-string v0, "android.intent.ding.EXTRA_COMMAND_TYPE"

    invoke-virtual {p0}, Lcn/sharesdk/dingding/utils/d;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    const-string v0, "android.intent.ding.EXTRA_BASEREQ_TRANSACTION"

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 16
    const-string v0, "android.intent.ding.EXTRA_BASEREQ_TRANSACTION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/utils/d;->a:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public abstract b()Z
.end method
