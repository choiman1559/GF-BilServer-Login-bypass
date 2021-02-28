.class public Lcom/tencent/tp/v;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3

    :try_start_0
    const-string v0, "android.app.ActivityThread$ActivityClientRecord"

    const-string v1, "paused"

    invoke-static {v0, p0, v1}, Lcom/tencent/tp/k;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a
.end method

.method public static a()V
    .registers 2

    invoke-static {}, Lcom/tencent/tp/v;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_11

    :try_start_6
    invoke-static {v0}, Lcom/tencent/tp/v;->d(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_12

    :goto_9
    invoke-static {v0}, Lcom/tencent/tp/v;->c(Landroid/content/Context;)V

    const-string v0, "info:main initialize done"

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    :cond_11
    return-void

    :catch_12
    move-exception v1

    goto :goto_9
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apk_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tp/v;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tp/v;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tp/v;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vercode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tp/v;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "model:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tp/s;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "api_level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tp/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sys_ver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tp/s;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdcard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/tp/v;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sd_package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/tp/v;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    const-string v0, "ip_beg"

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tp/v;->k()V

    const-string v0, "ip_end"

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dev_cpuname:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tp/s;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "debugger:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tp/v;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/tp/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tp/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/tp/c;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cert:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    :cond_14d
    invoke-virtual {v0}, Lcom/tencent/tp/c;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_169

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cert_author:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    :cond_169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "certenv:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tp/f;->a()Z

    move-result v0

    if-eqz v0, :cond_188

    const-string v0, "true"

    :goto_17c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    return-void

    :cond_188
    const-string v0, "false"

    goto :goto_17c
.end method

.method public static b()Z
    .registers 1

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/tencent/tp/v;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/tencent/tp/v;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static c()Landroid/content/Context;
    .registers 4

    sget-object v0, Lcom/tencent/tp/v;->a:Landroid/content/Context;

    if-nez v0, :cond_1e

    :try_start_4
    const-string v0, "android.app.ActivityThread"

    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tp/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android.app.ActivityThread"

    const-string v2, "mInitialApplication"

    invoke-static {v1, v0, v2}, Lcom/tencent/tp/k;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lcom/tencent/tp/v;->a:Landroid/content/Context;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_21

    :cond_1e
    :goto_1e
    sget-object v0, Lcom/tencent/tp/v;->a:Landroid/content/Context;

    return-object v0

    :catch_21
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tp/v;->a:Landroid/content/Context;

    goto :goto_1e
.end method

.method private static c(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Lcom/tencent/tp/a;

    invoke-direct {v0, p0}, Lcom/tencent/tp/a;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tp/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static d()Landroid/content/pm/PackageInfo;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/tp/v;->b:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1e

    :try_start_5
    invoke-static {}, Lcom/tencent/tp/v;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tp/v;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_26

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v2, 0x0

    :try_start_18
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sput-object v0, Lcom/tencent/tp/v;->b:Landroid/content/pm/PackageInfo;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_21

    :cond_1e
    :goto_1e
    sget-object v0, Lcom/tencent/tp/v;->b:Landroid/content/pm/PackageInfo;

    return-object v0

    :catch_21
    move-exception v0

    const/4 v0, 0x0

    :try_start_23
    sput-object v0, Lcom/tencent/tp/v;->b:Landroid/content/pm/PackageInfo;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_25} :catch_26

    goto :goto_1e

    :catch_26
    move-exception v0

    sput-object v3, Lcom/tencent/tp/v;->b:Landroid/content/pm/PackageInfo;

    goto :goto_1e
.end method

.method private static d(Landroid/content/Context;)V
    .registers 3

    const-string v0, "jar_ver:5.0.6(2020/11/10)-jar-version"

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "files_dir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/tp/v;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apk_path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/tp/v;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib_dir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/tp/v;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dev_resolution:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/tp/s;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static e()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/tencent/tp/v;->c()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    :cond_b
    :goto_b
    return-object v0

    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/tencent/tp/i;->c(Landroid/content/Context;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    goto :goto_5
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/tencent/tp/v;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/tencent/tp/s;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/tencent/tp/i;->d(Landroid/content/Context;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    goto :goto_5
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/tencent/tp/v;->d()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    goto :goto_5
.end method

.method public static h()I
    .registers 1

    invoke-static {}, Lcom/tencent/tp/v;->d()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/tencent/tp/i;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    goto :goto_5
.end method

.method public static i()Landroid/app/Activity;
    .registers 2

    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    const-string v1, "currentActivity"

    invoke-static {v0, v1}, Lcom/tencent/tp/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7} :catch_36

    const/16 v3, 0x9

    if-lt v0, v3, :cond_39

    :try_start_b
    const-string v0, "android.content.pm.ApplicationInfo"

    const-string v3, "nativeLibraryDir"

    invoke-static {v0, v2, v3}, Lcom/tencent/tp/k;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_33
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_15} :catch_36

    :goto_15
    if-nez v0, :cond_32

    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_31} :catch_36

    move-result-object v0

    :cond_32
    :goto_32
    return-object v0

    :catch_33
    move-exception v0

    move-object v0, v1

    goto :goto_15

    :catch_36
    move-exception v0

    move-object v0, v1

    goto :goto_32

    :cond_39
    move-object v0, v1

    goto :goto_15
.end method

.method public static j()Landroid/app/Activity;
    .registers 1

    invoke-static {}, Lcom/tencent/tp/v;->i()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/tencent/tp/v;->l()Landroid/app/Activity;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private static j(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_10

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    :goto_f
    return v0

    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private static k()V
    .registers 5

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    if-eqz v2, :cond_7

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->b(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4b} :catch_4c

    goto :goto_19

    :catch_4c
    move-exception v0

    goto :goto_6
.end method

.method private static k(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "plugged"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_13} :catch_19

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    const/4 v0, 0x1

    :cond_18
    :goto_18
    return v0

    :catch_19
    move-exception v1

    goto :goto_18
.end method

.method private static l()Landroid/app/Activity;
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_2
    const-string v0, "android.app.ActivityThread"

    const-string v3, "currentActivityThread"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v4, v5}, Lcom/tencent/tp/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "android.app.ActivityThread"

    const-string v4, "mActivities"

    invoke-static {v3, v0, v4}, Lcom/tencent/tp/k;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "java.util.Map"

    const-string v4, "values"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5, v6}, Lcom/tencent/tp/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    move v3, v1

    move-object v1, v2

    :goto_2e
    array-length v0, v4

    if-ge v3, v0, :cond_54

    aget-object v5, v4, v3

    if-eqz v5, :cond_55

    const-string v0, "android.app.ActivityThread$ActivityClientRecord"

    const-string v6, "activity"

    invoke-static {v0, v5, v6}, Lcom/tencent/tp/k;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5}, Lcom/tencent/tp/v;->a(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v0, :cond_55

    if-eqz v1, :cond_4b

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_55

    :cond_4b
    check-cast v0, Landroid/app/Activity;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4d} :catch_52

    :goto_4d
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_2e

    :catch_52
    move-exception v0

    move-object v1, v2

    :cond_54
    return-object v1

    :cond_55
    move-object v0, v1

    goto :goto_4d
.end method
