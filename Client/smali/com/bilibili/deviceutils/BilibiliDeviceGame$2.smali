.class final Lcom/bilibili/deviceutils/BilibiliDeviceGame$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/deviceutils/BilibiliDeviceGame;->getBsGamDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    if-eqz v0, :cond_53

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "t"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsSysTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "network"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "brightness"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsBrightness()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "cpuFreq"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsCpuFreq()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBatteryLevel()Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    :cond_53
    :goto_53
    return-void

    :catch_54
    move-exception v0

    goto :goto_53
.end method
