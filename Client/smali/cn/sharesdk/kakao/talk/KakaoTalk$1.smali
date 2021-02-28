.class Lcn/sharesdk/kakao/talk/KakaoTalk$1;
.super Ljava/lang/Object;
.source "KakaoTalk.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/kakao/talk/KakaoTalk;->doAuthorize([Ljava/lang/String;)V
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
    .line 50
    iput-object p1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$1;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 4
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$1;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->d(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 75
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$1;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->e(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 77
    :cond_11
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 6
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "com.kakao.sdk.talk.redirectUrl"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    const-string v1, "LoggedOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 65
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$1;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->c(Lcn/sharesdk/kakao/talk/KakaoTalk;)V

    .line 70
    :goto_15
    return-void

    .line 67
    :cond_16
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$1;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v1, v0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->a(Lcn/sharesdk/kakao/talk/KakaoTalk;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$1;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->a(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 55
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$1;->a:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->b(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 57
    :cond_11
    return-void
.end method
