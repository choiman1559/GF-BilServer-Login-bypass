.class public final Lcom/alipay/apmobilesecuritysdk/e/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/f;
    .registers 5

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "device_feature_prefs_name"

    const-string v2, "device_feature_prefs_key"

    invoke-static {p0, v0, v2}, Lcom/alipay/apmobilesecuritysdk/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v0, "device_feature_file_name"

    const-string v2, "device_feature_file_key"

    invoke-static {v0, v2}, Lcom/alipay/apmobilesecuritysdk/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object v0, v1

    goto :goto_4

    :cond_23
    :try_start_23
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/e/f;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/e/f;-><init>()V

    const-string v3, "imei"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/apmobilesecuritysdk/e/f;->a(Ljava/lang/String;)V

    const-string v3, "imsi"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/apmobilesecuritysdk/e/f;->b(Ljava/lang/String;)V

    const-string v3, "mac"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/apmobilesecuritysdk/e/f;->c(Ljava/lang/String;)V

    const-string v3, "bluetoothmac"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/apmobilesecuritysdk/e/f;->d(Ljava/lang/String;)V

    const-string v3, "gsi"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/apmobilesecuritysdk/e/f;->e(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5a} :catch_5b

    goto :goto_4

    :catch_5b
    move-exception v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_4
.end method
