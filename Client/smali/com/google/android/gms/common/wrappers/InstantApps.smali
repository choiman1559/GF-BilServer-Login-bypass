.class public Lcom/google/android/gms/common/wrappers/InstantApps;
.super Ljava/lang/Object;


# static fields
.field private static zzhv:Landroid/content/Context;

.field private static zzhw:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isInstantApp(Landroid/content/Context;)Z
    .registers 5

    const-class v0, Lcom/google/android/gms/common/wrappers/InstantApps;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhv:Landroid/content/Context;

    if-eqz v2, :cond_17

    sget-object v3, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhw:Ljava/lang/Boolean;

    if-eqz v3, :cond_17

    if-ne v2, v1, :cond_17

    .line 4
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_53

    monitor-exit v0

    return p0

    .line 5
    :cond_17
    const/4 v2, 0x0

    :try_start_18
    sput-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhw:Ljava/lang/Boolean;

    .line 6
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhw:Ljava/lang/Boolean;
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_53

    goto :goto_49

    .line 8
    :cond_2f
    nop

    .line 9
    :try_start_30
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    .line 10
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhw:Ljava/lang/Boolean;
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_40} :catch_41
    .catchall {:try_start_30 .. :try_end_40} :catchall_53

    .line 12
    goto :goto_49

    .line 13
    :catch_41
    move-exception p0

    .line 14
    const/4 p0, 0x0

    :try_start_43
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhw:Ljava/lang/Boolean;

    .line 15
    :goto_49
    sput-object v1, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhv:Landroid/content/Context;

    .line 16
    sget-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhw:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_53

    monitor-exit v0

    return p0

    .line 1
    :catchall_53
    move-exception p0

    monitor-exit v0

    throw p0
.end method
