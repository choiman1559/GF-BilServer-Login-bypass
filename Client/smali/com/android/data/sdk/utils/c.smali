.class public Lcom/android/data/sdk/utils/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    sput-object v0, Lcom/android/data/sdk/utils/c;->b:Ljava/lang/String;

    sput-object v0, Lcom/android/data/sdk/utils/c;->c:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00:90:4C:11:22:33"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/data/sdk/utils/c;->d:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/android/data/sdk/utils/c;->e:[Ljava/lang/String;

    return-void
.end method

.method private static declared-synchronized a()Ljava/lang/String;
    .registers 2

    const-class v1, Lcom/android/data/sdk/utils/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/data/sdk/utils/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/data/sdk/utils/c;->b:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/android/data/sdk/utils/f;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/data/sdk/utils/c;->b:Ljava/lang/String;

    sget-object v0, Lcom/android/data/sdk/utils/c;->b:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_14

    goto :goto_9

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/16 v5, 0x7c

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/data/sdk/utils/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string v2, "[^0-9A-Fa-f]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "persist.service.bdroid.bdaddr"

    invoke-static {v0}, Lcom/android/data/sdk/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4f

    const-string v2, "[^0-9A-Fa-f]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/data/sdk/utils/c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_63
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/data/sdk/utils/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_83

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_82
    return-object v0

    :cond_83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    aget-byte v0, v2, v4

    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    const/4 v0, 0x1

    :goto_9a
    array-length v3, v2

    if-ge v0, v3, :cond_ac

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, v2, v3

    aget-byte v4, v2, v0

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    :cond_ac
    :try_start_ac
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_ba} :catch_bb

    goto :goto_82

    :catch_bb
    move-exception v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_82
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    sget-object v2, Lcom/android/data/sdk/utils/c;->d:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_13

    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_f
    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private static declared-synchronized b()Ljava/lang/String;
    .registers 2

    const-class v1, Lcom/android/data/sdk/utils/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/data/sdk/utils/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/data/sdk/utils/c;->c:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/android/data/sdk/utils/k;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/data/sdk/utils/c;->c:Ljava/lang/String;

    sget-object v0, Lcom/android/data/sdk/utils/c;->c:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_14

    goto :goto_9

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds",
            "CatchAndPrintStackTrace"
        }
    .end annotation

    const/4 v1, 0x0

    const-class v3, Lcom/android/data/sdk/utils/c;

    monitor-enter v3

    :try_start_4
    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_df
    .catchall {:try_start_4 .. :try_end_a} :catchall_e4

    :goto_a
    monitor-exit v3

    return-object v0

    :cond_c
    :try_start_c
    const-string v0, "wlan.lge.wifimac"

    invoke-static {v0}, Lcom/android/data/sdk/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    goto :goto_a

    :cond_1f
    if-eqz p0, :cond_44

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    const-string v0, "02:00:00:00:00:00"

    sget-object v2, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    goto :goto_a

    :cond_44
    const-string v0, "wifi.interface"

    invoke-static {v0}, Lcom/android/data/sdk/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e7

    const-string v0, "wlan0"

    move-object v2, v0

    :goto_53
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/class/net/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/data/sdk/utils/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_7c} :catch_df
    .catchall {:try_start_c .. :try_end_7c} :catchall_e4

    move-result v0

    if-eqz v0, :cond_9f

    :try_start_7f
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    :cond_83
    :goto_83
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B
    :try_end_9c
    .catch Ljava/net/SocketException; {:try_start_7f .. :try_end_9c} :catch_da
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_9c} :catch_df
    .catchall {:try_start_7f .. :try_end_9c} :catchall_e4

    move-result-object v5

    if-nez v5, :cond_a3

    :cond_9f
    :goto_9f
    :try_start_9f
    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a1} :catch_df
    .catchall {:try_start_9f .. :try_end_a1} :catchall_e4

    goto/16 :goto_a

    :cond_a3
    :try_start_a3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v5

    move v0, v1

    :goto_aa
    if-ge v0, v7, :cond_c4

    aget-byte v8, v5, v0

    const-string v9, "%02X:"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_aa

    :cond_c4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_d3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_d3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;
    :try_end_d9
    .catch Ljava/net/SocketException; {:try_start_a3 .. :try_end_d9} :catch_da
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_d9} :catch_df
    .catchall {:try_start_a3 .. :try_end_d9} :catchall_e4

    goto :goto_83

    :catch_da
    move-exception v0

    :try_start_db
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_de} :catch_df
    .catchall {:try_start_db .. :try_end_de} :catchall_e4

    goto :goto_9f

    :catch_df
    move-exception v0

    :try_start_e0
    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;
    :try_end_e2
    .catchall {:try_start_e0 .. :try_end_e2} :catchall_e4

    goto/16 :goto_a

    :catchall_e4
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_e7
    move-object v2, v0

    goto/16 :goto_53
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    sget-object v2, Lcom/android/data/sdk/utils/c;->e:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_13

    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_f
    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private static declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const-class v1, Lcom/android/data/sdk/utils/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_46
    .catchall {:try_start_3 .. :try_end_9} :catchall_4a

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    const-string v0, "wlan.lge.wifimac"

    invoke-static {v0}, Lcom/android/data/sdk/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    goto :goto_9

    :cond_1e
    if-nez p0, :cond_23

    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    goto :goto_9

    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_34

    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    goto :goto_9

    :cond_34
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_3d

    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    goto :goto_9

    :cond_3d
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;

    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_45} :catch_46
    .catchall {:try_start_b .. :try_end_45} :catchall_4a

    goto :goto_9

    :catch_46
    move-exception v0

    :try_start_47
    sget-object v0, Lcom/android/data/sdk/utils/c;->a:Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_4a

    goto :goto_9

    :catchall_4a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_e

    :cond_c
    move v1, v2

    :cond_d
    :goto_d
    return v1

    :cond_e
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v0, v1

    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_22

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    move v1, v2

    goto :goto_d
.end method
