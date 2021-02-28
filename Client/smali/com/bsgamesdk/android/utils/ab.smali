.class public Lcom/bsgamesdk/android/utils/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bsgamesdk/android/dynamic/IUtils;


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/utils/ab;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "{}"

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_14
    const-string v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_4b} :catch_4c

    goto :goto_21

    :catch_4c
    move-exception v0

    :goto_4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_52
    :try_start_52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x7d

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_5d} :catch_4c

    goto :goto_4d
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/utils/ab;->a:Landroid/content/Context;

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.bsgame.floatsdk.FloatSDK"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    array-length v3, v2

    :goto_1d
    if-ge v0, v3, :cond_32

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v4, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_32} :catch_36

    :cond_32
    :goto_32
    return-void

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :catch_36
    move-exception v0

    goto :goto_32
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ls -l "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4f

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3f} :catch_56
    .catchall {:try_start_1 .. :try_end_3f} :catchall_60

    move-result v0

    const/16 v2, 0x73

    if-eq v0, v2, :cond_48

    const/16 v2, 0x78

    if-ne v0, v2, :cond_4f

    :cond_48
    const/4 v0, 0x1

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_4e
    :goto_4e
    return v0

    :cond_4f
    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_54
    :goto_54
    const/4 v0, 0x0

    goto :goto_4e

    :catch_56
    move-exception v0

    :try_start_57
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_60

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto :goto_54

    :catchall_60
    move-exception v0

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_66
    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    :try_start_16
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v1, v8

    array-length v2, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/16 v1, 0x14

    if-gt v10, v1, :cond_f

    move v1, v0

    :goto_2d
    if-ge v1, v10, :cond_f

    array-length v2, v9

    if-gt v2, v1, :cond_3f

    move-wide v6, v4

    :goto_33
    array-length v2, v8

    if-gt v2, v1, :cond_4b

    move-wide v2, v4

    :goto_37
    sub-long v2, v6, v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_56

    const/4 v0, 0x1

    goto :goto_f

    :cond_3f
    aget-object v2, v9, v1

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v6, v2

    goto :goto_33

    :cond_4b
    aget-object v2, v8, v1

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_54} :catch_59

    move-result-wide v2

    goto :goto_37

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :catch_59
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "/system/bin/su"

    const-string v1, "/system/xbin/su"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/ab;->a(Ljava/lang/String;)Z

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

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/ab;->a(Ljava/lang/String;)Z

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

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    const-string v0, ""

    goto :goto_12
.end method

.method public static b(Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    array-length v1, v2

    if-lez v1, :cond_30

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2d

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_30
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public static c()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_14

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_14

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2f

    move-result-object v0

    :goto_2e
    return-object v0

    :catch_2f
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :cond_33
    const-string v0, "0"

    goto :goto_2e
.end method

.method public static c(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    const-string v2, "{"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "}"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_2e
    array-length v3, v2

    if-ge v1, v3, :cond_c

    aget-object v3, v2, v1

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_4a} :catch_4d

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :catch_4d
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public static d()Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_8
    const-string v1, "eth1"

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    if-nez v1, :cond_16

    const-string v1, "wlan0"

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    :cond_16
    if-nez v1, :cond_1b

    const-string v0, ""

    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    array-length v3, v1

    :goto_20
    if-ge v0, v3, :cond_3a

    aget-byte v4, v1, v0

    const-string v5, "%02X:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_49

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_49
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_4c} :catch_4e

    move-result-object v0

    goto :goto_1a

    :catch_4e
    move-exception v0

    const-string v0, ""

    goto :goto_1a
.end method


# virtual methods
.method public checkAccount4Bili(Ljava/lang/String;)Z
    .registers 3

    const-string v0, ".{3,20}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public checkAccountQQ(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "^\\d{8,11}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public checkCaptcha(Ljava/lang/String;)Z
    .registers 3

    const-string v0, ".{4,8}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public checkEmail(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public checkIsLogined(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    new-instance v0, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v0, p1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/utils/ab;->checkIsLogined(Lcom/bsgamesdk/android/model/UserParcelable;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public checkIsLogined(Lcom/bsgamesdk/android/model/UserParcelable;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-wide v2, p1, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public checkIsTouristLogined(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    new-instance v0, Lcom/bsgamesdk/android/model/k;

    invoke-direct {v0, p1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/utils/ab;->checkIsTouristLogined(Lcom/bsgamesdk/android/model/TouristUserParceable;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public checkIsTouristLogined(Lcom/bsgamesdk/android/model/TouristUserParceable;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p1, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-wide v2, p1, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lcom/bsgamesdk/android/model/TouristUserParceable;->is_login:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/utils/ab;->checkIsTouristReToken(Lcom/bsgamesdk/android/model/TouristUserParceable;)Z

    move-result v0

    goto :goto_3
.end method

.method public checkIsTouristReToken(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    new-instance v0, Lcom/bsgamesdk/android/model/k;

    invoke-direct {v0, p1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/utils/ab;->checkIsTouristReToken(Lcom/bsgamesdk/android/model/TouristUserParceable;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public checkIsTouristReToken(Lcom/bsgamesdk/android/model/TouristUserParceable;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-wide v2, p1, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/bsgamesdk/android/model/TouristUserParceable;->expire_in:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public checkLoginedStatus(Landroid/content/Context;)I
    .registers 8

    const/16 v0, 0x3ec

    new-instance v1, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v1, p1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-wide v2, v1, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1e

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2b

    const/16 v0, 0x3e9

    goto :goto_1d

    :cond_2b
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/UserParcelable;->long_expire_in:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_42

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_42

    const/16 v0, 0x3ea

    goto :goto_1d

    :cond_42
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/UserParcelable;->long_expire_in:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1d

    const/16 v0, 0x3eb

    goto :goto_1d
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .registers 3

    const-string v0, ".{6,31}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public checkPhone(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "\\d{8,11}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public checkTouristLoginedStatus(Landroid/content/Context;)I
    .registers 8

    const/16 v0, 0x3ec

    new-instance v1, Lcom/bsgamesdk/android/model/k;

    invoke-direct {v1, p1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-wide v2, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1e

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->expire_in:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2b

    const/16 v0, 0x3e9

    goto :goto_1d

    :cond_2b
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->long_expire_in:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_42

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->expire_in:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_42

    const/16 v0, 0x3ea

    goto :goto_1d

    :cond_42
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->long_expire_in:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1d

    const/16 v0, 0x3eb

    goto :goto_1d
.end method

.method public dip2px(Landroid/content/Context;F)I
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getRawSize(Landroid/content/Context;IF)F
    .registers 5

    if-nez p1, :cond_f

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    :goto_6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p2, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0

    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_6
.end method

.method public getUserParcelable(Landroid/content/Context;)Lcom/bsgamesdk/android/model/UserParcelable;
    .registers 8

    const/4 v1, 0x0

    new-instance v0, Lcom/bsgamesdk/android/model/UserParcelable;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/UserParcelable;-><init>()V

    new-instance v2, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v2, p1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    :try_start_b
    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/model/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "nickname"

    invoke-virtual {v2, v4}, Lcom/bsgamesdk/android/model/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_27

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    :cond_27
    move-object v0, v1

    :goto_28
    return-object v0

    :cond_29
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    const-string v3, "username"

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/model/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    const-string v3, "nickname"

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/model/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    const-string v3, "last_login_time"

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/model/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/bsgamesdk/android/model/UserParcelable;->last_login_time:J

    const-string v3, "expire_times"

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/model/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    const-string v3, "avatar"

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/model/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    const-string v3, "s_avatar"

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/model/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    const-string v3, "original_password"

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/model/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/bsgamesdk/android/model/UserParcelable;->original_password:Ljava/lang/String;

    const-string v3, "password"

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/model/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/bsgamesdk/android/model/UserParcelable;->password:Ljava/lang/String;

    const-string v3, "access_token"

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/model/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    const-string v3, "refresh_token"

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/model/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->refresh_token:Ljava/lang/String;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_87} :catch_88

    goto :goto_28

    :catch_88
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_28
.end method

.method public isConnectingToInternet(Landroid/content/Context;)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_28

    move v0, v1

    :goto_12
    array-length v3, v2

    if-ge v0, v3, :cond_28

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_24

    if-ne v3, v4, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :catch_24
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :cond_28
    move v0, v1

    goto :goto_20
.end method

.method public isRealNameAuth(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v2, p1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/utils/ab;->checkIsLogined(Lcom/bsgamesdk/android/model/UserParcelable;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget v2, v2, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_19

    if-ne v2, v0, :cond_17

    :goto_15
    move v1, v0

    :cond_16
    :goto_16
    return v1

    :cond_17
    move v0, v1

    goto :goto_15

    :catch_19
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_16
.end method

.method public isTourRealNameAuth(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Lcom/bsgamesdk/android/model/k;

    invoke-direct {v2, p1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/utils/ab;->checkIsTouristLogined(Lcom/bsgamesdk/android/model/TouristUserParceable;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget v2, v2, Lcom/bsgamesdk/android/model/TouristUserParceable;->realname_verified:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_19

    if-ne v2, v0, :cond_17

    :goto_15
    move v1, v0

    :cond_16
    :goto_16
    return v1

    :cond_17
    move v0, v1

    goto :goto_15

    :catch_19
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_16
.end method

.method public loginTourist(Landroid/content/Context;)V
    .registers 6

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    invoke-direct {v0, p1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v1

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->last_login_time:J

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->is_login:Z

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/model/k;->a(Lcom/bsgamesdk/android/model/TouristUserParceable;)V

    return-void
.end method

.method public loginout(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/utils/ab;->loginoutUser(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/utils/ab;->loginoutTourist(Landroid/content/Context;)V

    return-void
.end method

.method public loginoutTourist(Landroid/content/Context;)V
    .registers 6

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    invoke-direct {v0, p1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v1

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->last_login_time:J

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->is_login:Z

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/model/k;->a(Lcom/bsgamesdk/android/model/TouristUserParceable;)V

    return-void
.end method

.method public loginoutUser(Landroid/content/Context;)V
    .registers 11

    new-instance v0, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v0, p1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    iget-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    iget-object v4, v0, Lcom/bsgamesdk/android/model/UserParcelable;->remember_passwrod:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, v0, Lcom/bsgamesdk/android/model/UserParcelable;->password:Ljava/lang/String;

    iget v6, v0, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    iget v7, v0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download:I

    iget v0, v0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download_sameSign:I

    new-instance v8, Lcom/bsgamesdk/android/model/UserParcelable;

    invoke-direct {v8}, Lcom/bsgamesdk/android/model/UserParcelable;-><init>()V

    iput-wide v2, v8, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    iput-object v5, v8, Lcom/bsgamesdk/android/model/UserParcelable;->original_password:Ljava/lang/String;

    iput-object v5, v8, Lcom/bsgamesdk/android/model/UserParcelable;->password:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/bsgamesdk/android/model/UserParcelable;->remember_passwrod:Ljava/lang/String;

    iput v6, v8, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    iput v7, v8, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download:I

    iput v0, v8, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download_sameSign:I

    if-eqz v1, :cond_3e

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    iput-object v1, v8, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    :cond_3e
    new-instance v0, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v0, p1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/bsgamesdk/android/model/m;->a(Lcom/bsgamesdk/android/model/UserParcelable;)V

    return-void
.end method

.method public px2dip(Landroid/content/Context;F)I
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p2, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
