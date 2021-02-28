.class Lcom/bsgamesdk/android/api/e$30;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
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

.field final synthetic f:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/bsgamesdk/android/api/e;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$30;->h:Lcom/bsgamesdk/android/api/e;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/e$30;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/e$30;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/e$30;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    iput-object p6, p0, Lcom/bsgamesdk/android/api/e$30;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/bsgamesdk/android/api/e$30;->f:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iput-object p8, p0, Lcom/bsgamesdk/android/api/e$30;->g:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$30;->b(Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/api/client/third/login/bind"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$30;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/e$30;->a(Ljava/util/Map;)V

    const-string v2, "user_id"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$30;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pwd"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$30;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    if-eqz v2, :cond_ca

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "captcha_type"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_type()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getImage_token()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "image_token"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getImage_token()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_code()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "captcha_code"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_code()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getChallenge()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    const-string v2, "challenge"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getChallenge()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_85
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getValidate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9c

    const-string v2, "validate"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getValidate()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9c
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getSeccode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b3

    const-string v2, "seccode"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getSeccode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b3
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getGt_user_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ca

    const-string v2, "gt_user_id"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getGt_user_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ca
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e0

    const-string v2, "open_id"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$30;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "apple_type"

    const-string v3, "2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e0
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

    :try_start_f7
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;
    :try_end_fc
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_f7 .. :try_end_fc} :catch_107

    move-result-object v1

    :try_start_fd
    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$30;->f:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseLoginResponse(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_104
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_fd .. :try_end_104} :catch_178

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$30;->f:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    :goto_106
    return-object v0

    :catch_107
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    :goto_10a
    iget v1, v5, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const/16 v2, -0x296

    if-ne v1, v2, :cond_128

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$30;->f:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseLoginRSATimeOut(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$30;->h:Lcom/bsgamesdk/android/api/e;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$30;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$30;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/bsgamesdk/android/api/e$30;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/bsgamesdk/android/api/e$30;->f:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v6, p0, Lcom/bsgamesdk/android/api/e$30;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual/range {v0 .. v6}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    goto :goto_106

    :cond_128
    iget v1, v5, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v2, 0x7a13f

    if-ne v1, v2, :cond_13d

    :try_start_12f
    iget-object v0, v5, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    const-string v1, "rsaAuthMRsa"

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->f:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v2, v2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13a
    .catchall {:try_start_12f .. :try_end_13a} :catchall_13b

    throw v5

    :catchall_13b
    move-exception v0

    throw v5

    :cond_13d
    iget-object v4, v5, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    :try_start_13f
    const-string v1, "need_captch"

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->f:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseLoginFail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14a
    .catch Ljava/lang/Throwable; {:try_start_13f .. :try_end_14a} :catch_176

    :goto_14a
    :try_start_14a
    const-string v1, "limit_alert_message"

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->f:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseLoginMinorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_155
    .catch Ljava/lang/Throwable; {:try_start_14a .. :try_end_155} :catch_174

    :goto_155
    :try_start_155
    const-string v1, "limit_alert_status"

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$30;->f:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseLoginMinorstatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_160
    .catch Ljava/lang/Throwable; {:try_start_155 .. :try_end_160} :catch_172

    :goto_160
    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    iget v1, v5, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v5}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v5, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->backUpUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    throw v0

    :catch_172
    move-exception v0

    goto :goto_160

    :catch_174
    move-exception v1

    goto :goto_155

    :catch_176
    move-exception v1

    goto :goto_14a

    :catch_178
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    goto :goto_10a
.end method
