.class Lcn/sharesdk/facebook/d$1;
.super Ljava/lang/Object;
.source "FbHelper.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/SSOListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/facebook/d;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field final synthetic b:Lcn/sharesdk/facebook/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/facebook/d;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 3

    .prologue
    .line 169
    iput-object p1, p0, Lcn/sharesdk/facebook/d$1;->b:Lcn/sharesdk/facebook/d;

    iput-object p2, p0, Lcn/sharesdk/facebook/d$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcn/sharesdk/facebook/d$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 181
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 176
    iget-object v0, p0, Lcn/sharesdk/facebook/d$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 171
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 172
    iget-object v0, p0, Lcn/sharesdk/facebook/d$1;->b:Lcn/sharesdk/facebook/d;

    iget-object v1, p0, Lcn/sharesdk/facebook/d$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-static {v0, v1}, Lcn/sharesdk/facebook/d;->a(Lcn/sharesdk/facebook/d;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 173
    return-void
.end method
