.class public Lcom/ta/utdid2/device/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ta/utdid2/device/a;

.field static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/b;->a:Lcom/ta/utdid2/device/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/b;->d:Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/ta/utdid2/device/a;)J
    .registers 7

    if-eqz p0, :cond_4c

    const-string v0, "%s%s%s%s%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->getImsi()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/Adler32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    :goto_4b
    return-wide v0

    :cond_4c
    const-wide/16 v0, 0x0

    goto :goto_4b
.end method

.method private static a(Landroid/content/Context;)Lcom/ta/utdid2/device/a;
    .registers 8

    if-eqz p0, :cond_51

    sget-object v2, Lcom/ta/utdid2/device/b;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    invoke-static {p0}, Lcom/ta/utdid2/device/c;->a(Landroid/content/Context;)Lcom/ta/utdid2/device/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/utdid2/device/c;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_27
    new-instance v0, Lcom/ta/utdid2/device/a;

    invoke-direct {v0}, Lcom/ta/utdid2/device/a;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0}, Lcom/ta/utdid2/a/a/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/ta/utdid2/a/a/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/a;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/ta/utdid2/device/a;->b(J)V

    invoke-virtual {v0, v6}, Lcom/ta/utdid2/device/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/device/a;->e(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ta/utdid2/device/b;->a(Lcom/ta/utdid2/device/a;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ta/utdid2/device/a;->a(J)V

    monitor-exit v2

    :goto_4f
    return-object v0

    :cond_50
    monitor-exit v2

    :cond_51
    const/4 v0, 0x0

    goto :goto_4f

    :catchall_53
    move-exception v0

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_53

    throw v0

    :cond_56
    move-object v1, v0

    goto :goto_27
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/ta/utdid2/device/a;
    .registers 3

    const-class v1, Lcom/ta/utdid2/device/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ta/utdid2/device/b;->a:Lcom/ta/utdid2/device/a;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/ta/utdid2/device/b;->a:Lcom/ta/utdid2/device/a;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    if-eqz p0, :cond_17

    :try_start_d
    invoke-static {p0}, Lcom/ta/utdid2/device/b;->a(Landroid/content/Context;)Lcom/ta/utdid2/device/a;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/b;->a:Lcom/ta/utdid2/device/a;
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_14

    goto :goto_9

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_9
.end method
