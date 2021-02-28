.class public Lcom/sunborn/common/tool/MacUitl;
.super Ljava/lang/Object;
.source "MacUitl.java"


# static fields
.field private static mMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string v0, "02:00:00:00:00:00"

    sput-object v0, Lcom/sunborn/common/tool/MacUitl;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .registers 9
    .param p0, "bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 180
    if-eqz p0, :cond_6

    array-length v2, p0

    if-nez v2, :cond_8

    .line 181
    :cond_6
    const/4 v2, 0x0

    .line 190
    :goto_7
    return-object v2

    .line 183
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v1, "buf":Ljava/lang/StringBuilder;
    array-length v4, p0

    move v2, v3

    :goto_f
    if-ge v2, v4, :cond_28

    aget-byte v0, p0, v2

    .line 185
    .local v0, "b":B
    const-string v5, "%02X:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 187
    .end local v0    # "b":B
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_37

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 190
    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method

.method private static callCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 218
    const-string v5, ""

    .line 219
    .local v5, "result":Ljava/lang/String;
    const-string v3, ""

    .line 221
    .local v3, "line":Ljava/lang/String;
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 222
    .local v4, "proc":Ljava/lang/Process;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 223
    .local v2, "is":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 225
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 226
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_3a

    move-result-object v5

    goto :goto_1a

    .line 230
    :cond_38
    move-object v5, v3

    .line 234
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "is":Ljava/io/InputStreamReader;
    .end local v4    # "proc":Ljava/lang/Process;
    :goto_39
    return-object v5

    .line 231
    :catch_3a
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method private static getLocalInetAddress()Ljava/net/InetAddress;
    .registers 8

    .prologue
    .line 86
    const/4 v4, 0x0

    .line 90
    .local v4, "ip":Ljava/net/InetAddress;
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .line 91
    .local v3, "en_netInterface":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 93
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 94
    .local v5, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 95
    .local v2, "en_ip":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_15
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 96
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/InetAddress;

    move-object v4, v0

    .line 97
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_39

    .line 98
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_32} :catch_3b

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_39

    .line 104
    :cond_36
    if-eqz v4, :cond_5

    .line 112
    .end local v2    # "en_ip":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "en_netInterface":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v5    # "ni":Ljava/net/NetworkInterface;
    :cond_38
    :goto_38
    return-object v4

    .line 101
    .restart local v2    # "en_ip":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v3    # "en_netInterface":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v5    # "ni":Ljava/net/NetworkInterface;
    :cond_39
    const/4 v4, 0x0

    goto :goto_15

    .line 108
    .end local v2    # "en_ip":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "en_netInterface":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v5    # "ni":Ljava/net/NetworkInterface;
    :catch_3b
    move-exception v1

    .line 110
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_38
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .registers 6

    .prologue
    .line 124
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 125
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 127
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_14
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 128
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 129
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_14

    instance-of v5, v3, Ljava/net/Inet4Address;

    if-eqz v5, :cond_14

    .line 130
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_31
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_31} :catch_33

    move-result-object v5

    .line 137
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :goto_32
    return-object v5

    .line 134
    :catch_33
    move-exception v2

    .line 135
    .local v2, "ex":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    .line 137
    .end local v2    # "ex":Ljava/net/SocketException;
    :cond_37
    const-string v5, ""

    goto :goto_32
.end method

.method public static getLocalMacAddressFromBusybox(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    const-string v1, ""

    .line 201
    .local v1, "result":Ljava/lang/String;
    const-string v0, ""

    .line 202
    .local v0, "Mac":Ljava/lang/String;
    const-string v2, "busybox ifconfig"

    const-string v3, "HWaddr"

    invoke-static {v2, v3}, Lcom/sunborn/common/tool/MacUitl;->callCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    if-nez v1, :cond_13

    .line 205
    invoke-static {p0}, Lcom/sunborn/common/tool/MacUitl;->getMacAddress0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 214
    :goto_12
    return-object v2

    .line 209
    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_35

    const-string v2, "HWaddr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    .line 210
    const-string v2, "HWaddr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    .line 211
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 210
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 212
    move-object v1, v0

    :cond_35
    move-object v2, v1

    .line 214
    goto :goto_12
.end method

.method private static getMacAddrByIp()Ljava/lang/String;
    .registers 8

    .prologue
    .line 60
    const/4 v5, 0x0

    .line 63
    .local v5, "strMacAddr":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/sunborn/common/tool/MacUitl;->getLocalInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 64
    .local v3, "ip":Ljava/net/InetAddress;
    invoke-static {v3}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v6

    .line 65
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    .line 66
    .local v0, "b":[B
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    array-length v6, v0

    if-ge v2, v6, :cond_44

    .line 68
    if-eqz v2, :cond_1d

    .line 69
    const/16 v6, 0x3a

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    :cond_1d
    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "str":Ljava/lang/String;
    :cond_3e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 74
    :cond_44
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_4d

    move-result-object v5

    .line 77
    .end local v0    # "b":[B
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    .end local v3    # "ip":Ljava/net/InetAddress;
    :goto_4c
    return-object v5

    .line 75
    :catch_4d
    move-exception v6

    goto :goto_4c
.end method

.method public static getMacAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 363
    const-string v1, ""

    .line 364
    .local v1, "result":Ljava/lang/String;
    const-string v0, ""

    .line 365
    .local v0, "Mac":Ljava/lang/String;
    const-string v2, "busybox ifconfig"

    const-string v3, "HWaddr"

    invoke-static {v2, v3}, Lcom/sunborn/common/tool/MacUitl;->callCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    if-nez v1, :cond_11

    .line 368
    const-string v2, "\u7f51\u7edc\u51fa\u9519\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 376
    :goto_10
    return-object v2

    .line 370
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    const-string v2, "HWaddr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 371
    const-string v2, "HWaddr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3c

    .line 373
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 376
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_10
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-ge v8, v9, :cond_11

    .line 248
    invoke-static {p0}, Lcom/sunborn/common/tool/MacUitl;->getMacAddress0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "macAddress0":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 281
    .end local v4    # "macAddress0":Ljava/lang/String;
    :goto_10
    return-object v4

    .line 253
    :cond_11
    const-string v7, ""

    .line 254
    .local v7, "str":Ljava/lang/String;
    const-string v5, ""

    .line 256
    .local v5, "macSerial":Ljava/lang/String;
    :try_start_15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "cat /sys/class/net/wlan0/address"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 258
    .local v6, "pp":Ljava/lang/Process;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 259
    .local v3, "ir":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/LineNumberReader;

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 260
    .local v2, "input":Ljava/io/LineNumberReader;
    :cond_2d
    if-eqz v7, :cond_39

    .line 261
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 262
    if-eqz v7, :cond_2d

    .line 263
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_38} :catch_55

    move-result-object v5

    .line 270
    .end local v2    # "input":Ljava/io/LineNumberReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .end local v6    # "pp":Ljava/lang/Process;
    :cond_39
    :goto_39
    if-eqz v5, :cond_43

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 272
    :cond_43
    :try_start_43
    const-string v8, "/sys/class/net/eth0/address"

    invoke-static {v8}, Lcom/sunborn/common/tool/MacUitl;->loadFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 273
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x11

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_53} :catch_71

    move-result-object v4

    goto :goto_10

    .line 267
    :catch_55
    move-exception v1

    .line 268
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----->NetInfoManagergetMacAddress:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;)V

    goto :goto_39

    .line 274
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_71
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----->NetInfoManagergetMacAddress:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 277
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 276
    invoke-static {v8}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8f
    move-object v4, v5

    .line 281
    goto :goto_10
.end method

.method public static getMacAddress0(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    invoke-static {p0}, Lcom/sunborn/common/tool/MacUitl;->isAccessWifiStateAuthorized(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 292
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 293
    .local v1, "wifiMgr":Landroid/net/wifi/WifiManager;
    const/4 v0, 0x0

    .line 295
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :try_start_f
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v2

    .line 302
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :goto_17
    return-object v2

    .line 297
    .restart local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v1    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :catch_18
    move-exception v2

    .line 302
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_19
    const-string v2, ""

    goto :goto_17
.end method

.method public static getMachineHardwareAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 148
    const/4 v3, 0x0

    .line 150
    .local v3, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_4} :catch_b

    move-result-object v3

    .line 154
    :goto_5
    const/4 v1, 0x0

    .line 155
    .local v1, "hardWareAddress":Ljava/lang/String;
    const/4 v2, 0x0

    .line 156
    .local v2, "iF":Ljava/net/NetworkInterface;
    if-nez v3, :cond_14

    .line 157
    const/4 v4, 0x0

    .line 169
    :goto_a
    return-object v4

    .line 151
    .end local v1    # "hardWareAddress":Ljava/lang/String;
    .end local v2    # "iF":Ljava/net/NetworkInterface;
    :catch_b
    move-exception v0

    .line 152
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_5

    .line 165
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v1    # "hardWareAddress":Ljava/lang/String;
    .restart local v2    # "iF":Ljava/net/NetworkInterface;
    :catch_10
    move-exception v0

    .line 166
    .restart local v0    # "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 159
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_14
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 160
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "iF":Ljava/net/NetworkInterface;
    check-cast v2, Ljava/net/NetworkInterface;

    .line 162
    .restart local v2    # "iF":Ljava/net/NetworkInterface;
    :try_start_20
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    invoke-static {v4}, Lcom/sunborn/common/tool/MacUitl;->bytesToString([B)Ljava/lang/String;
    :try_end_27
    .catch Ljava/net/SocketException; {:try_start_20 .. :try_end_27} :catch_10

    move-result-object v1

    .line 163
    if-eqz v1, :cond_14

    :cond_2a
    move-object v4, v1

    .line 169
    goto :goto_a
.end method

.method public static getWireMac()Ljava/lang/String;
    .registers 9

    .prologue
    .line 341
    const/4 v5, 0x0

    .line 343
    .local v5, "strMacAddress":Ljava/lang/String;
    :try_start_1
    const-string v6, "eth0"

    invoke-static {v6}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    .line 344
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    .line 345
    .local v0, "b":[B
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 346
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    array-length v6, v0

    if-ge v3, v6, :cond_5e

    .line 347
    if-eqz v3, :cond_1b

    .line 348
    const/16 v6, 0x3a

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 350
    :cond_1b
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "b:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v3

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_58

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "str":Ljava/lang/String;
    :cond_58
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 354
    :cond_5e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_65} :catch_67

    move-result-object v5

    .line 359
    .end local v0    # "b":[B
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    :goto_66
    return-object v5

    .line 356
    :catch_67
    move-exception v2

    .line 357
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_66
.end method

.method public static initMACAddress(Landroid/content/Context;)V
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "HardwareIds"
        }
    .end annotation

    .prologue
    const/16 v2, 0x18

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v2, :cond_2b

    .line 43
    invoke-static {p0}, Lcom/sunborn/common/tool/MacUitl;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunborn/common/tool/MacUitl;->mMacAddress:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMacAddress6.0\u53ca\u4ee5\u4e0a\u30017.0\u4ee5\u4e0b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sunborn/common/tool/MacUitl;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;)V

    .line 52
    :goto_2a
    return-void

    .line 45
    :cond_2b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_4e

    .line 46
    invoke-static {}, Lcom/sunborn/common/tool/MacUitl;->getMachineHardwareAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunborn/common/tool/MacUitl;->mMacAddress:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMacAddress7.0\u53ca\u4ee5\u4e0a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sunborn/common/tool/MacUitl;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2a

    .line 49
    :cond_4e
    invoke-static {p0}, Lcom/sunborn/common/tool/MacUitl;->getMacAddress0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunborn/common/tool/MacUitl;->mMacAddress:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMacAddress6.0\u4ee5\u4e0b :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sunborn/common/tool/MacUitl;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method private static isAccessWifiStateAuthorized(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 314
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 316
    const/4 v0, 0x1

    .line 318
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static loadFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "reader":Ljava/io/FileReader;
    invoke-static {v0}, Lcom/sunborn/common/tool/MacUitl;->loadReaderAsString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 325
    return-object v1
.end method

.method private static loadReaderAsString(Ljava/io/Reader;)Ljava/lang/String;
    .registers 5
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0x1000

    new-array v0, v3, [C

    .line 331
    .local v0, "buffer":[C
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    .line 332
    .local v2, "readLength":I
    :goto_d
    if-ltz v2, :cond_18

    .line 333
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    goto :goto_d

    .line 336
    :cond_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
