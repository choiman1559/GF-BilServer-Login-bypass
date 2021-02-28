.class Lcn/sharesdk/douban/b$1;
.super Ljava/lang/Thread;
.source "DoubanWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/douban/b;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/douban/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/douban/b;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 63
    iput-object p1, p0, Lcn/sharesdk/douban/b$1;->b:Lcn/sharesdk/douban/b;

    iput-object p2, p0, Lcn/sharesdk/douban/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcn/sharesdk/douban/b$1;->b:Lcn/sharesdk/douban/b;

    invoke-static {v0}, Lcn/sharesdk/douban/b;->a(Lcn/sharesdk/douban/b;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/douban/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/douban/a;

    move-result-object v0

    .line 67
    :try_start_a
    iget-object v1, p0, Lcn/sharesdk/douban/b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/douban/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcn/sharesdk/douban/b$1;->b:Lcn/sharesdk/douban/b;

    invoke-static {v1, v0}, Lcn/sharesdk/douban/b;->a(Lcn/sharesdk/douban/b;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_15} :catch_16

    .line 74
    :cond_15
    :goto_15
    return-void

    .line 69
    :catch_16
    move-exception v0

    .line 70
    iget-object v1, p0, Lcn/sharesdk/douban/b$1;->b:Lcn/sharesdk/douban/b;

    invoke-static {v1}, Lcn/sharesdk/douban/b;->b(Lcn/sharesdk/douban/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 71
    iget-object v1, p0, Lcn/sharesdk/douban/b$1;->b:Lcn/sharesdk/douban/b;

    invoke-static {v1}, Lcn/sharesdk/douban/b;->c(Lcn/sharesdk/douban/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_15
.end method
