.class public abstract Lcn/sharesdk/meipai/entity/b;
.super Lcn/sharesdk/meipai/entity/a;
.source "BaseResponse.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/sharesdk/meipai/entity/a;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 24
    const-string v0, "mp_resp_errcode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/meipai/entity/b;->c:I

    .line 25
    const-string v0, "mp_resp_errstr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/meipai/entity/b;->b:Ljava/lang/String;

    .line 26
    const-string v0, "mp_transaction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/meipai/entity/b;->a:Ljava/lang/String;

    .line 27
    return-void
.end method
