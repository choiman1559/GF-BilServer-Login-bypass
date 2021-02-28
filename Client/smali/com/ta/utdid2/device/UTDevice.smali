.class public Lcom/ta/utdid2/device/UTDevice;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/ta/utdid2/device/b;->b(Landroid/content/Context;)Lcom/ta/utdid2/device/a;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/ta/utdid2/device/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_10
    const-string v0, "ffffffffffffffffffffffff"

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {v0}, Lcom/ta/utdid2/device/a;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/ta/utdid2/device/c;->a(Landroid/content/Context;)Lcom/ta/utdid2/device/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/utdid2/device/c;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_10
    const-string v0, "ffffffffffffffffffffffff"

    :cond_12
    return-object v0
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUtdidForUpdate(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
