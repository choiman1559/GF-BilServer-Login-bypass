.class Lcn/sharesdk/dropbox/b$1;
.super Ljava/lang/Object;
.source "DropboxImpl.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/SSOListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field final synthetic b:Lcn/sharesdk/dropbox/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/dropbox/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 3

    .prologue
    .line 179
    iput-object p1, p0, Lcn/sharesdk/dropbox/b$1;->b:Lcn/sharesdk/dropbox/b;

    iput-object p2, p0, Lcn/sharesdk/dropbox/b$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcn/sharesdk/dropbox/b$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 191
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 186
    iget-object v0, p0, Lcn/sharesdk/dropbox/b$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    .line 187
    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 181
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 182
    iget-object v0, p0, Lcn/sharesdk/dropbox/b$1;->b:Lcn/sharesdk/dropbox/b;

    iget-object v1, p0, Lcn/sharesdk/dropbox/b$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-static {v0, v1}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/dropbox/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 183
    return-void
.end method
