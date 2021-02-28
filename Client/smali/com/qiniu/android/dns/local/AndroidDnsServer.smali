.class public final Lcom/qiniu/android/dns/local/AndroidDnsServer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultResolver()Lcom/qiniu/android/dns/IResolver;
    .registers 1

    new-instance v0, Lcom/qiniu/android/dns/local/AndroidDnsServer$1;

    invoke-direct {v0}, Lcom/qiniu/android/dns/local/AndroidDnsServer$1;-><init>()V

    return-object v0
.end method

.method public static getByCommand()[Ljava/net/InetAddress;
    .registers 6

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "getprop"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_22
    :goto_22
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    const-string v3, "]: ["

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_22

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".dns"

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6a

    const-string v3, ".dns1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6a

    const-string v3, ".dns2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6a

    const-string v3, ".dns3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6a

    const-string v3, ".dns4"

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_6a
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7f} :catch_80

    goto :goto_22

    :catch_80
    move-exception v0

    const-string v1, "AndroidDnsServer"

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception in findDNSByExec"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8e
    const/4 v0, 0x0

    :goto_8f
    return-object v0

    :cond_90
    :try_start_90
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_a2} :catch_80

    goto :goto_8f
.end method

.method public static getByReflection()[Ljava/net/InetAddress;
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "net.dns1"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    const-string v6, "net.dns2"

    aput-object v6, v5, v2

    const/4 v2, 0x2

    const-string v6, "net.dns3"

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-string v6, "net.dns4"

    aput-object v6, v5, v2

    array-length v6, v5

    move v2, v0

    :goto_35
    if-ge v2, v6, :cond_7e

    aget-object v0, v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4c

    :cond_48
    :goto_48
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_35

    :cond_4c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_48

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_48

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_48

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_48

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6d} :catch_6e

    goto :goto_48

    :catch_6e
    move-exception v0

    const-string v2, "AndroidDnsServer"

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception in findDNSByReflection"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7c
    move-object v0, v1

    :goto_7d
    return-object v0

    :cond_7e
    :try_start_7e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/net/InetAddress;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_90} :catch_6e

    goto :goto_7d
.end method
