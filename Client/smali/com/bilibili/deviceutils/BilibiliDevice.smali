.class public Lcom/bilibili/deviceutils/BilibiliDevice;
.super Ljava/lang/Object;


# static fields
.field private static final DEVICE_HANDLE:I = 0x1

.field public static aaid:Ljava/lang/String;

.field private static app_id:Ljava/lang/String;

.field private static app_key:Ljava/lang/String;

.field private static commonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static deviceMessagHandle:Landroid/os/Handler;

.field private static deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

.field private static deviceUtils:Lcom/bilibili/deviceutils/BilibiliDevice;

.field private static intMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static isInitEntry:Z

.field private static isInited:Z

.field private static mContext:Landroid/content/Context;

.field private static final mLock:Ljava/lang/Object;

.field private static merchant_ids:Ljava/lang/String;

.field public static oaid:Ljava/lang/String;

.field public static sdkVer:Ljava/lang/String;

.field private static server_id:Ljava/lang/String;

.field public static udid:Ljava/lang/String;

.field public static vaid:Ljava/lang/String;


# instance fields
.field private callBackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private isDebug:Z

.field private reciever:Lcom/bilibili/deviceutils/BatterReciever;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bilibili/deviceutils/BilibiliDevice;->isInitEntry:Z

    sput-boolean v0, Lcom/bilibili/deviceutils/BilibiliDevice;->isInited:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->commonMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->intMap:Ljava/util/Map;

    const-string v0, ""

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->oaid:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->sdkVer:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->udid:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->aaid:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->vaid:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/deviceutils/BilibiliDevice;->isDebug:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bilibili/deviceutils/BilibiliDevice;->callBackMap:Ljava/util/Map;

    new-instance v0, Lcom/bilibili/deviceutils/BatterReciever;

    invoke-direct {v0}, Lcom/bilibili/deviceutils/BatterReciever;-><init>()V

    iput-object v0, p0, Lcom/bilibili/deviceutils/BilibiliDevice;->reciever:Lcom/bilibili/deviceutils/BatterReciever;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/deviceutils/BilibiliDevice;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getDeviceInfoThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceMessagHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/deviceutils/BilibiliDevice;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/deviceutils/BilibiliDevice;->callBackMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->intMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->commonMap:Ljava/util/Map;

    return-object v0
.end method

.method private createHandle()V
    .registers 2

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceMessagHandle:Landroid/os/Handler;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bilibili/deviceutils/BilibiliDevice$2;

    invoke-direct {v0, p0}, Lcom/bilibili/deviceutils/BilibiliDevice$2;-><init>(Lcom/bilibili/deviceutils/BilibiliDevice;)V

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceMessagHandle:Landroid/os/Handler;

    :cond_b
    return-void
.end method

.method private getAllDeviceInfo(I)V
    .registers 3

    invoke-direct {p0}, Lcom/bilibili/deviceutils/BilibiliDevice;->getAllDeviceInfoType()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getDeviceInfo(Ljava/util/List;I)V

    return-void
.end method

.method private getAllDeviceInfoType()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "broad"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "brand"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "host"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "device"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "manufacturer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "pf_ver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "os"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "incremental"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "code_name"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "model"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "osapi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "sensor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "camzoom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "camCnt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cam_light"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cam_px"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cam_pa"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "iso"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "dp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cpu_info"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "abis"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cpu_cnt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cpu_freq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "user_agent"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "oa_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "icc_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "gad_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "bt_mac"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mac"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "serial"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "build_time"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "brighiness"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "available_system"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "available_sm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "sd_memory"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "total_storage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "total_memory"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "net_type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "operator"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "sim_state"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ssid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "bssid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "wifi_list"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "orientation"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "boot_time "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "times_tamp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "appName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "app_code"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "app_ver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "install_time"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "pkg_name"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "input"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "sign"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "is_debug"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "battery_health"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "battery_level"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "battery_temp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "loc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "local_ip"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "is_axposed"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "is_emu"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "is_root"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "imei"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "bid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "sdkver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "chid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "fts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "frist"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "net"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "band"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "emu"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cpuVendor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cell"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "imsi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "maps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "files"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "virtual"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "virtualproc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "apps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "guid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "uid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "udid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "vaid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "aaid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "screen_inch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "kernel_ver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "time_zone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "lang"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getDeviceInfo(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/bilibili/deviceutils/utils/ThreadManager;->getInstance()Lcom/bilibili/deviceutils/utils/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/utils/ThreadManager;->startThread()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bilibili/deviceutils/BilibiliDevice$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bilibili/deviceutils/BilibiliDevice$1;-><init>(Lcom/bilibili/deviceutils/BilibiliDevice;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getDeviceInfoThread(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    if-nez v0, :cond_d

    new-instance v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    :cond_d
    const-string v0, ""

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_d1c

    :cond_17
    :goto_17
    packed-switch v1, :pswitch_data_e6e

    const-string v0, "unknown"

    :goto_1c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v0, "unknown"

    :cond_24
    return-object v0

    :sswitch_25
    const-string v2, "chid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x0

    goto :goto_17

    :sswitch_2f
    const-string v2, "fts"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x1

    goto :goto_17

    :sswitch_39
    const-string v2, "frist"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x2

    goto :goto_17

    :sswitch_43
    const-string v2, "net"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x3

    goto :goto_17

    :sswitch_4d
    const-string v2, "band"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x4

    goto :goto_17

    :sswitch_57
    const-string v2, "cell"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x5

    goto :goto_17

    :sswitch_61
    const-string v2, "maps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x6

    goto :goto_17

    :sswitch_6b
    const-string v2, "files"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x7

    goto :goto_17

    :sswitch_75
    const-string v2, "virtual"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x8

    goto :goto_17

    :sswitch_80
    const-string v2, "virtualproc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x9

    goto :goto_17

    :sswitch_8b
    const-string v2, "apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0xa

    goto :goto_17

    :sswitch_96
    const-string v2, "guid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0xb

    goto/16 :goto_17

    :sswitch_a2
    const-string v2, "uid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0xc

    goto/16 :goto_17

    :sswitch_ae
    const-string v2, "screen_inch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0xd

    goto/16 :goto_17

    :sswitch_ba
    const-string v2, "kernel_ver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0xe

    goto/16 :goto_17

    :sswitch_c6
    const-string v2, "time_zone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0xf

    goto/16 :goto_17

    :sswitch_d2
    const-string v2, "lang"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x10

    goto/16 :goto_17

    :sswitch_de
    const-string v2, "cpuVendor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x11

    goto/16 :goto_17

    :sswitch_ea
    const-string v2, "bid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x12

    goto/16 :goto_17

    :sswitch_f6
    const-string v2, "imei"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x13

    goto/16 :goto_17

    :sswitch_102
    const-string v2, "oa_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x14

    goto/16 :goto_17

    :sswitch_10e
    const-string v2, "android_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x15

    goto/16 :goto_17

    :sswitch_11a
    const-string v2, "icc_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x16

    goto/16 :goto_17

    :sswitch_126
    const-string v2, "gad_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x17

    goto/16 :goto_17

    :sswitch_132
    const-string v2, "os"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x18

    goto/16 :goto_17

    :sswitch_13e
    const-string v2, "pf_ver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x19

    goto/16 :goto_17

    :sswitch_14a
    const-string v2, "display_name"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x1a

    goto/16 :goto_17

    :sswitch_156
    const-string v2, "mac"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x1b

    goto/16 :goto_17

    :sswitch_162
    const-string v2, "device"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x1c

    goto/16 :goto_17

    :sswitch_16e
    const-string v2, "incremental"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x1d

    goto/16 :goto_17

    :sswitch_17a
    const-string v2, "code_name"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x1e

    goto/16 :goto_17

    :sswitch_186
    const-string v2, "serial"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x1f

    goto/16 :goto_17

    :sswitch_192
    const-string v2, "manufacturer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x20

    goto/16 :goto_17

    :sswitch_19e
    const-string v2, "broad"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x21

    goto/16 :goto_17

    :sswitch_1aa
    const-string v2, "brand"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x22

    goto/16 :goto_17

    :sswitch_1b6
    const-string v2, "host"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x23

    goto/16 :goto_17

    :sswitch_1c2
    const-string v2, "model"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x24

    goto/16 :goto_17

    :sswitch_1ce
    const-string v2, "osapi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x25

    goto/16 :goto_17

    :sswitch_1da
    const-string v2, "build_time"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x26

    goto/16 :goto_17

    :sswitch_1e6
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x27

    goto/16 :goto_17

    :sswitch_1f2
    const-string v2, "camCnt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x28

    goto/16 :goto_17

    :sswitch_1fe
    const-string v2, "camzoom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x29

    goto/16 :goto_17

    :sswitch_20a
    const-string v2, "cam_light"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x2a

    goto/16 :goto_17

    :sswitch_216
    const-string v2, "cam_px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x2b

    goto/16 :goto_17

    :sswitch_222
    const-string v2, "cam_pa"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x2c

    goto/16 :goto_17

    :sswitch_22e
    const-string v2, "brighiness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x2d

    goto/16 :goto_17

    :sswitch_23a
    const-string v2, "available_system"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x2e

    goto/16 :goto_17

    :sswitch_246
    const-string v2, "available_sm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x2f

    goto/16 :goto_17

    :sswitch_252
    const-string v2, "sd_memory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x30

    goto/16 :goto_17

    :sswitch_25e
    const-string v2, "total_storage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x31

    goto/16 :goto_17

    :sswitch_26a
    const-string v2, "total_memory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x32

    goto/16 :goto_17

    :sswitch_276
    const-string v2, "dp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x33

    goto/16 :goto_17

    :sswitch_282
    const-string v2, "cpu_info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x34

    goto/16 :goto_17

    :sswitch_28e
    const-string v2, "abis"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x35

    goto/16 :goto_17

    :sswitch_29a
    const-string v2, "cpu_freq"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x36

    goto/16 :goto_17

    :sswitch_2a6
    const-string v2, "cpu_cnt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x37

    goto/16 :goto_17

    :sswitch_2b2
    const-string v2, "net_type"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x38

    goto/16 :goto_17

    :sswitch_2be
    const-string v2, "operator"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x39

    goto/16 :goto_17

    :sswitch_2ca
    const-string v2, "sim_state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x3a

    goto/16 :goto_17

    :sswitch_2d6
    const-string v2, "ssid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x3b

    goto/16 :goto_17

    :sswitch_2e2
    const-string v2, "bssid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x3c

    goto/16 :goto_17

    :sswitch_2ee
    const-string v2, "wifi_list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x3d

    goto/16 :goto_17

    :sswitch_2fa
    const-string v2, "appName"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x3e

    goto/16 :goto_17

    :sswitch_306
    const-string v2, "app_code"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x3f

    goto/16 :goto_17

    :sswitch_312
    const-string v2, "app_ver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x40

    goto/16 :goto_17

    :sswitch_31e
    const-string v2, "install_time"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x41

    goto/16 :goto_17

    :sswitch_32a
    const-string v2, "pkg_name"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x42

    goto/16 :goto_17

    :sswitch_336
    const-string v2, "user_agent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x43

    goto/16 :goto_17

    :sswitch_342
    const-string v2, "input"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x44

    goto/16 :goto_17

    :sswitch_34e
    const-string v2, "sign"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x45

    goto/16 :goto_17

    :sswitch_35a
    const-string v2, "boot_time "

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x46

    goto/16 :goto_17

    :sswitch_366
    const-string v2, "times_tamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x47

    goto/16 :goto_17

    :sswitch_372
    const-string v2, "bt_mac"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x48

    goto/16 :goto_17

    :sswitch_37e
    const-string v2, "orientation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x49

    goto/16 :goto_17

    :sswitch_38a
    const-string v2, "iso"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x4a

    goto/16 :goto_17

    :sswitch_396
    const-string v2, "battery_temp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x4b

    goto/16 :goto_17

    :sswitch_3a2
    const-string v2, "battery_level"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x4c

    goto/16 :goto_17

    :sswitch_3ae
    const-string v2, "battery_health"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x4d

    goto/16 :goto_17

    :sswitch_3ba
    const-string v2, "local_ip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x4e

    goto/16 :goto_17

    :sswitch_3c6
    const-string v2, "loc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x4f

    goto/16 :goto_17

    :sswitch_3d2
    const-string v2, "is_root"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x50

    goto/16 :goto_17

    :sswitch_3de
    const-string v2, "is_emu"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x51

    goto/16 :goto_17

    :sswitch_3ea
    const-string v2, "is_axposed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x52

    goto/16 :goto_17

    :sswitch_3f6
    const-string v2, "is_debug"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x53

    goto/16 :goto_17

    :pswitch_402
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41d

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getChannelName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_41d
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_425
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getFts()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_431
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->isFirst()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_43d
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_458

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getNet()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_458
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_460
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47b

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBand()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_47b
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_483
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49e

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCellId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_49e
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_4a6
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c1

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getMaps()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_4c1
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_4c9
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e4

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getfile()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_4e4
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_4ec
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_507

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getvirtual()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_507
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_50f
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52a

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getvirtualProc()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_52a
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_532
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54d

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppList()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_54d
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_555
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_570

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getGuid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_570
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_578
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_593

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getUid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_593
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_59b
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b6

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getScreenPhysicSize()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_5b6
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_5be
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d9

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getKernelVersion()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_5d9
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_5e1
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5fc

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_5fc
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_604
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61f

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getLang()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_61f
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_627
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_644

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    const-string v1, "cpuVendor"

    invoke-virtual {v0, v1}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsCPUInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_644
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_64c
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_667

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_667
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_66f
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68a

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_68a
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_692
    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6ae

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v1}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getOaid()V

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/bilibili/deviceutils/BilibiliDevice;->oaid:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v2}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_6ae
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_6b6
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d1

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAndroId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_6d1
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_6d9
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getICCID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6e5

    const-string v0, ""

    goto/16 :goto_1c

    :cond_6e5
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getICCID()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_6ed
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getGadid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6f9

    const-string v0, ""

    goto/16 :goto_1c

    :cond_6f9
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getGadid()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_701
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71c

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getOs()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_71c
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_724
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73f

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getOsVer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_73f
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_747
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_762

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_762
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_76a
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_786

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_793

    :cond_786
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_793
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_79b
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b6

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getDevice()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_7b6
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_7be
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d7

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBuildIt()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_7d7
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_7df
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7f8

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCodeName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_7f8
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_800
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSerial()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_80c

    const-string v0, ""

    goto/16 :goto_1c

    :cond_80c
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSerial()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_814
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82d

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_82d
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_835
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_84e

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBoard()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_84e
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_856
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_86f

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBrand()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_86f
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_877
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_890

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getHost()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_890
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_898
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8b1

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getModle()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_8b1
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_8b9
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8d2

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getOsApi()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_8d2
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_8da
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f3

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBuildTime()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_8f3
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_8fb
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_914

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSensors()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_914
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_91c
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_935

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCamcnt()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_935
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_93d
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_956

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCamzoom()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_956
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_95e
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_977

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCamLight()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_977
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_97f
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_998

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCampx()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_998
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_9a0
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9b9

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCampa()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_9b9
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_9c1
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBrightness()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9cd

    const-string v0, ""

    goto/16 :goto_1c

    :cond_9cd
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBrightness()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_9d5
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAvailableSystem()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9e1

    const-string v0, ""

    goto/16 :goto_1c

    :cond_9e1
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAvailableSystem()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_9e9
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAvailableSM()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9f5

    const-string v0, ""

    goto/16 :goto_1c

    :cond_9f5
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAvailableSM()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_9fd
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSdMemory()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a09

    const-string v0, ""

    goto/16 :goto_1c

    :cond_a09
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSdMemory()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_a11
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getTotalStorage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a1d

    const-string v0, ""

    goto/16 :goto_1c

    :cond_a1d
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getTotalStorage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_a25
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getTotalMemory()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a31

    const-string v0, ""

    goto/16 :goto_1c

    :cond_a31
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getTotalMemory()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_a39
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a52

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getDensityInfo()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_a52
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_a5a
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a73

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCPUInfo()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_a73
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_a7b
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a94

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCPU_ABIS()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_a94
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_a9c
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ab5

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCpuFreq()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_ab5
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_abd
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ad6

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getCpuCount()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_ad6
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_ade
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_aea

    const-string v0, ""

    goto/16 :goto_1c

    :cond_aea
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_af2
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_afe

    const-string v0, ""

    goto/16 :goto_1c

    :cond_afe
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_b06
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSimState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b12

    const-string v0, ""

    goto/16 :goto_1c

    :cond_b12
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSimState()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_b1a
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSsid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b26

    const-string v0, ""

    goto/16 :goto_1c

    :cond_b26
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSsid()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_b2e
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBssid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b3a

    const-string v0, ""

    goto/16 :goto_1c

    :cond_b3a
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBssid()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_b42
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getWifiList()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b4e

    const-string v0, ""

    goto/16 :goto_1c

    :cond_b4e
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getWifiList()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_b56
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b62

    const-string v0, ""

    goto/16 :goto_1c

    :cond_b62
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_b6a
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppVc()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b76

    const-string v0, ""

    goto/16 :goto_1c

    :cond_b76
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppVc()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_b7e
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppVn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b8a

    const-string v0, ""

    goto/16 :goto_1c

    :cond_b8a
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppVn()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_b92
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppIT()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b9e

    const-string v0, ""

    goto/16 :goto_1c

    :cond_b9e
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppIT()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_ba6
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppPN()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_bb2

    const-string v0, ""

    goto/16 :goto_1c

    :cond_bb2
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppPN()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_bba
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd3

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_bd3
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_bdb
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getInput()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_be7

    const-string v0, ""

    goto/16 :goto_1c

    :cond_be7
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getInput()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_bef
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSigndn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_bfb

    const-string v0, ""

    goto/16 :goto_1c

    :cond_bfb
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSigndn()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_c03
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBoot()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c0f

    const-string v0, ""

    goto/16 :goto_1c

    :cond_c0f
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBoot()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_c17
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSysTime()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c23

    const-string v0, ""

    goto/16 :goto_1c

    :cond_c23
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSysTime()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_c2b
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBlueToothMac()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c37

    const-string v0, ""

    goto/16 :goto_1c

    :cond_c37
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBlueToothMac()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_c3f
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getOrientation()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c4b

    const-string v0, ""

    goto/16 :goto_1c

    :cond_c4b
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getOrientation()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_c53
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c5f

    const-string v0, ""

    goto/16 :goto_1c

    :cond_c5f
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_c67
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBatteryTemp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c73

    const-string v0, ""

    goto/16 :goto_1c

    :cond_c73
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBatteryTemp()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_c7b
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBatteryLevel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c87

    const-string v0, ""

    goto/16 :goto_1c

    :cond_c87
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBatteryLevel()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_c8f
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBatteryHealt()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c9b

    const-string v0, ""

    goto/16 :goto_1c

    :cond_c9b
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBatteryHealt()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_ca3
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getLocalIp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_caf

    const-string v0, ""

    goto/16 :goto_1c

    :cond_caf
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getLocalIp()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_cb7
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getLocation()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_cc3

    const-string v0, ""

    goto/16 :goto_1c

    :cond_cc3
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getLocation()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_ccb
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getIsRoot()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_cd7

    const-string v0, ""

    goto/16 :goto_1c

    :cond_cd7
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getIsRoot()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_cdf
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsEmu()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ceb

    const-string v0, ""

    goto/16 :goto_1c

    :cond_ceb
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBsEmu()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_cf3
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAxposed()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_cff

    const-string v0, ""

    goto/16 :goto_1c

    :cond_cff
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAxposed()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_d07
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->isEnableADB()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d13

    const-string v0, ""

    goto/16 :goto_1c

    :cond_d13
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->isEnableADB()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    nop

    :sswitch_data_d1c
    .sparse-switch
        -0x7561dc2f -> :sswitch_192
        -0x7148caf0 -> :sswitch_de
        -0x7019e151 -> :sswitch_252
        -0x64c4f13a -> :sswitch_396
        -0x5bcd2732 -> :sswitch_3ae
        -0x55cd0a30 -> :sswitch_37e
        -0x5235981e -> :sswitch_372
        -0x5186bce6 -> :sswitch_1f2
        -0x5186539f -> :sswitch_222
        -0x51865388 -> :sswitch_216
        -0x4f94e1aa -> :sswitch_162
        -0x4ab70950 -> :sswitch_126
        -0x47319d6f -> :sswitch_11a
        -0x4651dfc8 -> :sswitch_3de
        -0x432fce63 -> :sswitch_17a
        -0x3b16e626 -> :sswitch_13e
        -0x3b0ebb1f -> :sswitch_80
        -0x35ffac46 -> :sswitch_1e6
        -0x35fe020c -> :sswitch_186
        -0x3449d12e -> :sswitch_3a2
        -0x2f558fb4 -> :sswitch_2fa
        -0x2f4d877b -> :sswitch_312
        -0x1ef03f5a -> :sswitch_20a
        -0x1dd5d75c -> :sswitch_2be
        -0x1c09e602 -> :sswitch_1da
        -0x2963fc3 -> :sswitch_ae
        0xc8c -> :sswitch_276
        0xde4 -> :sswitch_132
        0x17cfd -> :sswitch_ea
        0x18d65 -> :sswitch_2f
        0x19885 -> :sswitch_38a
        0x1a340 -> :sswitch_3c6
        0x1a54f -> :sswitch_156
        0x1a99d -> :sswitch_43
        0x1c450 -> :sswitch_a2
        0x2d950b -> :sswitch_28e
        0x2dca72 -> :sswitch_8b
        0x2e0635 -> :sswitch_4d
        0x2e8962 -> :sswitch_57
        0x2e9440 -> :sswitch_25
        0x309689 -> :sswitch_96
        0x30f5a8 -> :sswitch_1b6
        0x3160c8 -> :sswitch_f6
        0x3291ee -> :sswitch_d2
        0x330697 -> :sswitch_61
        0x35ddbd -> :sswitch_34e
        0x36037b -> :sswitch_2d6
        0x23241de -> :sswitch_c6
        0x59a4b87 -> :sswitch_1aa
        0x59a7e82 -> :sswitch_19e
        0x59b02dd -> :sswitch_2e2
        0x5ceba77 -> :sswitch_6b
        0x5d2c83e -> :sswitch_39
        0x5fb57ca -> :sswitch_342
        0x633fb29 -> :sswitch_1c2
        0x649baa8 -> :sswitch_102
        0x651f1b6 -> :sswitch_1ce
        0x694fefe -> :sswitch_3f6
        0x19f94080 -> :sswitch_25e
        0x1bc91f0b -> :sswitch_75
        0x1de016af -> :sswitch_29a
        0x1de164e5 -> :sswitch_282
        0x1f0f6a5c -> :sswitch_26a
        0x20c82422 -> :sswitch_1fe
        0x260729c6 -> :sswitch_22e
        0x2b17f0eb -> :sswitch_10e
        0x37cd6207 -> :sswitch_3ea
        0x3ac51e52 -> :sswitch_2a6
        0x40b177da -> :sswitch_16e
        0x43efc11e -> :sswitch_32a
        0x4594194b -> :sswitch_306
        0x495ddca1 -> :sswitch_ba
        0x4cfa189c -> :sswitch_2b2
        0x5380df88 -> :sswitch_2ee
        0x604443e8 -> :sswitch_14a
        0x64bc8229 -> :sswitch_366
        0x64c7a729 -> :sswitch_2ca
        0x6f27e065 -> :sswitch_23a
        0x714bd67b -> :sswitch_3ba
        0x724f4d91 -> :sswitch_336
        0x77370790 -> :sswitch_246
        0x79512ef1 -> :sswitch_31e
        0x796f2766 -> :sswitch_35a
        0x7c1bd6d7 -> :sswitch_3d2
    .end sparse-switch

    :pswitch_data_e6e
    .packed-switch 0x0
        :pswitch_402
        :pswitch_425
        :pswitch_431
        :pswitch_43d
        :pswitch_460
        :pswitch_483
        :pswitch_4a6
        :pswitch_4c9
        :pswitch_4ec
        :pswitch_50f
        :pswitch_532
        :pswitch_555
        :pswitch_578
        :pswitch_59b
        :pswitch_5be
        :pswitch_5e1
        :pswitch_604
        :pswitch_627
        :pswitch_64c
        :pswitch_66f
        :pswitch_692
        :pswitch_6b6
        :pswitch_6d9
        :pswitch_6ed
        :pswitch_701
        :pswitch_724
        :pswitch_747
        :pswitch_76a
        :pswitch_79b
        :pswitch_7be
        :pswitch_7df
        :pswitch_800
        :pswitch_814
        :pswitch_835
        :pswitch_856
        :pswitch_877
        :pswitch_898
        :pswitch_8b9
        :pswitch_8da
        :pswitch_8fb
        :pswitch_91c
        :pswitch_93d
        :pswitch_95e
        :pswitch_97f
        :pswitch_9a0
        :pswitch_9c1
        :pswitch_9d5
        :pswitch_9e9
        :pswitch_9fd
        :pswitch_a11
        :pswitch_a25
        :pswitch_a39
        :pswitch_a5a
        :pswitch_a7b
        :pswitch_a9c
        :pswitch_abd
        :pswitch_ade
        :pswitch_af2
        :pswitch_b06
        :pswitch_b1a
        :pswitch_b2e
        :pswitch_b42
        :pswitch_b56
        :pswitch_b6a
        :pswitch_b7e
        :pswitch_b92
        :pswitch_ba6
        :pswitch_bba
        :pswitch_bdb
        :pswitch_bef
        :pswitch_c03
        :pswitch_c17
        :pswitch_c2b
        :pswitch_c3f
        :pswitch_c53
        :pswitch_c67
        :pswitch_c7b
        :pswitch_c8f
        :pswitch_ca3
        :pswitch_cb7
        :pswitch_ccb
        :pswitch_cdf
        :pswitch_cf3
        :pswitch_d07
    .end packed-switch
.end method

.method public static getInstance()Lcom/bilibili/deviceutils/BilibiliDevice;
    .registers 2

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtils:Lcom/bilibili/deviceutils/BilibiliDevice;

    if-nez v0, :cond_e

    new-instance v0, Lcom/bilibili/deviceutils/BilibiliDevice;

    invoke-direct {v0}, Lcom/bilibili/deviceutils/BilibiliDevice;-><init>()V

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtils:Lcom/bilibili/deviceutils/BilibiliDevice;

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtils:Lcom/bilibili/deviceutils/BilibiliDevice;

    return-object v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private getNoChangeDeviceInfo()V
    .registers 3

    invoke-direct {p0}, Lcom/bilibili/deviceutils/BilibiliDevice;->getNoChangeDeviceInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bilibili/deviceutils/BilibiliDevice;->getDeviceInfo(Ljava/util/List;I)V

    return-void
.end method

.method private getNoChangeDeviceInfoList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "imei"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "broad"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "brand"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "host"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "device"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "manufacturer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "pf_ver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "os"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "incremental"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "code_name"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "model"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "osapi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "sensor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "camzoom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "camCnt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cam_light"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cam_px"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cam_pa"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "iso"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "dp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cpu_info"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "abis"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cpu_cnt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cpu_freq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "user_agent"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getSpValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/bilibili/deviceutils/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static initEntry(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    sget-boolean v0, Lcom/bilibili/deviceutils/BilibiliDevice;->isInitEntry:Z

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/bun/miitmdid/core/JLibrary;->InitEntry(Landroid/content/Context;)Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bilibili/deviceutils/BilibiliDevice;->isInitEntry:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    :cond_a
    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method private putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {p1, p2, p3}, Lcom/bilibili/deviceutils/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c
.end method

.method public static setAaid(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->commonMap:Ljava/util/Map;

    const-string v1, "aaid"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object p0, Lcom/bilibili/deviceutils/BilibiliDevice;->aaid:Ljava/lang/String;

    return-void
.end method

.method protected static setBatterInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->commonMap:Ljava/util/Map;

    const-string v1, "battery_health"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->commonMap:Ljava/util/Map;

    const-string v1, "battery_level"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->commonMap:Ljava/util/Map;

    const-string v1, "battery_temp"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    if-eqz v0, :cond_20

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "battery_level"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-void
.end method

.method public static setOaid(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->commonMap:Ljava/util/Map;

    const-string v1, "oa_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object p0, Lcom/bilibili/deviceutils/BilibiliDevice;->oaid:Ljava/lang/String;

    return-void
.end method

.method public static setVaid(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->commonMap:Ljava/util/Map;

    const-string v1, "vaid"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object p0, Lcom/bilibili/deviceutils/BilibiliDevice;->vaid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceInfoAsync(Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;)V
    .registers 4

    iget-object v0, p0, Lcom/bilibili/deviceutils/BilibiliDevice;->callBackMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;->getTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;->getTag()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->getAllDeviceInfo(I)V

    return-void
.end method

.method public varargs getDeviceInfoAsync(Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;[Ljava/lang/String;)V
    .registers 7

    if-nez p2, :cond_12

    sget-object v0, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->NULL:Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->getExecptionCode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->NULL:Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    invoke-virtual {v1}, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->getExecptionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/bilibili/deviceutils/BilibiliDevice;->callBackMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;->getTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v2, :cond_30

    aget-object v3, p2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_30
    invoke-virtual {p1}, Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;->getTag()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->getDeviceInfo(Ljava/util/List;I)V

    goto :goto_11
.end method

.method public init(Landroid/app/Application;)V
    .registers 4

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    sput-object p1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bilibili/deviceutils/BilibiliDevice;->reciever:Lcom/bilibili/deviceutils/BatterReciever;

    invoke-virtual {p1, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v0, Lcom/bilibili/deviceutils/BilibiliDevice;->isInited:Z

    if-eqz v0, :cond_1b

    :goto_1a
    return-void

    :cond_1b
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bilibili/deviceutils/BilibiliDevice;->isInited:Z

    new-instance v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    sget-object v1, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtilIm:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtils:Lcom/bilibili/deviceutils/BilibiliDevice;

    invoke-direct {v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->createHandle()V

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->deviceUtils:Lcom/bilibili/deviceutils/BilibiliDevice;

    invoke-direct {v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->getNoChangeDeviceInfo()V

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->initEntry(Landroid/content/Context;)V

    goto :goto_1a
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p2, ""

    :cond_8
    sput-object p2, Lcom/bilibili/deviceutils/BilibiliDevice;->sdkVer:Ljava/lang/String;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->intMap:Ljava/util/Map;

    const-string v1, "sdkVer"

    sget-object v2, Lcom/bilibili/deviceutils/BilibiliDevice;->sdkVer:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->intMap:Ljava/util/Map;

    const-string v1, "udid"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/bilibili/deviceutils/BilibiliDevice;->init(Landroid/app/Application;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->commonMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setValues(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->commonMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
