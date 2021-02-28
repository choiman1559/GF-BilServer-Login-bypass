.class public abstract Lcn/sharesdk/yixin/utils/YixinResp;
.super Ljava/lang/Object;
.source "YixinResp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/yixin/utils/YixinResp$ErrCode;
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
.method public abstract a()I
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 22
    const-string v0, "_yxapi_baseresp_errcode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/yixin/utils/YixinResp;->a:I

    .line 23
    const-string v0, "_yxapi_baseresp_errstr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/YixinResp;->b:Ljava/lang/String;

    .line 24
    const-string v0, "_yxapi_baseresp_transaction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/YixinResp;->c:Ljava/lang/String;

    .line 25
    return-void
.end method
