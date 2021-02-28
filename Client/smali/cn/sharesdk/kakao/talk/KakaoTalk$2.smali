.class Lcn/sharesdk/kakao/talk/KakaoTalk$2;
.super Ljava/lang/Object;
.source "KakaoTalk.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/kakao/talk/KakaoTalk;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/kakao/talk/KakaoTalk;


# direct methods
.method constructor <init>(Lcn/sharesdk/kakao/talk/KakaoTalk;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$2;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$2;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->h(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 107
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$2;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->i(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$2;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 109
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 100
    const-string v0, "com.kakao.sdk.talk.redirectUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$2;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v1, v0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->a(Lcn/sharesdk/kakao/talk/KakaoTalk;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$2;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->f(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 94
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$2;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->g(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$2;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 96
    :cond_14
    return-void
.end method
