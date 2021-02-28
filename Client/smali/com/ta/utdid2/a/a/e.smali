.class public Lcom/ta/utdid2/a/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/lang/String;
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-int v1, v2

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v0}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v0

    invoke-static {v1}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v1

    invoke-static {v2}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v2

    invoke-static {v3}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v3

    const/16 v4, 0x10

    new-array v4, v4, [B

    invoke-static {v0, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v5, v4, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    invoke-static {v2, v5, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xc

    invoke-static {v3, v5, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x2

    invoke-static {v4, v0}, Lcom/ta/utdid2/a/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/ta/utdid2/a/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz p0, :cond_18

    :try_start_9
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_37

    move-result-object v0

    :goto_17
    move-object v1, v0

    :cond_18
    :goto_18
    invoke-static {v1}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/ta/utdid2/a/a/e;->b()Ljava/lang/String;

    move-result-object v1

    :cond_22
    invoke-static {v1}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p0}, Lcom/ta/utdid2/a/a/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_2c
    invoke-static {v1}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/ta/utdid2/a/a/e;->a()Ljava/lang/String;

    move-result-object v1

    :cond_36
    return-object v1

    :catch_37
    move-exception v0

    goto :goto_18

    :cond_39
    move-object v0, v1

    goto :goto_17
.end method

.method private static b()Ljava/lang/String;
    .registers 2

    const-string v0, "ro.aliyun.clouduuid"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/a/h;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, "ro.sys.aliyun.clouduuid"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/a/h;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/ta/utdid2/a/a/e;->c()Ljava/lang/String;

    move-result-object v0

    :cond_20
    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "a5f5faddde9e9f02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "8e17f7422b35fbea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "0000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_2a
    const-string v0, ""
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2c} :catch_2d

    :cond_2c
    :goto_2c
    return-object v0

    :catch_2d
    move-exception v1

    goto :goto_2c
.end method

.method private static c()Ljava/lang/String;
    .registers 4

    const-string v1, ""

    :try_start_2
    const-string v0, "com.yunos.baseservice.clouduuid.CloudUUID"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getCloudUUID"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    move-object v0, v1

    goto :goto_1b
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    :try_start_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_1d

    move-result-object v0

    :goto_11
    move-object v1, v0

    :cond_12
    :goto_12
    invoke-static {v1}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/ta/utdid2/a/a/e;->a()Ljava/lang/String;

    move-result-object v1

    :cond_1c
    return-object v1

    :catch_1d
    move-exception v0

    goto :goto_12

    :cond_1f
    move-object v0, v1

    goto :goto_11
.end method
