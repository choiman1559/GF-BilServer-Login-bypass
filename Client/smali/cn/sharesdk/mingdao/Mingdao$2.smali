.class Lcn/sharesdk/mingdao/Mingdao$2;
.super Ljava/lang/Object;
.source "Mingdao.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/mingdao/Mingdao;->a(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic b:Lcn/sharesdk/mingdao/Mingdao;


# direct methods
.method constructor <init>(Lcn/sharesdk/mingdao/Mingdao;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 3

    .prologue
    .line 216
    iput-object p1, p0, Lcn/sharesdk/mingdao/Mingdao$2;->b:Lcn/sharesdk/mingdao/Mingdao;

    iput-object p2, p0, Lcn/sharesdk/mingdao/Mingdao$2;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 6
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao$2;->b:Lcn/sharesdk/mingdao/Mingdao;

    invoke-static {v0}, Lcn/sharesdk/mingdao/Mingdao;->m(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 236
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao$2;->b:Lcn/sharesdk/mingdao/Mingdao;

    invoke-static {v0}, Lcn/sharesdk/mingdao/Mingdao;->n(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao$2;->b:Lcn/sharesdk/mingdao/Mingdao;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 238
    :cond_15
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 7
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
    .line 224
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p3, :cond_7

    .line 225
    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 227
    .restart local p3    # "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    const-string v0, "ShareParams"

    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao$2;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao$2;->b:Lcn/sharesdk/mingdao/Mingdao;

    invoke-static {v0}, Lcn/sharesdk/mingdao/Mingdao;->k(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 230
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao$2;->b:Lcn/sharesdk/mingdao/Mingdao;

    invoke-static {v0}, Lcn/sharesdk/mingdao/Mingdao;->l(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao$2;->b:Lcn/sharesdk/mingdao/Mingdao;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 232
    :cond_23
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 7
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 218
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao$2;->b:Lcn/sharesdk/mingdao/Mingdao;

    invoke-static {v0}, Lcn/sharesdk/mingdao/Mingdao;->i(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 219
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao$2;->b:Lcn/sharesdk/mingdao/Mingdao;

    invoke-static {v0}, Lcn/sharesdk/mingdao/Mingdao;->j(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao$2;->b:Lcn/sharesdk/mingdao/Mingdao;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 221
    :cond_15
    return-void
.end method
