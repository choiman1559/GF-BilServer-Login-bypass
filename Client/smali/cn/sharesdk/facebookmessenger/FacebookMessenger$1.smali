.class Lcn/sharesdk/facebookmessenger/FacebookMessenger$1;
.super Ljava/lang/Object;
.source "FacebookMessenger.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/facebookmessenger/FacebookMessenger;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;


# direct methods
.method constructor <init>(Lcn/sharesdk/facebookmessenger/FacebookMessenger;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 3

    .prologue
    .line 75
    iput-object p1, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger$1;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    iput-object p2, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger$1;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 4
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger$1;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    invoke-static {v0}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->e(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 90
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger$1;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    invoke-static {v0}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->f(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 92
    :cond_11
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
    .line 82
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    const-string v1, "ShareParams"

    iget-object v2, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger$1;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger$1;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    invoke-static {v1}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->c(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 85
    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger$1;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    invoke-static {v1}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->d(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 87
    :cond_1d
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger$1;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    invoke-static {v0}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->a(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 78
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger$1;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    invoke-static {v0}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->b(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 80
    :cond_11
    return-void
.end method
