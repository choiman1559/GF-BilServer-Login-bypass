.class public Lcom/bilibili/track/storage/presistent/config/PersistentLoader;
.super Ljava/lang/Object;


# static fields
.field private static context:Landroid/content/Context;

.field private static volatile instance:Lcom/bilibili/track/storage/presistent/config/PersistentLoader;

.field private static storedPreferences:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/bilibili/track/storage/presistent/config/PersistentLoader;->context:Landroid/content/Context;

    new-instance v0, Lcom/bilibili/track/storage/presistent/config/SharedPreferencesLoader;

    invoke-direct {v0}, Lcom/bilibili/track/storage/presistent/config/SharedPreferencesLoader;-><init>()V

    const-string v1, "com.bilibili.track"

    const-string v1, "com.bilibili.track"

    invoke-virtual {v0, p1, v1}, Lcom/bilibili/track/storage/presistent/config/SharedPreferencesLoader;->loadPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    sput-object v0, Lcom/bilibili/track/storage/presistent/config/PersistentLoader;->storedPreferences:Ljava/util/concurrent/Future;

    return-void
.end method

.method public static initLoader(Landroid/content/Context;)Lcom/bilibili/track/storage/presistent/config/PersistentLoader;
    .registers 2

    sget-object v0, Lcom/bilibili/track/storage/presistent/config/PersistentLoader;->instance:Lcom/bilibili/track/storage/presistent/config/PersistentLoader;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bilibili/track/storage/presistent/config/PersistentLoader;

    invoke-direct {v0, p0}, Lcom/bilibili/track/storage/presistent/config/PersistentLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bilibili/track/storage/presistent/config/PersistentLoader;->instance:Lcom/bilibili/track/storage/presistent/config/PersistentLoader;

    :cond_b
    sget-object v0, Lcom/bilibili/track/storage/presistent/config/PersistentLoader;->instance:Lcom/bilibili/track/storage/presistent/config/PersistentLoader;

    return-object v0
.end method

.method public static loadPersistent(Ljava/lang/String;)Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/bilibili/track/storage/presistent/config/PersistentLoader;->instance:Lcom/bilibili/track/storage/presistent/config/PersistentLoader;

    if-nez v1, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you should call \'PersistentLoader.initLoader(Context)\' first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_13
    return-object v0

    :cond_14
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_44

    :cond_1c
    :goto_1c
    packed-switch v1, :pswitch_data_4e

    goto :goto_13

    :pswitch_20
    new-instance v0, Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;

    sget-object v1, Lcom/bilibili/track/storage/presistent/config/PersistentLoader;->storedPreferences:Ljava/util/concurrent/Future;

    invoke-direct {v0, v1}, Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;-><init>(Ljava/util/concurrent/Future;)V

    goto :goto_13

    :sswitch_28
    const-string v2, "TRACK_CONFIG"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x0

    goto :goto_1c

    :sswitch_32
    const-string v2, "LOGINID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x1

    goto :goto_1c

    :pswitch_3c
    new-instance v0, Lcom/bilibili/track/storage/presistent/LoginId;

    sget-object v1, Lcom/bilibili/track/storage/presistent/config/PersistentLoader;->storedPreferences:Ljava/util/concurrent/Future;

    invoke-direct {v0, v1}, Lcom/bilibili/track/storage/presistent/LoginId;-><init>(Ljava/util/concurrent/Future;)V

    goto :goto_13

    :sswitch_data_44
    .sparse-switch
        -0x6cab1b2a -> :sswitch_28
        0x3f335224 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_20
        :pswitch_3c
    .end packed-switch
.end method
