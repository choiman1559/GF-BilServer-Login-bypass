.class Lcom/bsgamesdk/android/api/e$16;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/bsgamesdk/android/model/CaptchModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bsgamesdk/android/api/c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/bsgamesdk/android/model/CaptchModel;

.field final synthetic g:I

.field final synthetic h:Lcom/bsgamesdk/android/api/e;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/e;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;I)V
    .registers 9

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$16;->h:Lcom/bsgamesdk/android/api/e;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/e$16;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/e$16;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/e$16;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/e$16;->d:Landroid/content/Context;

    iput-object p6, p0, Lcom/bsgamesdk/android/api/e$16;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/bsgamesdk/android/api/e$16;->f:Lcom/bsgamesdk/android/model/CaptchModel;

    iput p8, p0, Lcom/bsgamesdk/android/api/e$16;->g:I

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$16;->b(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Void;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$16;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$16;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    iget-object v1, v1, Lcom/bsgamesdk/android/model/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$16;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$16;->c:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "api/client/realname_auth"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$16;->d:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v3

    const-string v4, "uid"

    iget-object v5, p0, Lcom/bsgamesdk/android/api/e$16;->e:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "real_name"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id_card"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$16;->h:Lcom/bsgamesdk/android/api/e;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$16;->f:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-static {v0, v1, v3}, Lcom/bsgamesdk/android/api/e;->a(Lcom/bsgamesdk/android/api/e;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/util/Map;)V

    invoke-virtual {p0, v3}, Lcom/bsgamesdk/android/api/e$16;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$16;->h:Lcom/bsgamesdk/android/api/e;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$16;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, v3, p1}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/bsgamesdk/android/api/e;->b(Ljava/util/Map;)V

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCachePost(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 BSGameSDK"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$16;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseVoidResponse(Ljava/lang/String;)V
    :try_end_86
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_1 .. :try_end_86} :catch_88

    :goto_86
    const/4 v0, 0x0

    return-object v0

    :catch_88
    move-exception v0

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v2, 0xea6a

    if-ne v1, v2, :cond_a8

    iget v1, p0, Lcom/bsgamesdk/android/api/e$16;->g:I

    if-ge v1, v6, :cond_a8

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$16;->h:Lcom/bsgamesdk/android/api/e;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$16;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$16;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$16;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/bsgamesdk/android/api/e$16;->b:Ljava/lang/String;

    iget v5, p0, Lcom/bsgamesdk/android/api/e$16;->g:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/bsgamesdk/android/api/e$16;->f:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual/range {v0 .. v6}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/bsgamesdk/android/model/CaptchModel;)V

    goto :goto_86

    :cond_a8
    throw v0
.end method
