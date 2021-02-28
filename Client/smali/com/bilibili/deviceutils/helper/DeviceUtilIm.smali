.class public Lcom/bilibili/deviceutils/helper/DeviceUtilIm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bilibili/deviceutils/interfaces/BasicInfoDeviceInter;
.implements Lcom/bilibili/deviceutils/interfaces/DeviceInter;
.implements Lcom/bilibili/deviceutils/interfaces/DevicePerformanceInter;
.implements Lcom/bilibili/deviceutils/interfaces/RiskDeviceInter;
.implements Lcom/bilibili/deviceutils/interfaces/UserBehaivorInter;
.implements Lcom/bilibili/deviceutils/interfaces/UserInfoDeviceInter;


# static fields
.field public static batterReciever:Lcom/bilibili/deviceutils/BatterReciever;

.field private static mContext:Landroid/content/Context;

.field public static properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private cpufile:Ljava/lang/String;

.field ip:Ljava/lang/String;

.field manager:Landroid/hardware/camera2/CameraManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "os.arch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "gsm.version.baseband"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.build.id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.build.display.id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.product.name"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.product.device"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.product.board"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.product.manufacturer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.product.brand"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.product.model"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.bootloader"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.hardware"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.kernel.qemu"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.serialno"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.build.version.release"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.build.version.incremental"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.build.type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.build.tags"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.build.user"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.build.host"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.debuggable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.build.date.utc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.permission_review_required"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.build.version.base_os"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.build.version.sdk"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.build.version.preview_sdk"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.build.version.codename"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "ro.build.version.all_codenames"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "http.agent"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "net.gprs.local-ip"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "net.dns1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "net.hostname"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    const-string v1, "gsm.sim.state"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bilibiliDeviceUtil"

    iput-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->TAG:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->cpufile:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->ip:Ljava/lang/String;

    sput-object p1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/bilibili/deviceutils/helper/DeviceUtilIm;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->cpufile:Ljava/lang/String;

    return-object p1
.end method

.method private byte2hex([B)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_2f

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    :goto_22
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    goto :goto_22

    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3e

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_3e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decodeVendor(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_60

    :cond_e
    :goto_e
    packed-switch v1, :pswitch_data_7a

    :goto_11
    return-object v0

    :sswitch_12
    const-string v3, "0x41"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x0

    goto :goto_e

    :sswitch_1c
    const-string v3, "0x44"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    goto :goto_e

    :sswitch_26
    const-string v3, "0x4d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x2

    goto :goto_e

    :sswitch_30
    const-string v3, "0x51"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x3

    goto :goto_e

    :sswitch_3a
    const-string v3, "0x56"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x4

    goto :goto_e

    :sswitch_44
    const-string v3, "0x69"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x5

    goto :goto_e

    :pswitch_4e
    const-string v0, "ARM"

    goto :goto_11

    :pswitch_51
    const-string v0, "DEC"

    goto :goto_11

    :pswitch_54
    const-string v0, "Moto"

    goto :goto_11

    :pswitch_57
    const-string v0, "Qualcomm"

    goto :goto_11

    :pswitch_5a
    const-string v0, "Marvell"

    goto :goto_11

    :pswitch_5d
    const-string v0, "Intel"

    goto :goto_11

    :sswitch_data_60
    .sparse-switch
        0x179ac5 -> :sswitch_12
        0x179ac8 -> :sswitch_1c
        0x179ae4 -> :sswitch_30
        0x179ae9 -> :sswitch_3a
        0x179af8 -> :sswitch_26
        0x179b0b -> :sswitch_44
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_51
        :pswitch_54
        :pswitch_57
        :pswitch_5a
        :pswitch_5d
    .end packed-switch
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v1, "unknown"

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_3f

    :try_start_32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "unknown"

    invoke-static {p1, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_42

    move-result-object v0

    :cond_3e
    :goto_3e
    return-object v0

    :catch_3f
    move-exception v0

    move-object v0, v1

    goto :goto_3e

    :catch_42
    move-exception v1

    goto :goto_3e

    :cond_44
    move-object v0, v1

    goto :goto_3e
.end method

.method private hasCupFile()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/thermal/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm$3;

    invoke-direct {v1, p0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm$3;-><init>(Lcom/bilibili/deviceutils/helper/DeviceUtilIm;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_12

    :goto_f
    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->cpufile:Ljava/lang/String;

    return-object v0

    :catch_12
    move-exception v0

    goto :goto_f
.end method

.method private isAirplaneModeOn()Z
    .registers 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_16

    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method


# virtual methods
.method public getAllZoomRatio()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_14

    move-result-object v0

    :cond_13
    :goto_13
    return-object v0

    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method public getAndroId()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const-string v0, ""

    :try_start_2
    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v1

    invoke-static {v1}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_e
.end method

.method public getAppIT()Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const-string v0, "N/A"

    goto :goto_17
.end method

.method public getAppList()Ljava/lang/String;
    .registers 13

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm$2;

    invoke-direct {v1, p0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm$2;-><init>(Lcom/bilibili/deviceutils/helper/DeviceUtilIm;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_94

    const/16 v5, 0x14

    if-ge v1, v5, :cond_94

    add-int/lit8 v1, v1, 0x1

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    iget v8, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-wide v10, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_94
    move v0, v1

    move v1, v0

    goto :goto_2b

    :cond_97
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_6
    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_1e} :catch_20

    move-result-object v0

    :goto_1f
    return-object v0

    :catch_20
    move-exception v0

    const-string v0, ""

    goto :goto_1f
.end method

.method public getAppPN()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVc()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_6
    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_16} :catch_18

    move-result-object v0

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const-string v0, "N/A"

    goto :goto_17
.end method

.method public getAppVn()Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    const-string v0, "N/A"

    goto :goto_13
.end method

.method public getAvailableSM()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableSystem()Ljava/lang/String;
    .registers 6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    mul-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAxposed()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->getInstance()Lcom/bilibili/deviceutils/utils/XposeActivityUtil;

    move-result-object v0

    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->ValidateEnvironment(Landroid/content/Context;)V

    invoke-static {}, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->getInstance()Lcom/bilibili/deviceutils/utils/XposeActivityUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->ismIsXposedInstall()Z

    move-result v1

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->isXposedActive()Z

    move-result v2

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->getmXposedVersionName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_37

    :goto_20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v2, :cond_3a

    const-string v0, "\u5df2\u6fc0\u6d3b"

    :goto_2e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_37
    const-string v0, "\u672a\u5b89\u88c5"

    goto :goto_20

    :cond_3a
    const-string v0, "\u672a\u6fc0\u6d3b"

    goto :goto_2e
.end method

.method public getBand()Ljava/lang/String;
    .registers 2

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryHealt()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryHealth:Ljava/lang/String;

    return-object v0
.end method

.method public getBatteryLevel()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getBatteryTemp()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getBid()Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "imei"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/bilibili/deviceutils/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_17
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v2, "mac"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/bilibili/deviceutils/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2e
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v3, "android_id"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/bilibili/deviceutils/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAndroId()Ljava/lang/String;

    move-result-object v0

    :goto_44
    invoke-static {}, Lcom/bilibili/deviceutils/utils/BidUtils;->getInstance()Lcom/bilibili/deviceutils/utils/BidUtils;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/bilibili/deviceutils/utils/BidUtils;->getBid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4d
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "imei"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/bilibili/deviceutils/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_17

    :cond_5b
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v2, "mac"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/bilibili/deviceutils/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    goto :goto_2e

    :cond_69
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v3, "android_id"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/bilibili/deviceutils/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_44
.end method

.method public getBlueToothMac()Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, ""
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    :cond_e
    const-string v0, ""

    goto :goto_c
.end method

.method public getBoard()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public getBoot()Ljava/lang/String;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_9

    const-string v0, "N/A"

    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public getBootCnt()Ljava/lang/String;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_9

    const-string v0, "N/A"

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "boot_count"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public getBrand()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getBrightness()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_12

    move-result v0

    :goto_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_12
    move-exception v1

    goto :goto_d
.end method

.method public getBsBoot()J
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    return-wide v0

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    goto :goto_8
.end method

.method public getBsBrightness()I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method public getBsCPUInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-string v2, "/proc/cpuinfo"

    const-string v1, ""

    :try_start_5
    invoke-static {v2}, Lcom/bilibili/deviceutils/utils/Bridge;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v2, v0

    :goto_10
    array-length v0, v3

    if-ge v2, v0, :cond_58

    aget-object v0, v3, v2

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_53

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, "cpuModel"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const-string v5, "Processor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    :goto_3d
    return-object v0

    :cond_3e
    const-string v5, "cpuVendor"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    const-string v5, "implementer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-direct {p0, v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->decodeVendor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_51} :catch_57

    move-result-object v0

    goto :goto_3d

    :cond_53
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    :catch_57
    move-exception v0

    :cond_58
    move-object v0, v1

    goto :goto_3d
.end method

.method public getBsCamcnt()I
    .registers 2

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public getBsCpuCount()I
    .registers 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public getBsCpuFreq()J
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/bilibili/deviceutils/utils/CpuInforUtils;->getCurCpuFreq()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/bilibili/deviceutils/utils/CpuInforUtils;->getCurCpuFreq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-wide v0

    :goto_e
    return-wide v0

    :catch_f
    move-exception v0

    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public getBsEmu()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_5
    invoke-direct {p0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->hasCupFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/bilibili/deviceutils/utils/SimulatorUtil;->hasEmFile()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_17
    invoke-virtual {p0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBand()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_26
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_35} :catch_40

    :goto_35
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3a
    :try_start_3a
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_17

    :catch_40
    move-exception v1

    goto :goto_35

    :cond_42
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_47} :catch_40

    goto :goto_26
.end method

.method public getBsIsRoot()I
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "/system/bin/su"

    const-string v2, "/system/xbin/su"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static {v1}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->isExecutable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {v2}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->isExecutable(Ljava/lang/String;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_2a

    move-result v1

    if-nez v1, :cond_16

    :cond_28
    :goto_28
    const/4 v0, 0x0

    goto :goto_16

    :catch_2a
    move-exception v0

    goto :goto_28
.end method

.method public getBsNetworkType()Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "N/A"

    :goto_c
    return-object v0

    :cond_d
    invoke-direct {p0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "OFFLINE"

    goto :goto_c

    :cond_16
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_25

    const-string v0, "N/A"

    goto :goto_c

    :cond_25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_4e

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_4b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v0, "WIFI"

    goto :goto_c

    :cond_41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "CELLULAR"

    goto :goto_c

    :cond_4b
    const-string v0, "N/A"

    goto :goto_c

    :cond_4e
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_5d

    :cond_5a
    const-string v0, "N/A"

    goto :goto_c

    :cond_5d
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_70

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_73

    :cond_70
    const-string v0, "WIFI"

    goto :goto_c

    :cond_73
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_82

    const-string v0, "N/A"

    goto :goto_c

    :cond_82
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_9a

    const-string v0, "N/A"

    goto :goto_c

    :pswitch_8c
    const-string v0, "OTHERNET"

    goto/16 :goto_c

    :pswitch_90
    const-string v0, "CELLULAR"
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_92} :catch_94

    goto/16 :goto_c

    :catch_94
    move-exception v0

    const-string v0, "N/A"

    goto/16 :goto_c

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_90
        :pswitch_8c
        :pswitch_90
    .end packed-switch
.end method

.method public getBsSensors()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_50

    :try_start_b
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_4e

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_46} :catch_47

    goto :goto_20

    :catch_47
    move-exception v0

    move-object v0, v1

    :goto_49
    invoke-static {v0, v2}, Lcom/bilibili/deviceutils/utils/StringUtils;->getJsonString(Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4e
    move-object v0, v1

    goto :goto_49

    :catch_50
    move-exception v1

    goto :goto_49
.end method

.method public getBsSimState()Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    const-string v0, "false"

    :goto_15
    return-object v0

    :cond_16
    const-string v0, "true"
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_15

    :catch_19
    move-exception v0

    :cond_1a
    const-string v0, "false"

    goto :goto_15
.end method

.method public getBsSysTime()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBsTotalMemory()J
    .registers 3

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method

.method public getBsTotalStorage()J
    .registers 5

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getBssid()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/bilibili/deviceutils/helper/WifiType;->BSSID:Lcom/bilibili/deviceutils/helper/WifiType;

    invoke-virtual {v1}, Lcom/bilibili/deviceutils/helper/WifiType;->getWifiType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/utils/DeviceWifiUtils;->getWifiInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuild()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_48

    :try_start_6
    const-string v1, "serial"

    invoke-virtual {p0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "display"

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cpu_abi"

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cpu_abi2"

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hardware"

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fingerprint"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_47} :catch_4b

    :goto_47
    return-object v0

    :catch_48
    move-exception v0

    move-object v0, v1

    goto :goto_47

    :catch_4b
    move-exception v1

    goto :goto_47
.end method

.method public getBuildIt()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildTime()Ljava/lang/String;
    .registers 3

    sget-wide v0, Landroid/os/Build;->TIME:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCPUInfo()Ljava/lang/String;
    .registers 10

    const/4 v5, 0x1

    const/4 v1, 0x2

    const/4 v8, 0x0

    const-string v0, ""

    const-string v2, "/proc/cpuinfo"

    const-string v3, ""

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v8

    const-string v4, ""

    aput-object v4, v3, v5

    :try_start_13
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :goto_29
    array-length v5, v4

    if-ge v1, v5, :cond_4e

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\\s+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x2

    aget-object v1, v1, v6

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_74} :catch_77

    aget-object v0, v3, v8

    :goto_76
    return-object v0

    :catch_77
    move-exception v1

    goto :goto_76
.end method

.method public getCPU_ABIS()Ljava/lang/String;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getCamLight()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "0"

    :goto_10
    return-object v0

    :cond_11
    const-string v0, "1"

    goto :goto_10
.end method

.method public getCamcnt()Ljava/lang/String;
    .registers 2

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCampa()Ljava/lang/String;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_37

    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->manager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_16

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->manager:Landroid/hardware/camera2/CameraManager;

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->manager:Landroid/hardware/camera2/CameraManager;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_37

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->camera2SizeToString([Landroid/util/Size;)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_31} :catch_33

    move-result-object v0

    :goto_32
    return-object v0

    :catch_33
    move-exception v0

    const-string v0, ""

    goto :goto_32

    :cond_37
    :try_start_37
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5d

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v1, v0}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->restSize(Ljava/util/List;I)I

    invoke-static {v1}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->cameraSizeToSting(Ljava/lang/Iterable;)Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_5a} :catch_5c

    move-result-object v0

    goto :goto_32

    :catch_5c
    move-exception v0

    :cond_5d
    const-string v0, ""

    goto :goto_32
.end method

.method public getCampx()Ljava/lang/String;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_58

    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->manager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_16

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->manager:Landroid/hardware/camera2/CameraManager;

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->manager:Landroid/hardware/camera2/CameraManager;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_58

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_52} :catch_54

    move-result-object v0

    :goto_53
    return-object v0

    :catch_54
    move-exception v0

    const-string v0, ""

    goto :goto_53

    :cond_58
    :try_start_58
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a6

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v1, v0}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->restSize(Ljava/util/List;I)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_a0} :catch_a2

    move-result-object v0

    goto :goto_53

    :catch_a2
    move-exception v0

    const-string v0, ""

    goto :goto_53

    :cond_a6
    const-string v0, ""

    goto :goto_53
.end method

.method public getCamzoom()Ljava/lang/String;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_41

    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->manager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_16

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->manager:Landroid/hardware/camera2/CameraManager;

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->manager:Landroid/hardware/camera2/CameraManager;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3b} :catch_3d

    move-result-object v0

    :goto_3c
    return-object v0

    :catch_3d
    move-exception v0

    const-string v0, ""

    goto :goto_3c

    :cond_41
    invoke-virtual {p0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAllZoomRatio()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4a

    const-string v0, "unknown"

    goto :goto_3c

    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c
.end method

.method public getCellId()Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_88

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_7c

    :try_start_1f
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_53

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    const-string v3, "nid"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bid"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v2, "CDMA"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4d} :catch_83

    move-object v0, v1

    :goto_4e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_53
    :try_start_53
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    const-string v3, "lac"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cid"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v2, "GSM"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_7a} :catch_83

    move-object v0, v1

    goto :goto_4e

    :catch_7c
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_7f
    invoke-static {v1}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_4e

    :catch_83
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_7f

    :cond_88
    move-object v0, v2

    goto :goto_4e
.end method

.method public getChannelName()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "channelName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_27

    move-result-object v0

    :cond_1e
    :goto_1e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v0, ""

    :cond_26
    return-object v0

    :catch_27
    move-exception v1

    goto :goto_1e
.end method

.method public getCodeName()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuCount()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCpuFreq()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bilibili/deviceutils/utils/CpuInforUtils;->getMinCpuFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/bilibili/deviceutils/utils/CpuInforUtils;->getMaxCpuFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDensityInfo()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 5

    const-string v1, ""

    :try_start_2
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-object v1

    :cond_d
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_37

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v2, v3, :cond_23

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDevice;->oaid:Ljava/lang/String;

    :goto_21
    move-object v1, v0

    goto :goto_c

    :cond_23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2e

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_2e
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_33

    move-result-object v0

    goto :goto_21

    :catch_33
    move-exception v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_37
    move-object v0, v1

    goto :goto_21
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public getEmu()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/deviceutils/utils/SimulatorUtil;->isSimulator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "0"

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "1"

    goto :goto_a
.end method

.method public getFts()J
    .registers 5

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "fts"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bilibili/deviceutils/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGadid()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getGlimit()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getGmtTimeZone()Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    const-string v0, ""

    goto :goto_14
.end method

.method public getGuid()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    return-object v0
.end method

.method public getICCID()Ljava/lang/String;
    .registers 5

    const-string v1, ""

    :try_start_2
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-object v1

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v0, v2, :cond_45

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    sget-object v2, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_37

    move-object v1, v0

    goto :goto_c

    :cond_37
    if-eqz v2, :cond_45

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    move-object v1, v0

    goto :goto_c

    :cond_45
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_54} :catch_57

    move-result-object v0

    :goto_55
    move-object v1, v0

    goto :goto_c

    :catch_57
    move-exception v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_5b
    move-object v0, v1

    goto :goto_55
.end method

.method public getInput()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    sget-object v3, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19

    :cond_38
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_47

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_47
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4b
    return-object v0

    :cond_4c
    const-string v0, "N/A"

    goto :goto_4b
.end method

.method public getIp()Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm$1;

    invoke-direct {v1, p0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm$1;-><init>(Lcom/bilibili/deviceutils/helper/DeviceUtilIm;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1d

    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->ip:Ljava/lang/String;

    goto :goto_c

    :catch_1d
    move-exception v0

    const-string v0, "unknown"

    goto :goto_c
.end method

.method public getIsRoot()Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "/system/bin/su"

    const-string v1, "/system/xbin/su"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {v0}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->isExecutable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "1"

    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {v1}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->isExecutable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "1"
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_17

    :catch_2c
    move-exception v0

    const-string v0, "0"

    goto :goto_17

    :cond_30
    const-string v0, "0"

    goto :goto_17
.end method

.method public getKernelVersion()Ljava/lang/String;
    .registers 7

    const-string v0, ""

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_92

    :try_start_8
    new-instance v3, Ljava/io/FileInputStream;

    const-string v1, "/proc/version"

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_f} :catch_39

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x2000

    invoke-direct {v4, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const-string v1, ""

    const-string v2, ""

    move-object v2, v1

    :goto_20
    :try_start_20
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_36} :catch_70
    .catchall {:try_start_20 .. :try_end_36} :catchall_80

    move-result-object v1

    move-object v2, v1

    goto :goto_20

    :catch_39
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_3d
    :goto_3d
    return-object v0

    :cond_3e
    :try_start_3e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_44} :catch_6b

    :goto_44
    :try_start_44
    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, "version "

    const-string v1, "version "

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v3, "version "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_44 .. :try_end_69} :catch_8d

    move-result-object v0

    goto :goto_3d

    :catch_6b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    :catch_70
    move-exception v1

    :try_start_71
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_80

    :try_start_74
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7a} :catch_7b

    goto :goto_44

    :catch_7b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    :catchall_80
    move-exception v0

    :try_start_81
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_87} :catch_88

    :goto_87
    throw v0

    :catch_88
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    :catch_8d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_3d

    :cond_92
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d
.end method

.method public getLang()Ljava/lang/String;
    .registers 2

    :try_start_0
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    const-string v0, ""

    goto :goto_14
.end method

.method public getLocalIp()Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, ""

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_41
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_41} :catch_43

    move-result-object v0

    :goto_42
    return-object v0

    :catch_43
    move-exception v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_42
.end method

.method public getLocation()Ljava/lang/String;
    .registers 5

    const-string v0, "unknown"

    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, v2}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :try_start_c
    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bilibili/deviceutils/helper/LocationUtils;->initLocation(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/bilibili/deviceutils/helper/LocationUtils;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/bilibili/deviceutils/helper/LocationUtils;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2b} :catch_2d

    move-result-object v0

    :cond_2c
    :goto_2c
    return-object v0

    :catch_2d
    move-exception v1

    goto :goto_2c
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getMaps()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/deviceutils/utils/Hook;->getHook(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "substrate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModle()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getNet()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->byte2hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_48} :catch_49

    goto :goto_9

    :catch_49
    move-exception v0

    :cond_4a
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "N/A"

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1c

    const-string v0, "N/A"

    goto :goto_c

    :cond_1c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_45

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_42

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v0, "1"

    goto :goto_c

    :cond_38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "4"

    goto :goto_c

    :cond_42
    const-string v0, "N/A"

    goto :goto_c

    :cond_45
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_54

    :cond_51
    const-string v0, "N/A"

    goto :goto_c

    :cond_54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_67

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_6a

    :cond_67
    const-string v0, "1"

    goto :goto_c

    :cond_6a
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_79

    const-string v0, "N/A"

    goto :goto_c

    :cond_79
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_92

    const-string v0, "N/A"

    goto :goto_c

    :pswitch_83
    const-string v0, "2"

    goto :goto_c

    :pswitch_86
    const-string v0, "3"

    goto :goto_c

    :pswitch_89
    const-string v0, "4"
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8b} :catch_8c

    goto :goto_c

    :catch_8c
    move-exception v0

    const-string v0, "N/A"

    goto/16 :goto_c

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_83
        :pswitch_83
        :pswitch_86
        :pswitch_83
        :pswitch_86
        :pswitch_86
        :pswitch_83
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_83
        :pswitch_86
        :pswitch_89
        :pswitch_86
        :pswitch_86
    .end packed-switch
.end method

.method public getOaid()V
    .registers 3

    new-instance v0, Lcom/bilibili/deviceutils/utils/OaidUtil;

    invoke-direct {v0}, Lcom/bilibili/deviceutils/utils/OaidUtil;-><init>()V

    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/bilibili/deviceutils/utils/OaidUtil;->getAllID(Landroid/content/Context;)V

    return-void
.end method

.method public getOrientation()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->getInstance(Landroid/content/Context;)Lcom/bilibili/deviceutils/helper/OritensionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->getOrientation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .registers 2

    const-string v0, "android"

    return-object v0
.end method

.method public getOsApi()Ljava/lang/String;
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsArch()Ljava/lang/String;
    .registers 3

    const-string v0, "os.arch"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsVer()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 6

    const-string v1, ""

    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_2e

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2c

    :goto_2a
    move-object v1, v0

    goto :goto_18

    :catch_2c
    move-exception v0

    :cond_2d
    return-object v1

    :cond_2e
    move-object v0, v1

    goto :goto_2a
.end method

.method public getProp()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_1f

    goto :goto_b

    :catch_1f
    move-exception v0

    :cond_20
    return-object v1
.end method

.method public getScreenDensityInfo()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenPhysicSize()Ljava/lang/String;
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    :try_start_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_4f

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v0, v1, v0

    float-to-double v0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4e

    move-result-object v0

    :goto_4d
    return-object v0

    :catch_4e
    move-exception v0

    :cond_4f
    const-string v0, "unknown"

    goto :goto_4d
.end method

.method public getSdMemory()Ljava/lang/String;
    .registers 6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    mul-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSensors()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_40

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3e} :catch_3f

    goto :goto_1a

    :catch_3f
    move-exception v0

    :cond_40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_16

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    :cond_16
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_14
.end method

.method public getSigndn()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/deviceutils/utils/ApkSignatureUtil;->getSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .registers 4

    const-string v1, ""

    :try_start_2
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string v0, ""
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_23
    move-object v0, v1

    goto :goto_1e
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_15
    const-string v0, "unknown"

    goto :goto_10
.end method

.method public getSimState()Ljava/lang/String;
    .registers 4

    const-string v1, "0"

    :try_start_2
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_17

    move-result-object v0

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1b
    move-object v0, v1

    goto :goto_16
.end method

.method public getSsid()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/bilibili/deviceutils/helper/WifiType;->SSID:Lcom/bilibili/deviceutils/helper/WifiType;

    invoke-virtual {v1}, Lcom/bilibili/deviceutils/helper/WifiType;->getWifiType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/utils/DeviceWifiUtils;->getWifiInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSysTime()Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TimeZone id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalMemory()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalStorage()Ljava/lang/String;
    .registers 6

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    mul-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 5

    const-string v1, "unknown"

    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4} :catch_26

    const/16 v2, 0x11

    if-lt v0, v2, :cond_24

    :try_start_8
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_1c

    move-result-object v1

    move-object v0, v1

    :goto_f
    :try_start_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_2e

    move-result-object v0

    :cond_1b
    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    :try_start_1d
    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->TAG:Ljava/lang/String;

    const-string v2, "WebSettings NoSuchMethod: getDefaultUserAgent"

    invoke-static {v0, v2}, Lcom/bilibili/deviceutils/DeviceLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_26

    :cond_24
    move-object v0, v1

    goto :goto_f

    :catch_26
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_2a
    invoke-static {v1}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1b

    :catch_2e
    move-exception v1

    goto :goto_2a
.end method

.method public getWifiList()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/deviceutils/utils/DeviceWifiUtils;->getWifiList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiMac()Ljava/lang/String;
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v1, "02:00:00:00:00:00"

    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_6a

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wlan0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    if-nez v3, :cond_35

    move-object v0, v1

    :goto_34
    return-object v0

    :cond_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v3

    move v0, v2

    :goto_3c
    if-ge v0, v5, :cond_56

    aget-byte v2, v3, v0

    const-string v6, "%02X:"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_65

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_6a
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7d} :catch_96

    move-result v2

    if-eqz v2, :cond_97

    :try_start_80
    sget-object v2, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v2, v3}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_91} :catch_93

    move-result-object v0

    goto :goto_34

    :catch_93
    move-exception v0

    move-object v0, v1

    goto :goto_34

    :catch_96
    move-exception v0

    :cond_97
    move-object v0, v1

    goto :goto_34
.end method

.method public getXpose()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/deviceutils/utils/Hook;->getHook(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "xposed"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getfile()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getvirtual()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/deviceutils/utils/Va;->checkVirtual(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "virtual"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getvirtualProc()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/deviceutils/utils/Va;->checkVirtual(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "virtual_proc"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isEnableADB()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_19

    move-result v1

    if-lez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    :goto_11
    if-eqz v0, :cond_16

    const-string v0, "1"

    :goto_15
    return-object v0

    :cond_16
    const-string v0, "0"

    goto :goto_15

    :catch_19
    move-exception v1

    goto :goto_11
.end method

.method public isFirst()I
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v3, "frist"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/bilibili/deviceutils/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_21

    sget-object v3, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->mContext:Landroid/content/Context;

    const-string v4, "frist"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/bilibili/deviceutils/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    if-nez v0, :cond_25

    move v0, v1

    :goto_24
    return v0

    :cond_25
    move v0, v2

    goto :goto_24
.end method
