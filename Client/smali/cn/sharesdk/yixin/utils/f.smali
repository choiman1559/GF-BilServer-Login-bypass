.class public abstract Lcn/sharesdk/yixin/utils/f;
.super Ljava/lang/Object;
.source "YixinReq.java"


# instance fields
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
    .line 16
    const-string v0, "_yxapi_basereq_transaction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/f;->c:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 11
    const-string v0, "_yxapi_command_type"

    invoke-virtual {p0}, Lcn/sharesdk/yixin/utils/f;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    const-string v0, "_yxapi_basereq_transaction"

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method
