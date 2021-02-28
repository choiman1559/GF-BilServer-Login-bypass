.class public Lcom/mob/commons/e;
.super Ljava/lang/Object;
.source "ProcessLevelSPDB.java"


# static fields
.field private static a:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method public static declared-synchronized a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 30
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 31
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_ext_info"

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(J)V
    .registers 6

    .prologue
    .line 45
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 46
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "wifi_last_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 47
    monitor-exit v1

    return-void

    .line 45
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 35
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 36
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_ext_info"

    invoke-virtual {v0, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 37
    monitor-exit v1

    return-void

    .line 35
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()J
    .registers 4

    .prologue
    .line 40
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 41
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "wifi_last_time"

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_10

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 40
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(J)V
    .registers 6

    .prologue
    .line 75
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 76
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_cellinfo_next_total"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 77
    monitor-exit v1

    return-void

    .line 75
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 55
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 56
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "wifi_last_info"

    invoke-virtual {v0, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 57
    monitor-exit v1

    return-void

    .line 55
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 50
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 51
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "wifi_last_info"

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 60
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 61
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_cellinfo"

    invoke-virtual {v0, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 62
    monitor-exit v1

    return-void

    .line 60
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 65
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 66
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_cellinfo"

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 80
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 81
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_switches"

    invoke-virtual {v0, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 82
    monitor-exit v1

    return-void

    .line 80
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 85
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 86
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_switches"

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 90
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 91
    if-nez p0, :cond_11

    .line 92
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_data_url"

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    .line 96
    :goto_f
    monitor-exit v1

    return-void

    .line 94
    :cond_11
    :try_start_11
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_data_url"

    invoke-virtual {v0, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    goto :goto_f

    .line 90
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 100
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_data_url"

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized f(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 104
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 105
    if-nez p0, :cond_11

    .line 106
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_conf_url"

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    .line 110
    :goto_f
    monitor-exit v1

    return-void

    .line 108
    :cond_11
    :try_start_11
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_conf_url"

    invoke-virtual {v0, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    goto :goto_f

    .line 104
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized g()Ljava/lang/String;
    .registers 3

    .prologue
    .line 113
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 114
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_conf_url"

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized g(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 123
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 124
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_wifi_list_hash"

    invoke-virtual {v0, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 125
    monitor-exit v1

    return-void

    .line 123
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized h()Ljava/lang/String;
    .registers 3

    .prologue
    .line 118
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mob/commons/e;->i()V

    .line 119
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_wifi_list_hash"

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 118
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized i()V
    .registers 4

    .prologue
    .line 23
    const-class v1, Lcom/mob/commons/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    if-nez v0, :cond_1a

    .line 24
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    .line 25
    sget-object v0, Lcom/mob/commons/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "mob_commons"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    .line 27
    :cond_1a
    monitor-exit v1

    return-void

    .line 23
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
