.class public final Lcom/qiniu/android/dns/Network;
.super Ljava/lang/Object;


# static fields
.field private static previousIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/qiniu/android/dns/Network;->previousIp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIp()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    const-string v1, "114.114.114.114"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_1c

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    const-string v0, ""

    goto :goto_1b
.end method

.method public static declared-synchronized isNetworkChanged()Z
    .registers 3

    const-class v1, Lcom/qiniu/android/dns/Network;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/qiniu/android/dns/Network;->getIp()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/qiniu/android/dns/Network;->previousIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_16

    move-result v2

    if-eqz v2, :cond_12

    const/4 v0, 0x0

    :goto_10
    monitor-exit v1

    return v0

    :cond_12
    :try_start_12
    sput-object v0, Lcom/qiniu/android/dns/Network;->previousIp:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_16

    const/4 v0, 0x1

    goto :goto_10

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method
