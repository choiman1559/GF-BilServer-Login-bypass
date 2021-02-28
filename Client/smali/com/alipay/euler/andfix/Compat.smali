.class public Lcom/alipay/euler/andfix/Compat;
.super Ljava/lang/Object;


# static fields
.field public static isChecked:Z

.field public static isSupport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/euler/andfix/Compat;->isChecked:Z

    sput-boolean v0, Lcom/alipay/euler/andfix/Compat;->isSupport:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static inBlackList()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized isSupport()Z
    .registers 2

    const-class v1, Lcom/alipay/euler/andfix/Compat;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/alipay/euler/andfix/Compat;->isChecked:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/alipay/euler/andfix/Compat;->isSupport:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2f

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x1

    :try_start_c
    sput-boolean v0, Lcom/alipay/euler/andfix/Compat;->isChecked:Z

    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isYunOS()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {}, Lcom/alipay/euler/andfix/AndFix;->setup()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isSupportSDKVersion()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/euler/andfix/Compat;->isSupport:Z

    :cond_23
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->inBlackList()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/euler/andfix/Compat;->isSupport:Z

    :cond_2c
    sget-boolean v0, Lcom/alipay/euler/andfix/Compat;->isSupport:Z
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2f

    goto :goto_9

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isSupportSDKVersion()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isYunOS()Z
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_3
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ro.yunos.version"

    aput-object v7, v5, v6

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_51

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_28
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "java.vm.name"

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_35} :catch_57

    :goto_35
    if-eqz v1, :cond_43

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "lemur"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    :cond_43
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    :cond_4f
    move v0, v2

    :goto_50
    return v0

    :catch_51
    move-exception v0

    move-object v0, v4

    :goto_53
    move-object v1, v4

    goto :goto_35

    :cond_55
    move v0, v3

    goto :goto_50

    :catch_57
    move-exception v1

    goto :goto_53
.end method
