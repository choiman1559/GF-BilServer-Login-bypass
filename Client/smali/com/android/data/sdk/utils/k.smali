.class public Lcom/android/data/sdk/utils/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/data/sdk/utils/k;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-class v1, Lcom/android/data/sdk/utils/k;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lcom/android/data/sdk/utils/k;->a:Ljava/lang/String;

    if-eqz v2, :cond_c

    sget-object v0, Lcom/android/data/sdk/utils/k;->a:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_71

    :goto_a
    monitor-exit v1

    return-object v0

    :cond_c
    :try_start_c
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/iSerial"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/data/sdk/utils/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/data/sdk/utils/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    sput-object v2, Lcom/android/data/sdk/utils/k;->a:Ljava/lang/String;

    sget-object v0, Lcom/android/data/sdk/utils/k;->a:Ljava/lang/String;

    goto :goto_a

    :cond_22
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ro.serialno"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ro.boot.serialno"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "gsm.device.sn"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "gsm.baseband.imei"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "gsm.sim.imei"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "persist.radio.device.imei"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ro.aliyun.clouduuid"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "ril.barcode"

    aput-object v4, v2, v3

    array-length v3, v2

    :goto_4f
    if-ge v0, v3, :cond_6f

    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/android/data/sdk/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_60

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_60
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/data/sdk/utils/k;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    sput-object v4, Lcom/android/data/sdk/utils/k;->a:Ljava/lang/String;

    sget-object v0, Lcom/android/data/sdk/utils/k;->a:Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_c .. :try_end_6e} :catchall_71

    goto :goto_a

    :cond_6f
    const/4 v0, 0x0

    goto :goto_a

    :catchall_71
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    move v1, v2

    :cond_b
    :goto_b
    return v1

    :cond_c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v0, v1

    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_20

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_20
    move v1, v2

    goto :goto_b
.end method
