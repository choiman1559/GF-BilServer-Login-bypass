.class Lcn/sharesdk/kakao/talk/KakaoTalk$3;
.super Ljava/lang/Object;
.source "KakaoTalk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/kakao/talk/KakaoTalk;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/kakao/talk/a;

.field final synthetic c:Lcn/sharesdk/kakao/talk/KakaoTalk;


# direct methods
.method constructor <init>(Lcn/sharesdk/kakao/talk/KakaoTalk;Ljava/lang/String;Lcn/sharesdk/kakao/talk/a;)V
    .registers 4

    .prologue
    .line 117
    iput-object p1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$3;->c:Lcn/sharesdk/kakao/talk/KakaoTalk;

    iput-object p2, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$3;->b:Lcn/sharesdk/kakao/talk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 120
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$3;->b:Lcn/sharesdk/kakao/talk/a;

    invoke-virtual {v1}, Lcn/sharesdk/kakao/talk/a;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$3;->c:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v2}, Lcn/sharesdk/kakao/talk/KakaoTalk;->j(Lcn/sharesdk/kakao/talk/KakaoTalk;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$3;->c:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v0, v1, v2, v3}, Lcn/sharesdk/kakao/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/Platform;)Ljava/util/HashMap;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_54

    .line 122
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$3;->c:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->k(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v0, "access_token"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$3;->c:Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-static {v0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->l(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expires_in"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 124
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk$3;->c:Lcn/sharesdk/kakao/talk/KakaoTalk;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/kakao/talk/KakaoTalk;->a(Lcn/sharesdk/kakao/talk/KakaoTalk;ILjava/lang/Object;)V

    .line 126
    :cond_54
    return-void
.end method