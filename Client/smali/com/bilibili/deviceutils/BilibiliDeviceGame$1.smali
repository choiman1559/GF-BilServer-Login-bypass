.class final Lcom/bilibili/deviceutils/BilibiliDeviceGame$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/deviceutils/BilibiliDeviceGame;->getAllBsGamDevice()V
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

    if-eqz v0, :cond_3cf

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$002(Z)Z

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "battery_level"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBatteryLevel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "app_version"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppVn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "app_version_code"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppVc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "chid"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "fts"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getFts()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "frist"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->isFirst()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "proc"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "net"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getNet()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "band"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBand()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "osver"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getOsVer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string v1, "cpuCount"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsCpuCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "model"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getModle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "brand"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "screen"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getScreenDensityInfo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "cpuModel"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    const-string v3, "cpuModel"

    invoke-virtual {v2, v3}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsCPUInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "btmac"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBlueToothMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "boot"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsBoot()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "emu"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsEmu()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "sensor"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsSensors()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "oid"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSimOperator()Ljava/lang/String;

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

    const-string v1, "mem"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsTotalMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "cpuVendor"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    const-string v3, "cpuVendor"

    invoke-virtual {v2, v3}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsCPUInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "sim"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsSimState()Ljava/lang/String;

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

    const-string v1, "props"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getProp()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "sys"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBuild()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "wifimac"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getWifiMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "adid"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAndroId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "os"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getOs()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "imei"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "cell"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCellId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "imsi"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "iccid"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getICCID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "camcnt"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsCamcnt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "campx"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCampx()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "totalSpace"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsTotalStorage()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "axposed"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getXpose()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "maps"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getMaps()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "files"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getfile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "virtual"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getvirtual()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "virtualproc"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getvirtualProc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "gadid"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getGadid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "glimit"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getGlimit()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "apps"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppList()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "guid"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "uid"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "root"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsIsRoot()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "camzoom"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCamzoom()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "camlight"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCamLight()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "serial"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "pkg_name"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppPN()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "screen_inch"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getScreenPhysicSize()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "time_zone"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "lang"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "kernel_ver"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getKernelVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "dp"

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getDensityInfo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "oaid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "aaid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "vaid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->access$100()Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getOaid()V
    :try_end_3cf
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3cf} :catch_3d0

    :cond_3cf
    :goto_3cf
    return-void

    :catch_3d0
    move-exception v0

    goto :goto_3cf
.end method
