.class public Lcom/alipay/apmobilesecuritysdk/f/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    invoke-static {p1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {p2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    :try_start_10
    const-string v1, ""

    invoke-static {p0, p1, p2, v1}, Lcom/alipay/security/mobile/module/c/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/security/mobile/module/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_23} :catch_25

    move-result-object v0

    goto :goto_f

    :catch_25
    move-exception v1

    goto :goto_f
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-class v1, Lcom/alipay/apmobilesecuritysdk/f/a;

    monitor-enter v1

    :try_start_4
    invoke-static {p0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {p1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_1e

    :goto_11
    return-object v0

    :cond_12
    :try_start_12
    invoke-static {p0}, Lcom/alipay/security/mobile/module/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_19} :catch_3c
    .catchall {:try_start_12 .. :try_end_19} :catchall_1e

    move-result v3

    if-eqz v3, :cond_21

    :try_start_1c
    monitor-exit v1

    goto :goto_11

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    :try_start_21
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2d} :catch_3c
    .catchall {:try_start_21 .. :try_end_2d} :catchall_1e

    move-result v3

    if-eqz v3, :cond_32

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_1e

    goto :goto_11

    :cond_32
    :try_start_32
    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/security/mobile/module/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_39} :catch_3c
    .catchall {:try_start_32 .. :try_end_39} :catchall_1e

    move-result-object v0

    :try_start_3a
    monitor-exit v1

    goto :goto_11

    :catch_3c
    move-exception v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_1e

    goto :goto_11
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez p0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/alipay/security/mobile/module/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/alipay/security/mobile/module/c/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_22} :catch_23

    goto :goto_e

    :catch_23
    move-exception v0

    goto :goto_e
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-class v1, Lcom/alipay/apmobilesecuritysdk/f/a;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_71

    :goto_10
    return-void

    :cond_11
    :try_start_11
    invoke-static {p0}, Lcom/alipay/security/mobile/module/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2}, Lcom/alipay/security/mobile/module/a/a;->b(Ljava/lang/String;)Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1d} :catch_7b
    .catchall {:try_start_11 .. :try_end_1d} :catchall_71

    move-result v3

    if-eqz v3, :cond_25

    :try_start_20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_74
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_25} :catch_7b
    .catchall {:try_start_20 .. :try_end_25} :catchall_71

    :cond_25
    :goto_25
    :try_start_25
    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/alipay/security/mobile/module/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_33} :catch_7b
    .catchall {:try_start_25 .. :try_end_33} :catchall_71

    :try_start_33
    invoke-static {p0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_7d
    .catchall {:try_start_33 .. :try_end_36} :catchall_71

    :goto_36
    :try_start_36
    invoke-static {}, Lcom/alipay/security/mobile/module/c/c;->a()Z

    move-result v0

    if-eqz v0, :cond_6f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ".SystemConfig"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_50} :catch_7b
    .catchall {:try_start_36 .. :try_end_50} :catchall_71

    move-result-object v0

    :try_start_51
    invoke-static {}, Lcom/alipay/security/mobile/module/c/c;->a()Z

    move-result v2

    if-eqz v2, :cond_6f

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_6f} :catch_7f
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_6f} :catch_7b
    .catchall {:try_start_51 .. :try_end_6f} :catchall_71

    :cond_6f
    :goto_6f
    :try_start_6f
    monitor-exit v1

    goto :goto_10

    :catchall_71
    move-exception v0

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_71

    throw v0

    :catch_74
    move-exception v0

    :try_start_75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_7a} :catch_7b
    .catchall {:try_start_75 .. :try_end_7a} :catchall_71

    goto :goto_25

    :catch_7b
    move-exception v0

    goto :goto_6f

    :catch_7d
    move-exception v0

    goto :goto_36

    :catch_7f
    move-exception v0

    goto :goto_6f
.end method
