.class Lcn/sharesdk/facebook/Facebook$2;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/facebook/Facebook;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic b:Lcn/sharesdk/facebook/Facebook;


# direct methods
.method constructor <init>(Lcn/sharesdk/facebook/Facebook;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 3

    .prologue
    .line 225
    iput-object p1, p0, Lcn/sharesdk/facebook/Facebook$2;->b:Lcn/sharesdk/facebook/Facebook;

    iput-object p2, p0, Lcn/sharesdk/facebook/Facebook$2;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 6
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook$2;->b:Lcn/sharesdk/facebook/Facebook;

    invoke-static {v0}, Lcn/sharesdk/facebook/Facebook;->k(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 241
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook$2;->b:Lcn/sharesdk/facebook/Facebook;

    invoke-static {v0}, Lcn/sharesdk/facebook/Facebook;->l(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook$2;->b:Lcn/sharesdk/facebook/Facebook;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 243
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
    .line 233
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook$2;->b:Lcn/sharesdk/facebook/Facebook;

    invoke-static {v0}, Lcn/sharesdk/facebook/Facebook;->i(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 234
    const-string v0, "ShareParams"

    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook$2;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook$2;->b:Lcn/sharesdk/facebook/Facebook;

    invoke-static {v0}, Lcn/sharesdk/facebook/Facebook;->j(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook$2;->b:Lcn/sharesdk/facebook/Facebook;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 237
    :cond_1c
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 7
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 227
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook$2;->b:Lcn/sharesdk/facebook/Facebook;

    invoke-static {v0}, Lcn/sharesdk/facebook/Facebook;->g(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 228
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook$2;->b:Lcn/sharesdk/facebook/Facebook;

    invoke-static {v0}, Lcn/sharesdk/facebook/Facebook;->h(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook$2;->b:Lcn/sharesdk/facebook/Facebook;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 230
    :cond_15
    return-void
.end method
