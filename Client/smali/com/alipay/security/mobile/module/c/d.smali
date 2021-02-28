.class public final Lcom/alipay/security/mobile/module/c/d;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-class v1, Lcom/alipay/security/mobile/module/c/d;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_29

    move-result v0

    if-nez v0, :cond_11

    if-nez p0, :cond_13

    :cond_11
    :goto_11
    monitor-exit v1

    return-void

    :cond_13
    :try_start_13
    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/alipay/security/mobile/module/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/alipay/security/mobile/module/c/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_26} :catch_27
    .catchall {:try_start_13 .. :try_end_26} :catchall_29

    goto :goto_11

    :catch_27
    move-exception v0

    goto :goto_11

    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method
