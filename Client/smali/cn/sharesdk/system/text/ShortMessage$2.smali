.class Lcn/sharesdk/system/text/ShortMessage$2;
.super Ljava/lang/Object;
.source "ShortMessage.java"

# interfaces
.implements Lcn/sharesdk/system/text/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/ShortMessage;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic b:Lcn/sharesdk/system/text/ShortMessage;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/ShortMessage;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 3

    .prologue
    .line 78
    iput-object p1, p0, Lcn/sharesdk/system/text/ShortMessage$2;->b:Lcn/sharesdk/system/text/ShortMessage;

    iput-object p2, p0, Lcn/sharesdk/system/text/ShortMessage$2;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/HashMap;)V
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
    .line 93
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ShareParams"

    iget-object v1, p0, Lcn/sharesdk/system/text/ShortMessage$2;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcn/sharesdk/system/text/ShortMessage$2;->b:Lcn/sharesdk/system/text/ShortMessage;

    invoke-static {v0}, Lcn/sharesdk/system/text/ShortMessage;->k(Lcn/sharesdk/system/text/ShortMessage;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 95
    iget-object v0, p0, Lcn/sharesdk/system/text/ShortMessage$2;->b:Lcn/sharesdk/system/text/ShortMessage;

    invoke-static {v0}, Lcn/sharesdk/system/text/ShortMessage;->l(Lcn/sharesdk/system/text/ShortMessage;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/system/text/ShortMessage$2;->b:Lcn/sharesdk/system/text/ShortMessage;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 97
    :cond_1c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/sharesdk/system/text/ShortMessage$2;->b:Lcn/sharesdk/system/text/ShortMessage;

    invoke-static {v0}, Lcn/sharesdk/system/text/ShortMessage;->i(Lcn/sharesdk/system/text/ShortMessage;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 88
    iget-object v0, p0, Lcn/sharesdk/system/text/ShortMessage$2;->b:Lcn/sharesdk/system/text/ShortMessage;

    invoke-static {v0}, Lcn/sharesdk/system/text/ShortMessage;->j(Lcn/sharesdk/system/text/ShortMessage;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/system/text/ShortMessage$2;->b:Lcn/sharesdk/system/text/ShortMessage;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 90
    :cond_15
    return-void
.end method

.method public onStart(Ljava/util/HashMap;)V
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
    .line 80
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ShareParams"

    iget-object v1, p0, Lcn/sharesdk/system/text/ShortMessage$2;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcn/sharesdk/system/text/ShortMessage$2;->b:Lcn/sharesdk/system/text/ShortMessage;

    invoke-static {v0}, Lcn/sharesdk/system/text/ShortMessage;->g(Lcn/sharesdk/system/text/ShortMessage;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 82
    iget-object v0, p0, Lcn/sharesdk/system/text/ShortMessage$2;->b:Lcn/sharesdk/system/text/ShortMessage;

    invoke-static {v0}, Lcn/sharesdk/system/text/ShortMessage;->h(Lcn/sharesdk/system/text/ShortMessage;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/system/text/ShortMessage$2;->b:Lcn/sharesdk/system/text/ShortMessage;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 84
    :cond_1c
    return-void
.end method
