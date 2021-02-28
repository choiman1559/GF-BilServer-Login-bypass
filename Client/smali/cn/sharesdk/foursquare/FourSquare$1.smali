.class Lcn/sharesdk/foursquare/FourSquare$1;
.super Ljava/lang/Object;
.source "FourSquare.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/foursquare/FourSquare;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/foursquare/FourSquare;


# direct methods
.method constructor <init>(Lcn/sharesdk/foursquare/FourSquare;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcn/sharesdk/foursquare/FourSquare$1;->a:Lcn/sharesdk/foursquare/FourSquare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare$1;->a:Lcn/sharesdk/foursquare/FourSquare;

    invoke-static {v0}, Lcn/sharesdk/foursquare/FourSquare;->e(Lcn/sharesdk/foursquare/FourSquare;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 89
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare$1;->a:Lcn/sharesdk/foursquare/FourSquare;

    invoke-static {v0}, Lcn/sharesdk/foursquare/FourSquare;->f(Lcn/sharesdk/foursquare/FourSquare;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare$1;->a:Lcn/sharesdk/foursquare/FourSquare;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 91
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare$1;->a:Lcn/sharesdk/foursquare/FourSquare;

    invoke-static {v1}, Lcn/sharesdk/foursquare/FourSquare;->c(Lcn/sharesdk/foursquare/FourSquare;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare$1;->a:Lcn/sharesdk/foursquare/FourSquare;

    invoke-static {v1}, Lcn/sharesdk/foursquare/FourSquare;->d(Lcn/sharesdk/foursquare/FourSquare;)Lcn/sharesdk/foursquare/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/foursquare/b;->c(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare$1;->a:Lcn/sharesdk/foursquare/FourSquare;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/foursquare/FourSquare;->a(Lcn/sharesdk/foursquare/FourSquare;ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare$1;->a:Lcn/sharesdk/foursquare/FourSquare;

    invoke-static {v0}, Lcn/sharesdk/foursquare/FourSquare;->a(Lcn/sharesdk/foursquare/FourSquare;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 75
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare$1;->a:Lcn/sharesdk/foursquare/FourSquare;

    invoke-static {v0}, Lcn/sharesdk/foursquare/FourSquare;->b(Lcn/sharesdk/foursquare/FourSquare;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare$1;->a:Lcn/sharesdk/foursquare/FourSquare;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 77
    :cond_14
    return-void
.end method
