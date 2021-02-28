.class public Lcom/tencent/tp/r;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 2

    invoke-static {p0}, Lcom/tencent/tp/TssSdk;->hasMatchRate(I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/tencent/tp/r;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "poa-8"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_13

    array-length v1, v0

    if-lez v1, :cond_13

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/tencent/tp/TssSdk;->onruntimeinfo([BI)V

    :cond_13
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "poa-8"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_13

    array-length v1, v0

    if-lez v1, :cond_13

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/tencent/tp/TssSdk;->senddatatosvr([BI)V

    :cond_13
    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/tencent/tp/TssSdk;->ioctl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
