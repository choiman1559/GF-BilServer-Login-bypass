.class Lcom/bsgamesdk/android/api/e$35;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
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

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:I

.field final synthetic m:Lcom/bsgamesdk/android/api/e;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$35;->m:Lcom/bsgamesdk/android/api/e;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/e$35;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/e$35;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/e$35;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/e$35;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/bsgamesdk/android/api/e$35;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/bsgamesdk/android/api/e$35;->f:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iput-object p8, p0, Lcom/bsgamesdk/android/api/e$35;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/bsgamesdk/android/api/e$35;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/bsgamesdk/android/api/e$35;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/bsgamesdk/android/api/e$35;->j:Ljava/lang/String;

    iput-object p12, p0, Lcom/bsgamesdk/android/api/e$35;->k:Ljava/lang/String;

    iput p13, p0, Lcom/bsgamesdk/android/api/e$35;->l:I

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$35;->b(Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 14
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

    const-string v1, "api/client/v2/reg.tel"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$35;->a:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    const-string v2, "tel"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$35;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "country_id"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$35;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uname"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$35;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$35;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "captcha"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$35;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$35;->f:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v2, v2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    iget-object v2, v2, Lcom/bsgamesdk/android/model/j;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$35;->g:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/bsgamesdk/android/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pwd"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "captcha_key"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$35;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$35;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "reg_type"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$35;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$35;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "open_id"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$35;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$35;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7d

    const-string v2, "apple_type"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$35;->k:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/e$35;->a(Ljava/util/Map;)V

    invoke-static {v1}, Lcom/bsgamesdk/android/api/e;->b(Ljava/util/Map;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :try_start_87
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCachePost(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 BSGameSDK"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$35;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$35;->f:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$35;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseRegisterResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    :try_end_a3
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_87 .. :try_end_a3} :catch_a5

    move-result-object v0

    :goto_a4
    return-object v0

    :catch_a5
    move-exception v0

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v2, 0xea6a

    if-ne v1, v2, :cond_d1

    iget v1, p0, Lcom/bsgamesdk/android/api/e$35;->l:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_d1

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$35;->m:Lcom/bsgamesdk/android/api/e;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$35;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$35;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$35;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/bsgamesdk/android/api/e$35;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/bsgamesdk/android/api/e$35;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/bsgamesdk/android/api/e$35;->g:Ljava/lang/String;

    iget v7, p0, Lcom/bsgamesdk/android/api/e$35;->l:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/bsgamesdk/android/api/e$35;->i:Ljava/lang/String;

    iget-object v9, p0, Lcom/bsgamesdk/android/api/e$35;->j:Ljava/lang/String;

    iget-object v10, p0, Lcom/bsgamesdk/android/api/e$35;->k:Ljava/lang/String;

    iget-object v11, p0, Lcom/bsgamesdk/android/api/e$35;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    goto :goto_a4

    :cond_d1
    throw v0
.end method
