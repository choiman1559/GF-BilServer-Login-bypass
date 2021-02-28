.class public Lcom/bsgamesdk/android/model/a;
.super Lcom/bsgamesdk/android/model/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "agree_license_info"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bsgamesdk/android/model/g;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .registers 6

    const-class v1, Lcom/bsgamesdk/android/model/a;

    monitor-enter v1

    :try_start_3
    const-string v0, "agree_license_info"

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/model/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_16
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "agree_license_info"

    invoke-virtual {p0, v2, v0}, Lcom/bsgamesdk/android/model/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "agree_license_info"

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/model/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_f
.end method

.method public b(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "agree_license_info"

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/model/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_11

    move v0, v1

    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/model/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_24

    move-result v0

    goto :goto_10

    :cond_22
    move v0, v1

    goto :goto_10

    :catch_24
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_10
.end method
