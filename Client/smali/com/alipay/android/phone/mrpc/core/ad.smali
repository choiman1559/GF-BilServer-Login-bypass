.class public Lcom/alipay/android/phone/mrpc/core/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/alipay/android/phone/mrpc/core/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/ad;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x3

    if-lt p2, v2, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_5

    :cond_c
    instance-of v2, p1, Ljava/net/SocketException;

    if-nez v2, :cond_14

    instance-of v2, p1, Ljavax/net/ssl/SSLException;

    if-eqz v2, :cond_5

    :cond_14
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Broken pipe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_5
.end method
