.class public Lcom/unity3d/splash/services/core/device/Device;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/core/device/Device$MemoryInfoType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingTrackingId()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/core/device/AdvertisingId;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidId()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v0

    :goto_f
    return-object v0

    :catch_10
    move-exception v1

    const-string v2, "Problems fetching androidId"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public static getApiLevel()I
    .registers 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getApkDigest()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_9
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_1b

    :try_start_13
    invoke-static {v1}, Lcom/unity3d/splash/services/core/misc/Utilities;->Sha256(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_27

    move-result-object v0

    :try_start_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_23

    :goto_1a
    return-object v0

    :catchall_1b
    move-exception v0

    move-object v1, v2

    :goto_1d
    if-eqz v1, :cond_22

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_25

    :cond_22
    :goto_22
    throw v0

    :catch_23
    move-exception v1

    goto :goto_1a

    :catch_25
    move-exception v1

    goto :goto_22

    :catchall_27
    move-exception v0

    goto :goto_1d
.end method

.method public static getBatteryLevel()F
    .registers 5

    const/4 v4, -0x1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2a

    const-string v1, "level"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_29
    return v0

    :cond_2a
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_29
.end method

.method public static getBatteryStatus()I
    .registers 5

    const/4 v0, -0x1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1f

    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_1f
    return v0
.end method

.method public static getBoard()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static getBootloader()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildId()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildVersionIncremental()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getCPUCount()J
    .registers 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getCertificateFingerprint()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    :try_start_13
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_4f

    array-length v2, v0

    if-lez v2, :cond_4f

    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->toHexString([B)Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_47} :catch_49

    move-result-object v0

    :goto_48
    return-object v0

    :catch_49
    move-exception v0

    const-string v2, "Exception when signing certificate fingerprint"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4f
    move-object v0, v1

    goto :goto_48
.end method

.method public static getDevice()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getElapsedRealtime()J
    .registers 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFingerprint()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public static getFreeMemory()J
    .registers 2

    sget-object v0, Lcom/unity3d/splash/services/core/device/Device$MemoryInfoType;->FREE_MEMORY:Lcom/unity3d/splash/services/core/device/Device$MemoryInfoType;

    invoke-static {v0}, Lcom/unity3d/splash/services/core/device/Device;->getMemoryInfo(Lcom/unity3d/splash/services/core/device/Device$MemoryInfoType;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreeSpace(Ljava/io/File;)J
    .registers 5

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    :goto_15
    return-wide v0

    :cond_16
    const-wide/16 v0, -0x1

    goto :goto_15
.end method

.method public static getGLVersion()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static getHardware()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public static getHost()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstalledPackages(Z)Ljava/util/List;
    .registers 11

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_64

    const-string v5, "name"

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/unity3d/splash/services/core/misc/Utilities;->Sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3a
    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4d

    const-string v5, "time"

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_60

    const-string v5, "installer"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_64
    const-string v5, "name"

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    :cond_6c
    return-object v1
.end method

.method public static getManufacturer()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private static getMemoryInfo(Lcom/unity3d/splash/services/core/device/Device$MemoryInfoType;)J
    .registers 7

    const/4 v1, 0x0

    const/4 v0, -0x1

    sget-object v2, Lcom/unity3d/splash/services/core/device/Device$1;->$SwitchMap$com$unity3d$splash$services$core$device$Device$MemoryInfoType:[I

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/device/Device$MemoryInfoType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_68

    :goto_d
    :try_start_d
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/proc/meminfo"

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_36
    .catchall {:try_start_d .. :try_end_16} :catchall_56

    const/4 v3, 0x0

    move v5, v3

    move-object v3, v1

    move v1, v5

    :goto_1a
    if-ge v1, v0, :cond_27

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :pswitch_23
    const/4 v0, 0x1

    goto :goto_d

    :pswitch_25
    const/4 v0, 0x2

    goto :goto_d

    :cond_27
    invoke-static {v3}, Lcom/unity3d/splash/services/core/device/Device;->getMemoryValueFromString(Ljava/lang/String;)J
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2a} :catch_65
    .catchall {:try_start_1c .. :try_end_2a} :catchall_62

    move-result-wide v0

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    :goto_2e
    return-wide v0

    :catch_2f
    move-exception v2

    const-string v3, "Error closing RandomAccessFile"

    invoke-static {v3, v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2e

    :catch_36
    move-exception v0

    :goto_37
    :try_start_37
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while reading memory info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_56

    :try_start_49
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4f

    :goto_4c
    const-wide/16 v0, -0x1

    goto :goto_2e

    :catch_4f
    move-exception v0

    const-string v1, "Error closing RandomAccessFile"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4c

    :catchall_56
    move-exception v0

    :goto_57
    :try_start_57
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    :goto_5a
    throw v0

    :catch_5b
    move-exception v1

    const-string v2, "Error closing RandomAccessFile"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5a

    :catchall_62
    move-exception v0

    move-object v1, v2

    goto :goto_57

    :catch_65
    move-exception v0

    move-object v1, v2

    goto :goto_37

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_23
        :pswitch_25
    .end packed-switch
.end method

.method private static getMemoryValueFromString(Ljava/lang/String;)J
    .registers 4

    if-eqz p0, :cond_1f

    const-string v0, "(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v0, ""

    :goto_e
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1a
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1e
    return-wide v0

    :cond_1f
    const-wide/16 v0, -0x1

    goto :goto_1e
.end method

.method public static getModel()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkCountryISO()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const-string v0, ""

    goto :goto_16
.end method

.method public static getNetworkMetered()Z
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_22

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_22

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1d

    move v0, v1

    :goto_1c
    return v0

    :cond_1d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    goto :goto_1c

    :cond_22
    move v0, v1

    goto :goto_1c
.end method

.method public static getNetworkOperator()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const-string v0, ""

    goto :goto_16
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const-string v0, ""

    goto :goto_16
.end method

.method public static getNetworkType()I
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, -0x1

    goto :goto_16
.end method

.method private static getNewAbiList()Ljava/util/ArrayList;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static getOldAbiList()Ljava/util/ArrayList;
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getOpenAdvertisingTrackingId()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/core/device/OpenAdvertisingId;->getOpenAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getProcessInfo()Ljava/util/Map;
    .registers 5

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :try_start_6
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "/proc/self/stat"

    const-string v4, "r"

    invoke-direct {v1, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_23
    .catchall {:try_start_6 .. :try_end_f} :catchall_35

    :try_start_f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v2, "stat"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_44
    .catchall {:try_start_f .. :try_end_18} :catchall_42

    :try_start_18
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    :goto_1b
    return-object v3

    :catch_1c
    move-exception v0

    const-string v1, "Error closing RandomAccessFile"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1b

    :catch_23
    move-exception v0

    move-object v1, v2

    :goto_25
    :try_start_25
    const-string v2, "Error while reading processor info: "

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_42

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_1b

    :catch_2e
    move-exception v0

    const-string v1, "Error closing RandomAccessFile"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1b

    :catchall_35
    move-exception v0

    move-object v1, v2

    :goto_37
    :try_start_37
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    :goto_3a
    throw v0

    :catch_3b
    move-exception v1

    const-string v2, "Error closing RandomAccessFile"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3a

    :catchall_42
    move-exception v0

    goto :goto_37

    :catch_44
    move-exception v0

    goto :goto_25
.end method

.method public static getProduct()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getRingerMode()I
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x2

    goto :goto_18

    :cond_1b
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public static getSIMMCC(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    move v0, v1

    :goto_12
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_22

    :goto_18
    and-int/2addr v0, v1

    if-eqz v0, :cond_24

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    move v0, v2

    goto :goto_12

    :cond_22
    move v1, v2

    goto :goto_18

    :cond_24
    const-string v0, ""

    goto :goto_1f
.end method

.method public static getScreenBrightness()I
    .registers 3

    const/4 v0, -0x1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_15
    return v0
.end method

.method public static getScreenDensity()I
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_14
    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public static getScreenHeight()I
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_14
    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public static getScreenLayout()I
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    :goto_14
    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public static getScreenWidth()I
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_14
    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public static getSensorList()Ljava/util/List;
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static getStreamMaxVolume(I)I
    .registers 3

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x2

    goto :goto_18

    :cond_1b
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public static getStreamVolume(I)I
    .registers 3

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x2

    goto :goto_18

    :cond_1b
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public static getSupportedAbis()Ljava/util/ArrayList;
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/core/device/Device;->getApiLevel()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_d

    invoke-static {}, Lcom/unity3d/splash/services/core/device/Device;->getOldAbiList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Lcom/unity3d/splash/services/core/device/Device;->getNewAbiList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_c
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static getTotalMemory()J
    .registers 2

    sget-object v0, Lcom/unity3d/splash/services/core/device/Device$MemoryInfoType;->TOTAL_MEMORY:Lcom/unity3d/splash/services/core/device/Device$MemoryInfoType;

    invoke-static {v0}, Lcom/unity3d/splash/services/core/device/Device;->getMemoryInfo(Lcom/unity3d/splash/services/core/device/Device$MemoryInfoType;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalSpace(Ljava/io/File;)J
    .registers 5

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    :goto_15
    return-wide v0

    :cond_16
    const-wide/16 v0, -0x1

    goto :goto_15
.end method

.method public static getUniqueEventId()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUptime()J
    .registers 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isActiveNetworkConnected()Z
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    move v0, v1

    goto :goto_22

    :cond_25
    move v0, v1

    goto :goto_22
.end method

.method public static isAdbEnabled()Ljava/lang/Boolean;
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/core/device/Device;->getApiLevel()I

    move-result v0

    const/16 v1, 0x11

    if-ge v0, v1, :cond_d

    invoke-static {}, Lcom/unity3d/splash/services/core/device/Device;->oldAdbStatus()Ljava/lang/Boolean;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Lcom/unity3d/splash/services/core/device/Device;->newAdbStatus()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c
.end method

.method public static isAppInstalled(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_10
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1f} :catch_24

    move-result v1

    if-eqz v1, :cond_23

    const/4 v0, 0x1

    :cond_23
    :goto_23
    return v0

    :catch_24
    move-exception v1

    goto :goto_23
.end method

.method public static isLimitAdTrackingEnabled()Z
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/core/device/AdvertisingId;->getLimitedAdTracking()Z

    move-result v0

    return v0
.end method

.method public static isLimitOpenAdTrackingEnabled()Z
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/core/device/OpenAdvertisingId;->getLimitedOpenAdTracking()Z

    move-result v0

    return v0
.end method

.method public static isRooted()Z
    .registers 2

    :try_start_0
    const-string v0, "su"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/device/Device;->searchPathForBinary(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const-string v1, "Rooted check failed"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isUSBConnected()Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1f

    const-string v2, "connected"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_1f
    return v0
.end method

.method public static isUsingWifi()Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_18

    move v0, v2

    :goto_17
    return v0

    :cond_18
    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_3c

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3c

    if-nez v1, :cond_3e

    :cond_3c
    move v0, v2

    goto :goto_17

    :cond_3e
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v3, :cond_4c

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v3

    goto :goto_17

    :cond_4c
    move v0, v2

    goto :goto_17

    :cond_4e
    move v0, v2

    goto :goto_17
.end method

.method public static isWiredHeadsetOn()Z
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static newAdbStatus()Ljava/lang/Boolean;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_19

    :goto_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_1b

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    move v1, v2

    goto :goto_14

    :catch_1b
    move-exception v1

    const-string v2, "Problems fetching adb enabled status"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_18
.end method

.method private static oldAdbStatus()Ljava/lang/Boolean;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_19

    :goto_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_1b

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    move v1, v2

    goto :goto_14

    :catch_1b
    move-exception v1

    const-string v2, "Problems fetching adb enabled status"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_18
.end method

.method private static searchPathForBinary(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    const-string v1, "PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_f
    if-ge v2, v4, :cond_3b

    aget-object v1, v3, v2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_3f

    array-length v6, v5

    move v1, v0

    :goto_2c
    if-ge v1, v6, :cond_3f

    aget-object v7, v5, v1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v0, 0x1

    :cond_3b
    return v0

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_3f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_f
.end method
