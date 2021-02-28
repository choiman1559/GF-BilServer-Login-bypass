.class Lcn/sharesdk/dropbox/a$1;
.super Ljava/lang/Thread;
.source "DropboxAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/dropbox/a;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/dropbox/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/dropbox/a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 89
    iput-object p1, p0, Lcn/sharesdk/dropbox/a$1;->b:Lcn/sharesdk/dropbox/a;

    iput-object p2, p0, Lcn/sharesdk/dropbox/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcn/sharesdk/dropbox/a$1;->b:Lcn/sharesdk/dropbox/a;

    invoke-static {v0}, Lcn/sharesdk/dropbox/a;->a(Lcn/sharesdk/dropbox/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/dropbox/b;

    move-result-object v0

    .line 93
    :try_start_a
    iget-object v1, p0, Lcn/sharesdk/dropbox/a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/dropbox/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcn/sharesdk/dropbox/a$1;->b:Lcn/sharesdk/dropbox/a;

    invoke-static {v1, v0}, Lcn/sharesdk/dropbox/a;->a(Lcn/sharesdk/dropbox/a;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_15} :catch_16

    .line 100
    :cond_15
    :goto_15
    return-void

    .line 95
    :catch_16
    move-exception v0

    .line 96
    iget-object v1, p0, Lcn/sharesdk/dropbox/a$1;->b:Lcn/sharesdk/dropbox/a;

    invoke-static {v1}, Lcn/sharesdk/dropbox/a;->b(Lcn/sharesdk/dropbox/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 97
    iget-object v1, p0, Lcn/sharesdk/dropbox/a$1;->b:Lcn/sharesdk/dropbox/a;

    invoke-static {v1}, Lcn/sharesdk/dropbox/a;->c(Lcn/sharesdk/dropbox/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_15
.end method
