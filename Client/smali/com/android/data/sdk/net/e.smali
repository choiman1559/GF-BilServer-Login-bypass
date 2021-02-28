.class public Lcom/android/data/sdk/net/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/android/data/sdk/PreDefined;


# direct methods
.method public constructor <init>(Lcom/android/data/sdk/PreDefined;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/data/sdk/net/e;->a:Lcom/android/data/sdk/PreDefined;

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_47

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->d()Lcom/android/data/sdk/domain/model/Timeout;

    move-result-object v0

    new-instance v2, Lbsgamesdkhttp/u$a;

    invoke-direct {v2}, Lbsgamesdkhttp/u$a;-><init>()V

    invoke-virtual {v0}, Lcom/android/data/sdk/domain/model/Timeout;->getConnectTimeout()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lbsgamesdkhttp/u$a;->a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkhttp/u$a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/data/sdk/domain/model/Timeout;->getReadTimeout()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v0}, Lbsgamesdkhttp/u$a;->b(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkhttp/u$a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbsgamesdkhttp/u$a;->a(Z)Lbsgamesdkhttp/u$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/u$a;->a()Lbsgamesdkhttp/u;

    move-result-object v2

    :goto_30
    if-ge p1, v1, :cond_47

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_38
    new-instance v3, Lcom/android/data/sdk/api/a;

    iget-object v4, p0, Lcom/android/data/sdk/net/e;->a:Lcom/android/data/sdk/PreDefined;

    invoke-direct {v3, v4}, Lcom/android/data/sdk/api/a;-><init>(Lcom/android/data/sdk/PreDefined;)V

    invoke-virtual {v3, v2, v0}, Lcom/android/data/sdk/api/a;->a(Lbsgamesdkhttp/u;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_42} :catch_48

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_49

    :cond_47
    return p1

    :catch_48
    move-exception v0

    :cond_49
    add-int/lit8 p1, p1, 0x1

    goto :goto_30
.end method
