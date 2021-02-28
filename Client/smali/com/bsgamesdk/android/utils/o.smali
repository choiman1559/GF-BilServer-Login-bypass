.class public Lcom/bsgamesdk/android/utils/o;
.super Ljava/lang/Object;


# static fields
.field private static volatile c:Lcom/bsgamesdk/android/utils/o;


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field private b:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/utils/o;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->d:Landroid/content/Context;

    const-string v1, "bili_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/utils/o;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bsgamesdk/android/utils/o;
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/utils/o;->c:Lcom/bsgamesdk/android/utils/o;

    if-nez v0, :cond_13

    const-class v1, Lcom/bsgamesdk/android/utils/o;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/bsgamesdk/android/utils/o;->c:Lcom/bsgamesdk/android/utils/o;

    if-nez v0, :cond_12

    new-instance v0, Lcom/bsgamesdk/android/utils/o;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/utils/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bsgamesdk/android/utils/o;->c:Lcom/bsgamesdk/android/utils/o;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/bsgamesdk/android/utils/o;->c:Lcom/bsgamesdk/android/utils/o;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private f()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/bsgamesdk/android/utils/o;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    goto :goto_a

    :cond_1c
    invoke-virtual {p0}, Lcom/bsgamesdk/android/utils/o;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/utils/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    goto :goto_a

    :cond_32
    invoke-virtual {p0}, Lcom/bsgamesdk/android/utils/o;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/utils/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    goto :goto_a

    :cond_48
    invoke-direct {p0}, Lcom/bsgamesdk/android/utils/o;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/utils/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    goto :goto_a

    :cond_5e
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/utils/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    goto :goto_a

    :cond_78
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "secure_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->a:Landroid/content/SharedPreferences;

    const-string v1, "secure_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->d:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_e
.end method

.method public d()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->d:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_e
.end method

.method public e()V
    .registers 3

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/utils/o;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/o;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "secure_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
