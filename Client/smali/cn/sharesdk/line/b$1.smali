.class Lcn/sharesdk/line/b$1;
.super Ljava/lang/Object;
.source "LineImpl.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/SSOListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/line/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field final synthetic b:Lcn/sharesdk/line/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/line/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 3

    .prologue
    .line 104
    iput-object p1, p0, Lcn/sharesdk/line/b$1;->b:Lcn/sharesdk/line/b;

    iput-object p2, p0, Lcn/sharesdk/line/b$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcn/sharesdk/line/b$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 115
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 110
    iget-object v0, p0, Lcn/sharesdk/line/b$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    .line 111
    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    iget-object v0, p0, Lcn/sharesdk/line/b$1;->b:Lcn/sharesdk/line/b;

    iget-object v1, p0, Lcn/sharesdk/line/b$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-static {v0, v1}, Lcn/sharesdk/line/b;->a(Lcn/sharesdk/line/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 107
    return-void
.end method
