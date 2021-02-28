.class public Lcom/bsgamesdk/android/utils/n;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;

    sput-object v0, Lcom/bsgamesdk/android/utils/n;->b:Ljava/lang/String;

    sput-object v0, Lcom/bsgamesdk/android/utils/n;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "wlan0"

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    if-eqz v4, :cond_f

    array-length v0, v4

    if-eqz v0, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, v4

    move v0, v1

    :goto_35
    if-ge v0, v6, :cond_4f

    aget-byte v7, v4, v0

    const-string v8, "%02X:"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_4f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5e

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_65} :catch_69

    move-result v4

    if-nez v4, :cond_f

    :goto_68
    return-object v0

    :catch_69
    move-exception v0

    :cond_6a
    const-string v0, "can\'t get wifimac"

    goto :goto_68
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/16 v5, 0x7c

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0}, Lcom/bsgamesdk/android/utils/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    const-string v2, "[^0-9A-Fa-f]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/n;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_23
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "persist.service.bdroid.bdaddr"

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_47

    const-string v2, "[^0-9A-Fa-f]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/n;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_47
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/bsgamesdk/android/utils/n;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_57
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/bsgamesdk/android/utils/n;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_67
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_73

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_72
    return-object v0

    :cond_73
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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

    :goto_8a
    array-length v3, v2

    if-ge v0, v3, :cond_9c

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, v2, v3

    aget-byte v4, v2, v0

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :cond_9c
    :try_start_9c
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_aa} :catch_ab

    goto :goto_72

    :catch_ab
    move-exception v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_72
.end method

.method private static a(Ljava/lang/String;)Z
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

.method private static declared-synchronized b()Ljava/lang/String;
    .registers 2

    const-class v1, Lcom/bsgamesdk/android/utils/n;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bsgamesdk/android/utils/n;->b:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/bsgamesdk/android/utils/n;->b:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/bsgamesdk/android/utils/r;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/utils/n;->b:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/utils/n;->b:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_14

    goto :goto_9

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v1, Lcom/bsgamesdk/android/utils/n;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_63
    .catchall {:try_start_3 .. :try_end_9} :catchall_67

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    const-string v0, "wlan.lge.wifimac"

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    sget-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;

    goto :goto_9

    :cond_1e
    if-nez p0, :cond_23

    sget-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;

    goto :goto_9

    :cond_23
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_30

    sget-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;

    goto :goto_9

    :cond_30
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;

    goto :goto_9

    :cond_39
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "02:00:00:00:00:00"

    sget-object v2, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    sget-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;

    goto :goto_9

    :cond_54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_60

    invoke-static {}, Lcom/bsgamesdk/android/utils/n;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;

    :cond_60
    sget-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_62} :catch_63
    .catchall {:try_start_b .. :try_end_62} :catchall_67

    goto :goto_9

    :catch_63
    move-exception v0

    :try_start_64
    sget-object v0, Lcom/bsgamesdk/android/utils/n;->a:Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_64 .. :try_end_66} :catchall_67

    goto :goto_9

    :catchall_67
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized c()Ljava/lang/String;
    .registers 2

    const-class v1, Lcom/bsgamesdk/android/utils/n;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bsgamesdk/android/utils/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/bsgamesdk/android/utils/n;->c:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/bsgamesdk/android/utils/aa;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/utils/n;->c:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/utils/n;->c:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_14

    goto :goto_9

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method
