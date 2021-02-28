.class Lcom/bsgamesdk/android/api/e$36;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bsgamesdk/android/api/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:Lcom/bsgamesdk/android/api/e;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/e;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$36;->j:Lcom/bsgamesdk/android/api/e;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/e$36;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/e$36;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/e$36;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/e$36;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/bsgamesdk/android/api/e$36;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/bsgamesdk/android/api/e$36;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/bsgamesdk/android/api/e$36;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/bsgamesdk/android/api/e$36;->h:Ljava/lang/String;

    iput p10, p0, Lcom/bsgamesdk/android/api/e$36;->i:I

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$36;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$36;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$36;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/api/client/v2/bind.account"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$36;->c:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v2

    const-string v3, "tel"

    iget-object v4, p0, Lcom/bsgamesdk/android/api/e$36;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "country_id"

    iget-object v4, p0, Lcom/bsgamesdk/android/api/e$36;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$36;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "captcha"

    iget-object v4, p0, Lcom/bsgamesdk/android/api/e$36;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    const-string v3, "access_key"

    iget-object v4, p0, Lcom/bsgamesdk/android/api/e$36;->g:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "pwd"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "captcha_key"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$36;->h:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/api/e$36;->a(Ljava/util/Map;)V

    invoke-static {v2}, Lcom/bsgamesdk/android/api/e;->b(Ljava/util/Map;)V

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :try_start_5a
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCachePost(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 BSGameSDK"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$36;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseBooleanResponse(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_76
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_5a .. :try_end_76} :catch_78

    move-result-object v0

    :goto_77
    return-object v0

    :catch_78
    move-exception v0

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v2, 0xea6a

    if-ne v1, v2, :cond_a2

    iget v1, p0, Lcom/bsgamesdk/android/api/e$36;->i:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_a2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$36;->j:Lcom/bsgamesdk/android/api/e;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$36;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$36;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$36;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/bsgamesdk/android/api/e$36;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/bsgamesdk/android/api/e$36;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/bsgamesdk/android/api/e$36;->b:Ljava/lang/String;

    iget v7, p0, Lcom/bsgamesdk/android/api/e$36;->i:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/bsgamesdk/android/api/e$36;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_77

    :cond_a2
    throw v0
.end method
