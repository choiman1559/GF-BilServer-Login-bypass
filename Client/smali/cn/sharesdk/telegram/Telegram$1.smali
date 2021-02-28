.class Lcn/sharesdk/telegram/Telegram$1;
.super Ljava/lang/Object;
.source "Telegram.java"

# interfaces
.implements Lcn/sharesdk/telegram/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/telegram/Telegram;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic b:Lcn/sharesdk/telegram/Telegram;


# direct methods
.method constructor <init>(Lcn/sharesdk/telegram/Telegram;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 3

    .prologue
    .line 73
    iput-object p1, p0, Lcn/sharesdk/telegram/Telegram$1;->b:Lcn/sharesdk/telegram/Telegram;

    iput-object p2, p0, Lcn/sharesdk/telegram/Telegram$1;->a:Lcn/sharesdk/framework/Platform$ShareParams;

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
    .line 88
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ShareParams"

    iget-object v1, p0, Lcn/sharesdk/telegram/Telegram$1;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram$1;->b:Lcn/sharesdk/telegram/Telegram;

    invoke-static {v0}, Lcn/sharesdk/telegram/Telegram;->e(Lcn/sharesdk/telegram/Telegram;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 90
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram$1;->b:Lcn/sharesdk/telegram/Telegram;

    invoke-static {v0}, Lcn/sharesdk/telegram/Telegram;->f(Lcn/sharesdk/telegram/Telegram;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/telegram/Telegram$1;->b:Lcn/sharesdk/telegram/Telegram;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 92
    :cond_1c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram$1;->b:Lcn/sharesdk/telegram/Telegram;

    invoke-static {v0}, Lcn/sharesdk/telegram/Telegram;->c(Lcn/sharesdk/telegram/Telegram;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 83
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram$1;->b:Lcn/sharesdk/telegram/Telegram;

    invoke-static {v0}, Lcn/sharesdk/telegram/Telegram;->d(Lcn/sharesdk/telegram/Telegram;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/telegram/Telegram$1;->b:Lcn/sharesdk/telegram/Telegram;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 85
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
    .line 75
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ShareParams"

    iget-object v1, p0, Lcn/sharesdk/telegram/Telegram$1;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram$1;->b:Lcn/sharesdk/telegram/Telegram;

    invoke-static {v0}, Lcn/sharesdk/telegram/Telegram;->a(Lcn/sharesdk/telegram/Telegram;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 77
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram$1;->b:Lcn/sharesdk/telegram/Telegram;

    invoke-static {v0}, Lcn/sharesdk/telegram/Telegram;->b(Lcn/sharesdk/telegram/Telegram;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/telegram/Telegram$1;->b:Lcn/sharesdk/telegram/Telegram;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 79
    :cond_1c
    return-void
.end method
