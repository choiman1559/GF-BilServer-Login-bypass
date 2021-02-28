.class Lcn/sharesdk/telegram/a$2;
.super Ljava/lang/Thread;
.source "TelegramActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/telegram/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/telegram/b;

.field final synthetic b:Lcn/sharesdk/telegram/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/telegram/a;Lcn/sharesdk/telegram/b;)V
    .registers 3

    .prologue
    .line 59
    iput-object p1, p0, Lcn/sharesdk/telegram/a$2;->b:Lcn/sharesdk/telegram/a;

    iput-object p2, p0, Lcn/sharesdk/telegram/a$2;->a:Lcn/sharesdk/telegram/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/telegram/a$2;->a:Lcn/sharesdk/telegram/b;

    iget-object v1, p0, Lcn/sharesdk/telegram/a$2;->b:Lcn/sharesdk/telegram/a;

    invoke-static {v1}, Lcn/sharesdk/telegram/a;->c(Lcn/sharesdk/telegram/a;)Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/telegram/a$2;->b:Lcn/sharesdk/telegram/a;

    invoke-static {v2}, Lcn/sharesdk/telegram/a;->d(Lcn/sharesdk/telegram/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/telegram/b;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 67
    :goto_11
    return-void

    .line 63
    :catch_12
    move-exception v0

    .line 64
    iget-object v1, p0, Lcn/sharesdk/telegram/a$2;->b:Lcn/sharesdk/telegram/a;

    invoke-static {v1}, Lcn/sharesdk/telegram/a;->b(Lcn/sharesdk/telegram/a;)Lcn/sharesdk/telegram/ActionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/telegram/ActionListener;->onError(Ljava/lang/Throwable;)V

    .line 65
    iget-object v0, p0, Lcn/sharesdk/telegram/a$2;->b:Lcn/sharesdk/telegram/a;

    invoke-virtual {v0}, Lcn/sharesdk/telegram/a;->finish()V

    goto :goto_11
.end method
