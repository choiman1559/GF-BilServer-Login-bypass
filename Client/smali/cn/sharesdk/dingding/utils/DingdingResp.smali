.class public abstract Lcn/sharesdk/dingding/utils/DingdingResp;
.super Ljava/lang/Object;
.source "DingdingResp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/dingding/utils/DingdingResp$ErrCode;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 21
    const-string v0, "android.intent.ding.EXTRA_BASEREQ_ERROR_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/dingding/utils/DingdingResp;->a:I

    .line 22
    const-string v0, "android.intent.ding.EXTRA_BASEREQ_ERROR_STRING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/utils/DingdingResp;->b:Ljava/lang/String;

    .line 23
    const-string v0, "android.intent.ding.EXTRA_BASEREQ_TRANSACTION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/utils/DingdingResp;->c:Ljava/lang/String;

    .line 24
    return-void
.end method
