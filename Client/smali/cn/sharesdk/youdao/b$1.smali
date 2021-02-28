.class Lcn/sharesdk/youdao/b$1;
.super Ljava/lang/Thread;
.source "YoudaoAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/youdao/b;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/youdao/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/youdao/b;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 71
    iput-object p1, p0, Lcn/sharesdk/youdao/b$1;->b:Lcn/sharesdk/youdao/b;

    iput-object p2, p0, Lcn/sharesdk/youdao/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcn/sharesdk/youdao/b$1;->b:Lcn/sharesdk/youdao/b;

    invoke-static {v0}, Lcn/sharesdk/youdao/b;->a(Lcn/sharesdk/youdao/b;)Lcn/sharesdk/framework/authorize/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcn/sharesdk/youdao/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/youdao/a;

    move-result-object v0

    .line 76
    :try_start_12
    iget-object v1, p0, Lcn/sharesdk/youdao/b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youdao/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcn/sharesdk/youdao/b$1;->b:Lcn/sharesdk/youdao/b;

    invoke-static {v1, v0}, Lcn/sharesdk/youdao/b;->a(Lcn/sharesdk/youdao/b;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1d} :catch_1e

    .line 83
    :cond_1d
    :goto_1d
    return-void

    .line 78
    :catch_1e
    move-exception v0

    .line 79
    iget-object v1, p0, Lcn/sharesdk/youdao/b$1;->b:Lcn/sharesdk/youdao/b;

    invoke-static {v1}, Lcn/sharesdk/youdao/b;->b(Lcn/sharesdk/youdao/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 80
    iget-object v1, p0, Lcn/sharesdk/youdao/b$1;->b:Lcn/sharesdk/youdao/b;

    invoke-static {v1}, Lcn/sharesdk/youdao/b;->c(Lcn/sharesdk/youdao/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method
