.class Lcom/bsgamesdk/android/api/e$4;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bsgamesdk/android/api/c",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Lcom/bsgamesdk/android/model/CaptchModel;

.field final synthetic p:Lcom/bsgamesdk/android/api/e;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 18

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$4;->p:Lcom/bsgamesdk/android/api/e;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/e$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/e$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/e$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/e$4;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/bsgamesdk/android/api/e$4;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/bsgamesdk/android/api/e$4;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/bsgamesdk/android/api/e$4;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/bsgamesdk/android/api/e$4;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/bsgamesdk/android/api/e$4;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/bsgamesdk/android/api/e$4;->j:Ljava/lang/String;

    iput-object p12, p0, Lcom/bsgamesdk/android/api/e$4;->k:Ljava/lang/String;

    iput-object p13, p0, Lcom/bsgamesdk/android/api/e$4;->l:Ljava/lang/String;

    iput-object p14, p0, Lcom/bsgamesdk/android/api/e$4;->m:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/bsgamesdk/android/api/e$4;->n:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$4;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
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

    const-string v1, "api/client/add.pay.order"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$4;->a:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/e$4;->a(Ljava/util/Map;)V

    const-string v2, "access_key"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uid"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mid"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "username"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "role"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "money"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_money"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->g:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "zone_id"

    sget-object v3, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "out_trade_no"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "item_name"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "item_desc"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "extension_info"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->k:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "channel_id"

    sget-object v3, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "notify_url"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->l:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "order_sign"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->m:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_id"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->n:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    if-eqz v2, :cond_12c

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a2

    const-string v2, "captcha_type"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_type()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a2
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getImage_token()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b9

    const-string v2, "image_token"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getImage_token()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b9
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_code()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d0

    const-string v2, "captcha_code"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_code()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d0
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getChallenge()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e7

    const-string v2, "challenge"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getChallenge()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e7
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getValidate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fe

    const-string v2, "validate"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getValidate()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fe
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getSeccode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_115

    const-string v2, "seccode"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getSeccode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_115
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getGt_user_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12c

    const-string v2, "gt_user_id"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->o:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getGt_user_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12c
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$4;->p:Lcom/bsgamesdk/android/api/e;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$4;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bsgamesdk/android/api/e;->b(Ljava/util/Map;)V

    new-instance v2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-direct {v2}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCachePost(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v3, "Mozilla/5.0 BSGameSDK"

    invoke-virtual {v0, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$4;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseBuildOrderResponse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
