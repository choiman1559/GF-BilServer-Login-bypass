.class Lcn/sharesdk/kakao/story/KakaoStory$2;
.super Ljava/lang/Object;
.source "KakaoStory.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/kakao/story/KakaoStory;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/kakao/story/a;

.field final synthetic b:Lcn/sharesdk/kakao/story/KakaoStory;


# direct methods
.method constructor <init>(Lcn/sharesdk/kakao/story/KakaoStory;Lcn/sharesdk/kakao/story/a;)V
    .registers 3

    .prologue
    .line 79
    iput-object p1, p0, Lcn/sharesdk/kakao/story/KakaoStory$2;->b:Lcn/sharesdk/kakao/story/KakaoStory;

    iput-object p2, p0, Lcn/sharesdk/kakao/story/KakaoStory$2;->a:Lcn/sharesdk/kakao/story/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 4
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory$2;->b:Lcn/sharesdk/kakao/story/KakaoStory;

    invoke-static {v0}, Lcn/sharesdk/kakao/story/KakaoStory;->h(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 102
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory$2;->b:Lcn/sharesdk/kakao/story/KakaoStory;

    invoke-static {v0}, Lcn/sharesdk/kakao/story/KakaoStory;->i(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 104
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
    .line 91
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "com.kakao.sdk.talk.redirectUrl"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    const-string v1, "LoggedOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 93
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory$2;->a:Lcn/sharesdk/kakao/story/a;

    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory$2;->b:Lcn/sharesdk/kakao/story/KakaoStory;

    invoke-static {v1}, Lcn/sharesdk/kakao/story/KakaoStory;->g(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/story/a;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 97
    :goto_1b
    return-void

    .line 95
    :cond_1c
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory$2;->b:Lcn/sharesdk/kakao/story/KakaoStory;

    invoke-static {v1, v0}, Lcn/sharesdk/kakao/story/KakaoStory;->a(Lcn/sharesdk/kakao/story/KakaoStory;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 6
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory$2;->b:Lcn/sharesdk/kakao/story/KakaoStory;

    invoke-static {v0}, Lcn/sharesdk/kakao/story/KakaoStory;->e(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 84
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory$2;->b:Lcn/sharesdk/kakao/story/KakaoStory;

    invoke-static {v0}, Lcn/sharesdk/kakao/story/KakaoStory;->f(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 86
    :cond_12
    return-void
.end method
