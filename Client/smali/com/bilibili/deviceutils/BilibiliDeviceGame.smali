.class public Lcom/bilibili/deviceutils/BilibiliDeviceGame;
.super Ljava/lang/Object;


# static fields
.field private static app_id:Ljava/lang/String;

.field public static bsGameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static buvid_local:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

.field private static isFirst:Z

.field private static isInited:Z

.field private static mid:Ljava/lang/String;

.field private static sdkver:Ljava/lang/String;

.field private static udid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->isFirst:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->isInited:Z

    const-string v0, ""

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->sdkver:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    sput-boolean p0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->isFirst:Z

    return p0
.end method

.method static synthetic access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;
    .registers 1

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    return-object v0
.end method

.method public static getAllBsGamDevice()V
    .registers 2

    invoke-static {}, Lcom/bilibili/deviceutils/utils/ThreadManager;->getInstance()Lcom/bilibili/deviceutils/utils/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/utils/ThreadManager;->startThread()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bilibili/deviceutils/BilibiliDeviceGame$1;

    invoke-direct {v1}, Lcom/bilibili/deviceutils/BilibiliDeviceGame$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getBsGamDevice()V
    .registers 2

    invoke-static {}, Lcom/bilibili/deviceutils/utils/ThreadManager;->getInstance()Lcom/bilibili/deviceutils/utils/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/utils/ThreadManager;->startThread()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bilibili/deviceutils/BilibiliDeviceGame$2;

    invoke-direct {v1}, Lcom/bilibili/deviceutils/BilibiliDeviceGame$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getBsGameDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->isFirst:Z

    if-eqz v0, :cond_36

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "app_id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "buvid_local"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "udid"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "mid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "sdkver"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->getAllBsGamDevice()V

    :goto_33
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    return-object v0

    :cond_36
    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->getBsGamDevice()V

    goto :goto_33
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    sget-boolean v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->isInited:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sput-object p0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/bilibili/deviceutils/BilibiliDevice;->initEntry(Landroid/content/Context;)V

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->context:Landroid/content/Context;

    const-string v1, "fts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bilibili/deviceutils/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->isInited:Z

    invoke-static {p1, p2, p3, p4, p5}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->getBsGameDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    goto :goto_4
.end method
