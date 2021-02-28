.class public Lcn/sharesdk/instapaper/d;
.super Lcn/sharesdk/framework/authorize/e;
.source "InstapaperWebAuthorizeActivity.java"


# instance fields
.field private c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/sharesdk/framework/authorize/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Lcn/sharesdk/framework/authorize/RegisterView;
    .registers 3

    .prologue
    .line 17
    invoke-super {p0}, Lcn/sharesdk/framework/authorize/e;->b()Lcn/sharesdk/framework/authorize/RegisterView;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/instapaper/d;->c:Landroid/webkit/WebView;

    .line 19
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 23
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 34
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 25
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcn/sharesdk/instapaper/d;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 27
    invoke-virtual {p0}, Lcn/sharesdk/instapaper/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/instapaper/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcn/sharesdk/instapaper/d;->c:Landroid/webkit/WebView;

    const-string v2, "text/html; charset=UTF-8"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    goto :goto_6

    .line 31
    :cond_29
    invoke-super {p0, p1}, Lcn/sharesdk/framework/authorize/e;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_6

    .line 23
    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method
