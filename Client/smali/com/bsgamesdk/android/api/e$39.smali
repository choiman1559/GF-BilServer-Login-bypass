.class Lcom/bsgamesdk/android/api/e$39;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bsgamesdk/android/api/c",
        "<",
        "Lcom/bsgamesdk/android/api/BSGameSdkAuth;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bsgamesdk/android/model/CaptchModel;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lcom/bsgamesdk/android/api/e;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;)V
    .registers 11

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$39;->j:Lcom/bsgamesdk/android/api/e;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/e$39;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/e$39;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/e$39;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    iput-object p6, p0, Lcom/bsgamesdk/android/api/e$39;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/bsgamesdk/android/api/e$39;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/bsgamesdk/android/api/e$39;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iput-object p10, p0, Lcom/bsgamesdk/android/api/e$39;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bsgamesdk/android/api/c;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;,
            Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$39;->b(Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/api/client/login"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$39;->a:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/e$39;->a(Ljava/util/Map;)V

    const-string v2, "user_id"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pwd"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    if-eqz v2, :cond_ca

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "captcha_type"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_type()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getImage_token()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "image_token"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getImage_token()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_code()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "captcha_code"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_code()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getChallenge()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    const-string v2, "challenge"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getChallenge()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_85
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getValidate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9c

    const-string v2, "validate"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getValidate()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9c
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getSeccode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b3

    const-string v2, "seccode"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getSeccode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b3
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getGt_user_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ca

    const-string v2, "gt_user_id"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getGt_user_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ca
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d9

    const-string v2, "check"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d9
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e8

    const-string v2, "access_key"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e8
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f7

    const-string v2, "uid"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->g:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f7
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->j:Lcom/bsgamesdk/android/api/e;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bsgamesdk/android/api/e;->b(Ljava/util/Map;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCachePost(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 BSGameSDK"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_115
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;
    :try_end_11a
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_115 .. :try_end_11a} :catch_152

    move-result-object v1

    :try_start_11b
    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseLoginResponse(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_122
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_11b .. :try_end_122} :catch_1c7

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$39;->j:Lcom/bsgamesdk/android/api/e;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$39;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v2, v2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v3, v3, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/bsgamesdk/android/api/e$39;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mergeMyInfo(Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V

    iget-object v6, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$39;->j:Lcom/bsgamesdk/android/api/e;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$39;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v2, v2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v3, v3, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    iget-object v5, p0, Lcom/bsgamesdk/android/api/e$39;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/bsgamesdk/android/model/e;

    move-result-object v0

    iput-object v0, v6, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mCoupon:Lcom/bsgamesdk/android/model/e;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    :goto_151
    return-object v0

    :catch_152
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    :goto_155
    iget v1, v5, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const/16 v2, -0x296

    if-ne v1, v2, :cond_177

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseLoginRSATimeOut(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$39;->j:Lcom/bsgamesdk/android/api/e;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$39;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$39;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/bsgamesdk/android/api/e$39;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/bsgamesdk/android/api/e$39;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/bsgamesdk/android/api/e$39;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v8, p0, Lcom/bsgamesdk/android/api/e$39;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual/range {v0 .. v8}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    goto :goto_151

    :cond_177
    iget v1, v5, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v2, 0x7a13f

    if-ne v1, v2, :cond_18c

    :try_start_17e
    iget-object v0, v5, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    const-string v1, "rsaAuthMRsa"

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v2, v2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_189
    .catchall {:try_start_17e .. :try_end_189} :catchall_18a

    throw v5

    :catchall_18a
    move-exception v0

    throw v5

    :cond_18c
    iget-object v4, v5, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    :try_start_18e
    const-string v1, "need_captch"

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseLoginFail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_199
    .catch Ljava/lang/Throwable; {:try_start_18e .. :try_end_199} :catch_1c5

    :goto_199
    :try_start_199
    const-string v1, "limit_alert_message"

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseLoginMinorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a4
    .catch Ljava/lang/Throwable; {:try_start_199 .. :try_end_1a4} :catch_1c3

    :goto_1a4
    :try_start_1a4
    const-string v1, "limit_alert_status"

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$39;->h:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseLoginMinorstatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1af
    .catch Ljava/lang/Throwable; {:try_start_1a4 .. :try_end_1af} :catch_1c1

    :goto_1af
    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    iget v1, v5, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v5}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v5, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->backUpUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    throw v0

    :catch_1c1
    move-exception v0

    goto :goto_1af

    :catch_1c3
    move-exception v1

    goto :goto_1a4

    :catch_1c5
    move-exception v1

    goto :goto_199

    :catch_1c7
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    goto :goto_155
.end method
