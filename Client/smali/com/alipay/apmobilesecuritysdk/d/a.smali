.class public final Lcom/alipay/apmobilesecuritysdk/d/a;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/alipay/apmobilesecuritysdk/d/a;

    monitor-enter v1

    :try_start_3
    const-string v0, "appchannel"

    const-string v2, ""

    invoke-static {p1, v0, v2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "AA1"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AA2"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/a;->a()Lcom/alipay/security/mobile/module/b/a;

    invoke-static {p0}, Lcom/alipay/security/mobile/module/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AA3"

    const-string v4, "APPSecuritySDK-ALIPAYSDK"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AA4"

    const-string v4, "3.4.0.201910161639"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AA6"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_3a

    monitor-exit v1

    return-object v2

    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
