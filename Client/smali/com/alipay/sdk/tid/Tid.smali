.class public final Lcom/alipay/sdk/tid/Tid;
.super Ljava/lang/Object;


# instance fields
.field private final key:Ljava/lang/String;

.field private final tid:Ljava/lang/String;

.field private final time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/tid/Tid;->tid:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/sdk/tid/Tid;->key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alipay/sdk/tid/Tid;->time:J

    return-void
.end method

.method public static isEmpty(Lcom/alipay/sdk/tid/Tid;)Z
    .registers 2

    if-eqz p0, :cond_a

    iget-object v0, p0, Lcom/alipay/sdk/tid/Tid;->tid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public getTid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/tid/Tid;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getTidSeed()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/tid/Tid;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/alipay/sdk/tid/Tid;->time:J

    return-wide v0
.end method
