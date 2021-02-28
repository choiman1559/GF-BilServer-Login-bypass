.class Lcn/sharesdk/vkontakte/VKontakte$2;
.super Ljava/lang/Object;
.source "VKontakte.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/vkontakte/VKontakte;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic b:Lcn/sharesdk/vkontakte/VKontakte;


# direct methods
.method constructor <init>(Lcn/sharesdk/vkontakte/VKontakte;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 3

    .prologue
    .line 108
    iput-object p1, p0, Lcn/sharesdk/vkontakte/VKontakte$2;->b:Lcn/sharesdk/vkontakte/VKontakte;

    iput-object p2, p0, Lcn/sharesdk/vkontakte/VKontakte$2;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 4
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte$2;->b:Lcn/sharesdk/vkontakte/VKontakte;

    invoke-static {v0}, Lcn/sharesdk/vkontakte/VKontakte;->m(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 130
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte$2;->b:Lcn/sharesdk/vkontakte/VKontakte;

    invoke-static {v0}, Lcn/sharesdk/vkontakte/VKontakte;->n(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 132
    :cond_11
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 6
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
    .line 118
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_13

    .line 119
    :cond_8
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lcn/sharesdk/vkontakte/VKontakte$2;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 126
    :cond_12
    :goto_12
    return-void

    .line 121
    :cond_13
    const-string v0, "ShareParams"

    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte$2;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte$2;->b:Lcn/sharesdk/vkontakte/VKontakte;

    invoke-static {v0}, Lcn/sharesdk/vkontakte/VKontakte;->k(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 123
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte$2;->b:Lcn/sharesdk/vkontakte/VKontakte;

    invoke-static {v0}, Lcn/sharesdk/vkontakte/VKontakte;->l(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_12
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte$2;->b:Lcn/sharesdk/vkontakte/VKontakte;

    invoke-static {v0}, Lcn/sharesdk/vkontakte/VKontakte;->i(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 112
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte$2;->b:Lcn/sharesdk/vkontakte/VKontakte;

    invoke-static {v0}, Lcn/sharesdk/vkontakte/VKontakte;->j(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 114
    :cond_11
    return-void
.end method
