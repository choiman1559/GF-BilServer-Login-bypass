.class public Lcn/sharesdk/kakao/utils/KakaoWebViewClient;
.super Lcn/sharesdk/framework/authorize/b;
.source "KakaoWebViewClient.java"


# static fields
.field private static final a:Ljava/lang/CharSequence;

.field private static final b:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-string v0, "kauth.kakao.com"

    sput-object v0, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;->a:Ljava/lang/CharSequence;

    .line 14
    const-string v0, "kapi.kakao.com"

    sput-object v0, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 2
    .param p1, "activity"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 54
    iget-object v0, p0, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 61
    :goto_d
    return-void

    .line 57
    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v1, "com.kakao.sdk.talk.redirectUrl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_d
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 25
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lcn/sharesdk/framework/authorize/b;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 46
    iget-object v0, p0, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_3d

    .line 47
    iget-object v0, p0, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 49
    :cond_3d
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-object v0, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;->a:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;->b:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 31
    :cond_10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    const-string v1, "KA"

    invoke-static {}, Lcn/sharesdk/kakao/utils/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    :goto_21
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_23
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 36
    iget-object v0, p0, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 37
    invoke-virtual {p0, p2}, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;->onComplete(Ljava/lang/String;)V

    goto :goto_21
.end method
