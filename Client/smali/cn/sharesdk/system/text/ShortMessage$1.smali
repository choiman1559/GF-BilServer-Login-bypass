.class Lcn/sharesdk/system/text/ShortMessage$1;
.super Ljava/lang/Object;
.source "ShortMessage.java"

# interfaces
.implements Lcn/sharesdk/system/text/login/LoginActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/ShortMessage;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/text/ShortMessage;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/ShortMessage;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcn/sharesdk/system/text/ShortMessage$1;->a:Lcn/sharesdk/system/text/ShortMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcn/sharesdk/system/text/ShortMessage$1;->a:Lcn/sharesdk/system/text/ShortMessage;

    invoke-static {v0}, Lcn/sharesdk/system/text/ShortMessage;->e(Lcn/sharesdk/system/text/ShortMessage;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 64
    iget-object v0, p0, Lcn/sharesdk/system/text/ShortMessage$1;->a:Lcn/sharesdk/system/text/ShortMessage;

    invoke-static {v0}, Lcn/sharesdk/system/text/ShortMessage;->f(Lcn/sharesdk/system/text/ShortMessage;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/system/text/ShortMessage$1;->a:Lcn/sharesdk/system/text/ShortMessage;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 66
    :cond_14
    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 53
    iget-object v0, p0, Lcn/sharesdk/system/text/ShortMessage$1;->a:Lcn/sharesdk/system/text/ShortMessage;

    invoke-static {v0}, Lcn/sharesdk/system/text/ShortMessage;->a(Lcn/sharesdk/system/text/ShortMessage;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 54
    iget-object v0, p0, Lcn/sharesdk/system/text/ShortMessage$1;->a:Lcn/sharesdk/system/text/ShortMessage;

    invoke-static {v0}, Lcn/sharesdk/system/text/ShortMessage;->b(Lcn/sharesdk/system/text/ShortMessage;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/system/text/ShortMessage$1;->a:Lcn/sharesdk/system/text/ShortMessage;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 56
    :cond_14
    return-void
.end method

.method public onSuccess(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcn/sharesdk/system/text/ShortMessage$1;->a:Lcn/sharesdk/system/text/ShortMessage;

    invoke-static {v0}, Lcn/sharesdk/system/text/ShortMessage;->c(Lcn/sharesdk/system/text/ShortMessage;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 59
    iget-object v0, p0, Lcn/sharesdk/system/text/ShortMessage$1;->a:Lcn/sharesdk/system/text/ShortMessage;

    invoke-static {v0}, Lcn/sharesdk/system/text/ShortMessage;->d(Lcn/sharesdk/system/text/ShortMessage;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/system/text/ShortMessage$1;->a:Lcn/sharesdk/system/text/ShortMessage;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 61
    :cond_14
    return-void
.end method
