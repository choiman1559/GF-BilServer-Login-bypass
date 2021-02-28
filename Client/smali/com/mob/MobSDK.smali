.class public Lcom/mob/MobSDK;
.super Ljava/lang/Object;
.source "MobSDK.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .registers 1

    .prologue
    .line 73
    new-instance v0, Lcom/mob/MobSDK$1;

    invoke-direct {v0}, Lcom/mob/MobSDK$1;-><init>()V

    .line 81
    invoke-virtual {v0}, Lcom/mob/MobSDK$1;->start()V

    .line 82
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 48
    if-eqz p0, :cond_4

    if-nez p1, :cond_39

    .line 49
    :cond_4
    const/4 v0, 0x0

    .line 51
    :try_start_5
    sget-object v1, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    .line 52
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 51
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 53
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1b} :catch_3e

    .line 56
    :goto_1b
    if-nez p0, :cond_25

    if-eqz v0, :cond_25

    .line 57
    const-string v1, "Mob-AppKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 60
    :cond_25
    if-nez p1, :cond_2f

    if-eqz v0, :cond_2f

    .line 61
    const-string v1, "Mob-AppSecret"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    :cond_2f
    if-nez p1, :cond_39

    if-eqz v0, :cond_39

    .line 65
    const-string v1, "Mob-AppSeret"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    :cond_39
    sput-object p0, Lcom/mob/MobSDK;->b:Ljava/lang/String;

    .line 69
    sput-object p1, Lcom/mob/MobSDK;->c:Ljava/lang/String;

    .line 70
    return-void

    .line 54
    :catch_3e
    move-exception v1

    goto :goto_1b
.end method

.method public static declared-synchronized clearUser()V
    .registers 2

    .prologue
    .line 114
    const-class v1, Lcom/mob/MobSDK;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/mob/MobSDK$3;

    invoke-direct {v0}, Lcom/mob/MobSDK$3;-><init>()V

    invoke-static {v0}, Lcom/mob/MobUser;->a(Lcom/mob/MobUser$OnUserGotListener;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 121
    monitor-exit v1

    return-void

    .line 114
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAppSecret()Ljava/lang/String;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/mob/MobSDK;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppkey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/mob/MobSDK;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getUser(Lcom/mob/MobUser$OnUserGotListener;)V
    .registers 3

    .prologue
    .line 134
    const-class v1, Lcom/mob/MobSDK;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/mob/MobSDK$4;

    invoke-direct {v0, p0}, Lcom/mob/MobSDK$4;-><init>(Lcom/mob/MobUser$OnUserGotListener;)V

    invoke-static {v0}, Lcom/mob/MobUser;->a(Lcom/mob/MobUser$OnUserGotListener;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 139
    monitor-exit v1

    return-void

    .line 134
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 27
    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-static {p0, v1, v2}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    .line 28
    monitor-exit v0

    return-void

    .line 27
    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 31
    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 32
    monitor-exit v0

    return-void

    .line 31
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 35
    const-class v1, Lcom/mob/MobSDK;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    if-nez v0, :cond_22

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    .line 37
    invoke-static {p1, p2}, Lcom/mob/MobSDK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/mob/a;->a()Lcom/mob/tools/log/NLog;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_24

    .line 40
    :try_start_13
    const-class v0, Lcom/mob/tools/utils/ApplicationTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1c} :catch_27
    .catchall {:try_start_13 .. :try_end_1c} :catchall_24

    .line 42
    :goto_1c
    :try_start_1c
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->collect()V

    .line 43
    invoke-static {}, Lcom/mob/MobSDK;->a()V
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_24

    .line 45
    :cond_22
    monitor-exit v1

    return-void

    .line 35
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0

    .line 41
    :catch_27
    move-exception v0

    goto :goto_1c
.end method

.method public static declared-synchronized setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, p2, p3, v1}, Lcom/mob/MobSDK;->setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 98
    monitor-exit v0

    return-void

    .line 97
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    const-class v6, Lcom/mob/MobSDK;

    monitor-enter v6

    :try_start_3
    new-instance v0, Lcom/mob/MobSDK$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mob/MobSDK$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mob/MobUser;->a(Lcom/mob/MobUser$OnUserGotListener;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 111
    monitor-exit v6

    return-void

    .line 102
    :catchall_12
    move-exception v0

    monitor-exit v6

    throw v0
.end method
