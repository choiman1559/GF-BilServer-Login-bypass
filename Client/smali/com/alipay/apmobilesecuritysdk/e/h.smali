.class public Lcom/alipay/apmobilesecuritysdk/e/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .registers 5

    const-wide/32 v0, 0x5265c00

    const-string v2, "update_time_interval"

    const-string v3, "vkeyid_settings"

    invoke-static {p0, v3, v2}, Lcom/alipay/security/mobile/module/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/a/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    :try_start_11
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_16

    move-result-wide v0

    :cond_15
    :goto_15
    return-wide v0

    :catch_16
    move-exception v2

    goto :goto_15
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "update_time_interval"

    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 8

    const-string v0, "vkeyid_settings"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vkey_valid"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/alipay/security/mobile/module/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "vkeyid_settings"

    invoke-static {p0, v0, p1, p2}, Lcom/alipay/security/mobile/module/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 4

    const-string v1, "log_switch"

    if-eqz p1, :cond_a

    const-string v0, "1"

    :goto_6
    invoke-static {p0, v1, v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v0, "0"

    goto :goto_6
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "last_apdid_env"

    const-string v1, "vkeyid_settings"

    invoke-static {p0, v1, v0}, Lcom/alipay/security/mobile/module/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "last_machine_boot_time"

    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "last_apdid_env"

    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "log_switch"

    const-string v1, "vkeyid_settings"

    invoke-static {p0, v1, v0}, Lcom/alipay/security/mobile/module/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "dynamic_key"

    const-string v1, "vkeyid_settings"

    invoke-static {p0, v1, v0}, Lcom/alipay/security/mobile/module/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "agent_switch"

    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "apse_degrade"

    const-string v1, "vkeyid_settings"

    invoke-static {p0, v1, v0}, Lcom/alipay/security/mobile/module/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "dynamic_key"

    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "alipay_vkey_random"

    const-string v2, "random"

    const-string v3, ""

    invoke-static {p0, v0, v2, v3}, Lcom/alipay/security/mobile/module/c/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    const-string v0, "alipay_vkey_random"

    const-string v2, "random"

    sget-object v3, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    if-eqz v3, :cond_44

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_44
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "webrtc_url"

    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "apse_degrade"

    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)J
    .registers 7

    const-wide/16 v0, 0x0

    :try_start_2
    const-string v2, "vkeyid_settings"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vkey_valid"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/alipay/security/mobile/module/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :goto_1d
    return-wide v0

    :cond_1e
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_21} :catch_23

    move-result-wide v0

    goto :goto_1d

    :catch_23
    move-exception v2

    goto :goto_1d
.end method
