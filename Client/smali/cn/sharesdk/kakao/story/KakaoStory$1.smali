.class Lcn/sharesdk/kakao/story/KakaoStory$1;
.super Ljava/lang/Object;
.source "KakaoStory.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/kakao/story/KakaoStory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/kakao/story/KakaoStory;


# direct methods
.method constructor <init>(Lcn/sharesdk/kakao/story/KakaoStory;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcn/sharesdk/kakao/story/KakaoStory$1;->a:Lcn/sharesdk/kakao/story/KakaoStory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory$1;->a:Lcn/sharesdk/kakao/story/KakaoStory;

    invoke-static {v0}, Lcn/sharesdk/kakao/story/KakaoStory;->c(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 47
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory$1;->a:Lcn/sharesdk/kakao/story/KakaoStory;

    invoke-static {v0}, Lcn/sharesdk/kakao/story/KakaoStory;->d(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory$1;->a:Lcn/sharesdk/kakao/story/KakaoStory;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 49
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 41
    const-string v0, "com.kakao.sdk.talk.redirectUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory$1;->a:Lcn/sharesdk/kakao/story/KakaoStory;

    invoke-static {v1, v0}, Lcn/sharesdk/kakao/story/KakaoStory;->a(Lcn/sharesdk/kakao/story/KakaoStory;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory$1;->a:Lcn/sharesdk/kakao/story/KakaoStory;

    invoke-static {v0}, Lcn/sharesdk/kakao/story/KakaoStory;->a(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 36
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory$1;->a:Lcn/sharesdk/kakao/story/KakaoStory;

    invoke-static {v0}, Lcn/sharesdk/kakao/story/KakaoStory;->b(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory$1;->a:Lcn/sharesdk/kakao/story/KakaoStory;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 38
    :cond_14
    return-void
.end method
