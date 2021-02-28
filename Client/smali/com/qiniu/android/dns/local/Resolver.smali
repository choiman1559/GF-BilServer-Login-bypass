.class public final Lcom/qiniu/android/dns/local/Resolver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# static fields
.field private static final random:Ljava/util/Random;


# instance fields
.field final address:Ljava/net/InetAddress;

.field private final timeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/qiniu/android/dns/local/Resolver;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .registers 3

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/dns/local/Resolver;-><init>(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/dns/local/Resolver;->address:Ljava/net/InetAddress;

    iput p2, p0, Lcom/qiniu/android/dns/local/Resolver;->timeout:I

    return-void
.end method

.method private udpCommunicate([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_32

    :try_start_6
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v2, p1

    iget-object v3, p0, Lcom/qiniu/android/dns/local/Resolver;->address:Ljava/net/InetAddress;

    const/16 v4, 0x35

    invoke-direct {v0, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iget v2, p0, Lcom/qiniu/android/dns/local/Resolver;->timeout:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v0, Ljava/net/DatagramPacket;

    const/16 v2, 0x5dc

    new-array v2, v2, [B

    const/16 v3, 0x5dc

    invoke-direct {v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_3a

    move-result-object v0

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_31
    return-object v0

    :catchall_32
    move-exception v0

    move-object v1, v2

    :goto_34
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_39
    throw v0

    :catchall_3a
    move-exception v0

    goto :goto_34
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lcom/qiniu/android/dns/local/Resolver;->random:Ljava/util/Random;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/qiniu/android/dns/local/Resolver;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_22

    iget-object v1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/qiniu/android/dns/local/DnsMessage;->buildQuery(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qiniu/android/dns/local/Resolver;->udpCommunicate([B)[B

    move-result-object v1

    if-nez v1, :cond_25

    new-instance v0, Lcom/qiniu/android/dns/DnsException;

    iget-object v1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    const-string v2, "cant get answer"

    invoke-direct {v0, v1, v2}, Lcom/qiniu/android/dns/DnsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0

    :cond_25
    iget-object v2, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/qiniu/android/dns/local/DnsMessage;->parseResponse([BILjava/lang/String;)[Lcom/qiniu/android/dns/Record;

    move-result-object v0

    return-object v0
.end method
