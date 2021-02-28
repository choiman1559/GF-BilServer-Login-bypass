.class public Lcom/bsgamesdk/android/dc/buvid/file/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/k;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/k;->b:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const-string v1, ""

    :try_start_d
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1a} :catch_2a

    move-result-object v0

    :goto_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/buvid/file/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_27
    :goto_27
    sput-object v0, Lcom/bsgamesdk/android/dc/buvid/file/k;->b:Ljava/lang/String;

    goto :goto_a

    :catch_2a
    move-exception v0

    const-string v0, ""

    goto :goto_1b

    :cond_2e
    const-string v0, ""

    goto :goto_27

    :cond_31
    move-object v0, v1

    goto :goto_1b
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "000000000000000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "00000000000000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/k;->a:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/dc/buvid/file/k;->a:Ljava/lang/String;

    goto :goto_a
.end method
