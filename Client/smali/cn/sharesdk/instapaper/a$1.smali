.class Lcn/sharesdk/instapaper/a$1;
.super Landroid/os/AsyncTask;
.source "InstapaperAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/instapaper/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/webkit/WebView;

.field final synthetic d:Lcn/sharesdk/instapaper/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/instapaper/a;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;)V
    .registers 5

    .prologue
    .line 60
    iput-object p1, p0, Lcn/sharesdk/instapaper/a$1;->d:Lcn/sharesdk/instapaper/a;

    iput-object p2, p0, Lcn/sharesdk/instapaper/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/sharesdk/instapaper/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/sharesdk/instapaper/a$1;->c:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcn/sharesdk/instapaper/a$1;->d:Lcn/sharesdk/instapaper/a;

    invoke-static {v0}, Lcn/sharesdk/instapaper/a;->a(Lcn/sharesdk/instapaper/a;)Lcn/sharesdk/framework/authorize/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/instapaper/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/instapaper/b;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcn/sharesdk/instapaper/a$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/instapaper/a$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/instapaper/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 72
    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 73
    iget-object v0, p0, Lcn/sharesdk/instapaper/a$1;->d:Lcn/sharesdk/instapaper/a;

    invoke-static {v0}, Lcn/sharesdk/instapaper/a;->b(Lcn/sharesdk/instapaper/a;)Lcn/sharesdk/framework/authorize/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/instapaper/a$1;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcn/sharesdk/instapaper/c;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    iget-object v0, p0, Lcn/sharesdk/instapaper/a$1;->c:Landroid/webkit/WebView;

    const-string v1, "/"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_2d
    return-void

    .line 75
    :cond_2e
    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 76
    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 77
    iget-object v1, p0, Lcn/sharesdk/instapaper/a$1;->d:Lcn/sharesdk/instapaper/a;

    invoke-static {v1}, Lcn/sharesdk/instapaper/a;->c(Lcn/sharesdk/instapaper/a;)Lcn/sharesdk/framework/authorize/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/instapaper/a$1;->a:Ljava/lang/String;

    invoke-static {v1, v0, v5, v2}, Lcn/sharesdk/instapaper/c;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    iget-object v0, p0, Lcn/sharesdk/instapaper/a$1;->c:Landroid/webkit/WebView;

    const-string v1, "/"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 80
    :cond_62
    const-string v0, "data"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcn/sharesdk/instapaper/a$1;->d:Lcn/sharesdk/instapaper/a;

    invoke-static {v1}, Lcn/sharesdk/instapaper/a;->d(Lcn/sharesdk/instapaper/a;)Lcn/sharesdk/framework/authorize/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 82
    iget-object v1, p0, Lcn/sharesdk/instapaper/a$1;->d:Lcn/sharesdk/instapaper/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/instapaper/a;->onComplete(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 60
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/sharesdk/instapaper/a$1;->a([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 60
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcn/sharesdk/instapaper/a$1;->a(Ljava/util/HashMap;)V

    return-void
.end method
