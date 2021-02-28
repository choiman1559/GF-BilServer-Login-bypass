.class public Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;
    }
.end annotation


# static fields
.field public static dns:Lcom/qiniu/android/dns/DnsManager;

.field public static final storeDomain:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->storeDomain:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_2
    new-array v1, v1, [Lcom/qiniu/android/dns/IResolver;

    const/4 v2, 0x1

    new-instance v3, Lcom/qiniu/android/dns/local/Resolver;

    const-string v4, "114.114.115.115"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qiniu/android/dns/local/Resolver;-><init>(Ljava/net/InetAddress;)V

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-static {}, Lcom/qiniu/android/dns/local/AndroidDnsServer;->defaultResolver()Lcom/qiniu/android/dns/IResolver;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/qiniu/android/dns/DnsManager;

    sget-object v3, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    invoke-direct {v2, v3, v1}, Lcom/qiniu/android/dns/DnsManager;-><init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;)V

    sput-object v2, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->dns:Lcom/qiniu/android/dns/DnsManager;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move v1, v0

    :goto_28
    sget-object v3, Lcom/bsgamesdk/android/api/b;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_37

    sget-object v3, Lcom/bsgamesdk/android/api/b;->a:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_37
    const-string v1, "http://api.bilibili.com"

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "https://api.bilibili.com"

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v1, v0

    :goto_42
    sget-object v3, Lcom/bsgamesdk/android/api/b;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_51

    sget-object v3, Lcom/bsgamesdk/android/api/b;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_51
    sget-object v1, Lcom/bsgamesdk/android/api/b;->c:[Ljava/lang/String;

    array-length v3, v1

    :goto_54
    if-ge v0, v3, :cond_62

    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5b} :catch_5e

    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :catch_5e
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :cond_62
    return-void
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_2
    new-array v1, v1, [Lcom/qiniu/android/dns/IResolver;

    const/4 v2, 0x1

    new-instance v3, Lcom/qiniu/android/dns/local/Resolver;

    const-string v4, "114.114.115.115"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qiniu/android/dns/local/Resolver;-><init>(Ljava/net/InetAddress;)V

    aput-object v3, v1, v2

    const/4 v2, 0x0

    new-instance v3, Lcom/qiniu/android/dns/http/DnspodEnterprise;

    invoke-direct {v3, p0, p1}, Lcom/qiniu/android/dns/http/DnspodEnterprise;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/qiniu/android/dns/DnsManager;

    sget-object v3, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    invoke-direct {v2, v3, v1}, Lcom/qiniu/android/dns/DnsManager;-><init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;)V

    sput-object v2, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->dns:Lcom/qiniu/android/dns/DnsManager;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move v1, v0

    :goto_29
    sget-object v3, Lcom/bsgamesdk/android/api/b;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_38

    sget-object v3, Lcom/bsgamesdk/android/api/b;->a:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_38
    const-string v1, "http://api.bilibili.com"

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "https://api.bilibili.com"

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v1, v0

    :goto_43
    sget-object v3, Lcom/bsgamesdk/android/api/b;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_52

    sget-object v3, Lcom/bsgamesdk/android/api/b;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_52
    sget-object v1, Lcom/bsgamesdk/android/api/b;->c:[Ljava/lang/String;

    array-length v3, v1

    :goto_55
    if-ge v0, v3, :cond_63

    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5c} :catch_5f

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :catch_5f
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :cond_63
    return-void
.end method

.method public static isIp(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0xff

    invoke-static {p0}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->trimSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v4, :cond_39

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v4, :cond_39

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v4, :cond_39

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v2, v4, :cond_39

    :goto_38
    return v0

    :cond_39
    move v0, v1

    goto :goto_38
.end method

.method public static preLoadDomains(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_29

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/dns/util/Tools;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->storeDomain:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->storeDomain:Ljava/util/HashMap;

    sget-object v3, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;->UnParse:Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryAysn(Ljava/lang/String;)V

    goto :goto_6

    :cond_29
    return-void
.end method

.method public static preLoadDomains([Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/qiniu/android/dns/util/Tools;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->storeDomain:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1c

    sget-object v2, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->storeDomain:Ljava/util/HashMap;

    sget-object v3, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;->UnParse:Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryAysn(Ljava/lang/String;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method public static query(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/qiniu/android/dns/util/Tools;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->dns:Lcom/qiniu/android/dns/DnsManager;

    invoke-virtual {v1, v0}, Lcom/qiniu/android/dns/DnsManager;->query(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    array-length v2, v1

    if-lez v2, :cond_16

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object p0

    :cond_16
    :goto_16
    return-object p0

    :catch_17
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_16
.end method

.method public static queryAysn(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->dns:Lcom/qiniu/android/dns/DnsManager;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->init()V

    :cond_7
    sget-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->dns:Lcom/qiniu/android/dns/DnsManager;

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-static {p0}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->isIp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->getInstance()Lcom/qiniu/android/dns/util/RealTimeThreadPool;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_b
.end method

.method public static queryCacheGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .registers 4

    invoke-static {p0}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->querycache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "host"

    invoke-static {p0}, Lcom/qiniu/android/dns/util/Tools;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-object v1
.end method

.method public static queryCacheGet(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpGet;
    .registers 5

    if-nez p1, :cond_1b

    invoke-static {p0}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->querycache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "host"

    invoke-static {p0}, Lcom/qiniu/android/dns/util/Tools;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public static queryCachePost(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    :try_start_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3a} :catch_3b

    goto :goto_1a

    :catch_3b
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :cond_3f
    :goto_3f
    return-object v2

    :cond_40
    :try_start_40
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, v3, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4a} :catch_3b

    goto :goto_3f
.end method

.method public static queryCachePost(Ljava/lang/String;Ljava/util/Map;Z)Lorg/apache/http/client/methods/HttpPost;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    :try_start_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3a} :catch_3b

    goto :goto_1a

    :catch_3b
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :cond_3f
    :goto_3f
    return-object v2

    :cond_40
    :try_start_40
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, v3, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4a} :catch_3b

    goto :goto_3f
.end method

.method public static queryGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .registers 4

    invoke-static {p0}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "host"

    invoke-static {p0}, Lcom/qiniu/android/dns/util/Tools;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-object v1
.end method

.method public static queryPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .registers 4

    invoke-static {p0}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "host"

    invoke-static {p0}, Lcom/qiniu/android/dns/util/Tools;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-object v1
.end method

.method public static queryPreDomains()V
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->storeDomain:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryAysn(Ljava/lang/String;)V

    goto :goto_a

    :cond_22
    return-void
.end method

.method public static querycache(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/qiniu/android/dns/util/Tools;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->dns:Lcom/qiniu/android/dns/DnsManager;

    new-instance v2, Lcom/qiniu/android/dns/Domain;

    invoke-direct {v2, v0}, Lcom/qiniu/android/dns/Domain;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/qiniu/android/dns/DnsManager;->queryCache(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v2, v1

    if-lez v2, :cond_6

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_33

    move-result-object p0

    goto :goto_6

    :catch_33
    move-exception v0

    goto :goto_6
.end method

.method public static trimSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :goto_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_16
    :goto_16
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    :cond_2e
    return-object p0
.end method
