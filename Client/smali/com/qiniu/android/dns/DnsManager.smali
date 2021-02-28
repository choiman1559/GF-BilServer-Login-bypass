.class public final Lcom/qiniu/android/dns/DnsManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/dns/DnsManager$DummySorter;
    }
.end annotation


# static fields
.field public static running:I


# instance fields
.field private final cache:Lcom/qiniu/android/dns/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qiniu/android/dns/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/qiniu/android/dns/Record;",
            ">;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field private final hosts:Lcom/qiniu/android/dns/local/Hosts;

.field private volatile index:I

.field private volatile info:Lcom/qiniu/android/dns/NetworkInfo;

.field private final resolvers:[Lcom/qiniu/android/dns/IResolver;

.field private final sorter:Lcom/qiniu/android/dns/IpSorter;

.field private taskManager:Lcom/bsgamesdk/android/api/checknetspeed/a;

.field private testCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/qiniu/android/dns/DnsManager;->running:I

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qiniu/android/dns/DnsManager;-><init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;Lcom/qiniu/android/dns/IpSorter;)V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;Lcom/qiniu/android/dns/IpSorter;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/qiniu/android/dns/local/Hosts;

    invoke-direct {v0}, Lcom/qiniu/android/dns/local/Hosts;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    iput-object v2, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->testCache:Ljava/util/HashMap;

    new-instance v0, Lcom/qiniu/android/dns/DnsManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qiniu/android/dns/DnsManager$1;-><init>(Lcom/qiniu/android/dns/DnsManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->handler:Landroid/os/Handler;

    if-nez p1, :cond_26

    sget-object p1, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    :cond_26
    iput-object p1, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    invoke-virtual {p2}, [Lcom/qiniu/android/dns/IResolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiniu/android/dns/IResolver;

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    new-instance v0, Lcom/qiniu/android/dns/util/LruCache;

    invoke-direct {v0}, Lcom/qiniu/android/dns/util/LruCache;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    if-nez p3, :cond_3e

    new-instance p3, Lcom/qiniu/android/dns/DnsManager$DummySorter;

    invoke-direct {p3, v2}, Lcom/qiniu/android/dns/DnsManager$DummySorter;-><init>(Lcom/qiniu/android/dns/DnsManager$1;)V

    :cond_3e
    iput-object p3, p0, Lcom/qiniu/android/dns/DnsManager;->sorter:Lcom/qiniu/android/dns/IpSorter;

    invoke-static {}, Lcom/bsgamesdk/android/api/checknetspeed/a;->a()Lcom/bsgamesdk/android/api/checknetspeed/a;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->taskManager:Lcom/bsgamesdk/android/api/checknetspeed/a;

    return-void
.end method

.method static synthetic access$100(Lcom/qiniu/android/dns/DnsManager;)Lcom/qiniu/android/dns/util/LruCache;
    .registers 2

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qiniu/android/dns/DnsManager;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->testCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private clearCache()V
    .registers 3

    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    invoke-virtual {v0}, Lcom/qiniu/android/dns/util/LruCache;->clear()V

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->testCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->taskManager:Lcom/bsgamesdk/android/api/checknetspeed/a;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/checknetspeed/a;->b()V

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static needHttpDns()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Asia/Shanghai"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "Asia/Chongqing"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "Asia/Harbin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "Asia/Urumqi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_2b

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    const/4 v0, 0x1

    :cond_2a
    :goto_2a
    return v0

    :catch_2b
    move-exception v1

    goto :goto_2a
.end method

.method private queryInternal(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p1, Lcom/qiniu/android/dns/Domain;->hostsFirst:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    iget-object v3, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    invoke-virtual {v0, p1, v3}, Lcom/qiniu/android/dns/local/Hosts;->query(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v3, v0

    if-eqz v3, :cond_15

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    iget-object v3, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    monitor-enter v3

    :try_start_18
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    sget-object v4, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-static {}, Lcom/qiniu/android/dns/Network;->isNetworkChanged()Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    invoke-virtual {v0}, Lcom/qiniu/android/dns/util/LruCache;->clear()V

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->testCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->taskManager:Lcom/bsgamesdk/android/api/checknetspeed/a;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/checknetspeed/a;->b()V

    iget-object v4, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    monitor-enter v4
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_92

    const/4 v0, 0x0

    :try_start_3b
    iput v0, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_8f

    move-object v0, v2

    :cond_3f
    :goto_3f
    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_92

    iget v4, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    move v9, v1

    move-object v1, v0

    move-object v0, v2

    move v2, v9

    :goto_46
    iget-object v3, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    array-length v3, v3

    if-ge v2, v3, :cond_cc

    add-int v3, v4, v2

    iget-object v5, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    array-length v5, v5

    rem-int/2addr v3, v5

    iget-object v5, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    invoke-static {}, Lcom/qiniu/android/dns/Network;->getIp()Ljava/lang/String;

    move-result-object v6

    :try_start_57
    iget-object v7, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    aget-object v3, v7, v3

    iget-object v7, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    invoke-interface {v3, p1, v7}, Lcom/qiniu/android/dns/IResolver;->resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    :try_end_60
    .catch Lcom/qiniu/android/dns/http/DomainNotOwn; {:try_start_57 .. :try_end_60} :catch_156
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_60} :catch_153
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_60} :catch_bc

    move-result-object v1

    :cond_61
    :goto_61
    invoke-static {}, Lcom/qiniu/android/dns/Network;->getIp()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    if-ne v7, v5, :cond_cc

    if-eqz v1, :cond_6e

    array-length v5, v1

    if-nez v5, :cond_cc

    :cond_6e
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    iget-object v3, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    monitor-enter v3

    :try_start_77
    iget v5, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    if-ne v5, v4, :cond_8b

    iget v5, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    iget v5, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    iget-object v6, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    array-length v6, v6

    if-ne v5, v6, :cond_8b

    const/4 v5, 0x0

    iput v5, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    :cond_8b
    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_77 .. :try_end_8c} :catchall_c9

    :goto_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :catchall_8f
    move-exception v0

    :try_start_90
    monitor-exit v4
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    :try_start_91
    throw v0

    :catchall_92
    move-exception v0

    monitor-exit v3
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_92

    throw v0

    :cond_95
    :try_start_95
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    iget-object v4, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/qiniu/android/dns/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiniu/android/dns/Record;

    if-eqz v0, :cond_3f

    array-length v4, v0

    if-eqz v4, :cond_3f

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4}, Lcom/qiniu/android/dns/Record;->isExpired()Z

    move-result v4

    if-nez v4, :cond_ba

    array-length v1, v0

    if-le v1, v5, :cond_b3

    invoke-static {v0}, Lcom/qiniu/android/dns/DnsManager;->rotate([Lcom/qiniu/android/dns/Record;)V

    :cond_b3
    invoke-static {v0}, Lcom/qiniu/android/dns/DnsManager;->records2Ip([Lcom/qiniu/android/dns/Record;)[Ljava/lang/String;

    move-result-object v0

    monitor-exit v3
    :try_end_b8
    .catchall {:try_start_95 .. :try_end_b8} :catchall_92

    goto/16 :goto_14

    :cond_ba
    move-object v0, v2

    goto :goto_3f

    :catch_bc
    move-exception v3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_61

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_61

    :catchall_c9
    move-exception v0

    :try_start_ca
    monitor-exit v3
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw v0

    :cond_cc
    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    if-eqz v0, :cond_d4

    array-length v2, v0

    if-nez v2, :cond_f0

    :cond_d4
    iget-boolean v0, p1, Lcom/qiniu/android/dns/Domain;->hostsFirst:Z

    if-nez v0, :cond_e5

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    iget-object v2, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    invoke-virtual {v0, p1, v2}, Lcom/qiniu/android/dns/local/Hosts;->query(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e5

    array-length v2, v0

    if-nez v2, :cond_14

    :cond_e5
    if-eqz v1, :cond_e8

    throw v1

    :cond_e8
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f0
    invoke-static {v0}, Lcom/qiniu/android/dns/DnsManager;->trimCname([Lcom/qiniu/android/dns/Record;)[Lcom/qiniu/android/dns/Record;

    move-result-object v1

    array-length v0, v1

    if-nez v0, :cond_ff

    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "no A records"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ff
    iget-object v2, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    monitor-enter v2

    :try_start_102
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    iget-object v3, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/qiniu/android/dns/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->testCache:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_123

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->testCache:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_149

    :cond_123
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->testCache:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/qiniu/android/dns/DnsManager;->running:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/qiniu/android/dns/DnsManager;->running:I

    new-instance v0, Ljava/util/HashMap;

    array-length v3, v1

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iget-object v3, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/qiniu/android/dns/DnsManager;->taskManager:Lcom/bsgamesdk/android/api/checknetspeed/a;

    iget-object v4, p0, Lcom/qiniu/android/dns/DnsManager;->handler:Landroid/os/Handler;

    iget-object v5, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v5}, Lcom/bsgamesdk/android/api/checknetspeed/a;->a(Landroid/os/Handler;Ljava/util/HashMap;Ljava/lang/String;)V

    :cond_149
    monitor-exit v2
    :try_end_14a
    .catchall {:try_start_102 .. :try_end_14a} :catchall_150

    invoke-static {v1}, Lcom/qiniu/android/dns/DnsManager;->records2Ip([Lcom/qiniu/android/dns/Record;)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :catchall_150
    move-exception v0

    :try_start_151
    monitor-exit v2
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_150

    throw v0

    :catch_153
    move-exception v0

    goto/16 :goto_61

    :catch_156
    move-exception v3

    goto/16 :goto_8c
.end method

.method private static records2Ip([Lcom/qiniu/android/dns/Record;)[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v3, :cond_1b

    aget-object v4, p0, v1

    iget-object v4, v4, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_6
.end method

.method private static rotate([Lcom/qiniu/android/dns/Record;)V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_14

    array-length v0, p0

    if-le v0, v3, :cond_14

    aget-object v0, p0, v2

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v3, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aput-object v0, p0, v1

    :cond_14
    return-void
.end method

.method private static trimCname([Lcom/qiniu/android/dns/Record;)[Lcom/qiniu/android/dns/Record;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_19

    aget-object v3, p0, v0

    if-eqz v3, :cond_16

    iget v4, v3, Lcom/qiniu/android/dns/Record;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/qiniu/android/dns/Record;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiniu/android/dns/Record;

    return-object v0
.end method

.method public static validIP(Ljava/lang/String;)Z
    .registers 7

    const/4 v5, -0x1

    const/16 v4, 0xff

    const/16 v3, 0x2e

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_18

    :cond_17
    :goto_17
    return v0

    :cond_18
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    const/16 v2, 0x2e

    :try_start_23
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v5, :cond_33

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v4, :cond_17

    :cond_33
    const/16 v1, 0x2e

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v5, :cond_47

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v4, :cond_17

    :cond_47
    const/16 v2, 0x2e

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v5, :cond_79

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v1, v4, :cond_79

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v1, v4, :cond_79

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_76} :catch_7b

    move-result v1

    if-ne v1, v3, :cond_17

    :cond_79
    const/4 v0, 0x1

    goto :goto_17

    :catch_7b
    move-exception v1

    goto :goto_17
.end method


# virtual methods
.method public onNetworkChange(Lcom/qiniu/android/dns/NetworkInfo;)V
    .registers 4

    invoke-direct {p0}, Lcom/qiniu/android/dns/DnsManager;->clearCache()V

    if-nez p1, :cond_7

    sget-object p1, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    :cond_7
    iput-object p1, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_d
    iput v0, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw v0
.end method

.method public putHosts(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/DnsManager;
    .registers 4

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    invoke-virtual {v0, p1, p2}, Lcom/qiniu/android/dns/local/Hosts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/local/Hosts;

    return-object p0
.end method

.method public putHosts(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/android/dns/DnsManager;
    .registers 6

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    new-instance v1, Lcom/qiniu/android/dns/local/Hosts$Value;

    invoke-direct {v1, p2, p3}, Lcom/qiniu/android/dns/local/Hosts$Value;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v1}, Lcom/qiniu/android/dns/local/Hosts;->put(Ljava/lang/String;Lcom/qiniu/android/dns/local/Hosts$Value;)Lcom/qiniu/android/dns/local/Hosts;

    return-object p0
.end method

.method public query(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    if-nez p1, :cond_b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "null domain"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_36

    :cond_1b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty domain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iget-object v0, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/dns/DnsManager;->validIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    aput-object v2, v0, v1

    :cond_45
    :goto_45
    return-object v0

    :cond_46
    invoke-direct {p0, p1}, Lcom/qiniu/android/dns/DnsManager;->queryInternal(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    array-length v1, v0

    if-le v1, v2, :cond_45

    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->sorter:Lcom/qiniu/android/dns/IpSorter;

    invoke-interface {v1, v0}, Lcom/qiniu/android/dns/IpSorter;->sort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_45
.end method

.method public query(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/qiniu/android/dns/Domain;

    invoke-direct {v0, p1}, Lcom/qiniu/android/dns/Domain;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/qiniu/android/dns/DnsManager;->query(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryCache(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    sget-object v2, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/qiniu/android/dns/Network;->isNetworkChanged()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    invoke-virtual {v0}, Lcom/qiniu/android/dns/util/LruCache;->clear()V

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->testCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->taskManager:Lcom/bsgamesdk/android/api/checknetspeed/a;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/checknetspeed/a;->b()V

    invoke-static {}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryPreDomains()V

    iget-object v2, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    monitor-enter v2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_32

    const/4 v0, 0x0

    :try_start_29
    iput v0, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2f

    :cond_2c
    :goto_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_32

    const/4 v0, 0x0

    :goto_2e
    return-object v0

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v0

    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    iget-object v2, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qiniu/android/dns/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiniu/android/dns/Record;

    if-eqz v0, :cond_61

    array-length v2, v0

    if-eqz v2, :cond_61

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/qiniu/android/dns/Record;->isExpired()Z

    move-result v2

    if-nez v2, :cond_53

    invoke-static {v0}, Lcom/qiniu/android/dns/DnsManager;->records2Ip([Lcom/qiniu/android/dns/Record;)[Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_2e

    :cond_53
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    invoke-virtual {v0}, Lcom/qiniu/android/dns/util/LruCache;->clear()V

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->testCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryPreDomains()V

    goto :goto_2c

    :cond_61
    sget-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->storeDomain:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-static {v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryAysn(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_35 .. :try_end_70} :catchall_32

    goto :goto_2c
.end method

.method public queryInetAdress(Lcom/qiniu/android/dns/Domain;)[Ljava/net/InetAddress;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qiniu/android/dns/DnsManager;->query(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Ljava/net/InetAddress;

    const/4 v0, 0x0

    :goto_8
    array-length v3, v1

    if-ge v0, v3, :cond_16

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    return-object v2
.end method
