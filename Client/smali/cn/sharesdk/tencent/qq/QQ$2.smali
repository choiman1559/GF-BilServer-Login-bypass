.class Lcn/sharesdk/tencent/qq/QQ$2;
.super Ljava/lang/Object;
.source "QQ.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/QQ;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic b:Lcn/sharesdk/tencent/qq/QQ;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/QQ;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 3

    .prologue
    .line 193
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    iput-object p2, p0, Lcn/sharesdk/tencent/qq/QQ$2;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 6
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/QQ;->p(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 216
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/QQ;->q(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 218
    :cond_15
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 8
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    if-eqz p3, :cond_a

    .line 204
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 207
    :cond_a
    const-string v1, "ShareParams"

    iget-object v2, p0, Lcn/sharesdk/tencent/qq/QQ$2;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v1}, Lcn/sharesdk/tencent/qq/QQ;->n(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 210
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v1}, Lcn/sharesdk/tencent/qq/QQ;->o(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 212
    :cond_26
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 7
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 195
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/QQ;->l(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 196
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/QQ;->m(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ$2;->b:Lcn/sharesdk/tencent/qq/QQ;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 198
    :cond_15
    return-void
.end method
