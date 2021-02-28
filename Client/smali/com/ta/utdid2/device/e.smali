.class public Lcom/ta/utdid2/device/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/ta/utdid2/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/ta/utdid2/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const/4 v2, 0x0

    :try_start_c
    invoke-static {v0, v2}, Lcom/ta/utdid2/a/a/b;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_15} :catch_16

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    move-object v0, v1

    goto :goto_15

    :cond_19
    move-object v0, v1

    goto :goto_15
.end method
