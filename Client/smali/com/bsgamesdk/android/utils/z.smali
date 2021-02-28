.class public Lcom/bsgamesdk/android/utils/z;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, ""

    goto :goto_8

    :cond_12
    :try_start_12
    const-string v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bsgamesdk/android/api/b;->b(I)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_26} :catch_34

    :goto_26
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_2b
    :try_start_2b
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bsgamesdk/android/api/b;->b(I)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_33} :catch_34

    goto :goto_26

    :catch_34
    move-exception v1

    goto :goto_26
.end method
