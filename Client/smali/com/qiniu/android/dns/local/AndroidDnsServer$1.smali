.class final Lcom/qiniu/android/dns/local/AndroidDnsServer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/dns/local/AndroidDnsServer;->defaultResolver()Lcom/qiniu/android/dns/IResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/qiniu/android/dns/local/AndroidDnsServer;->getByReflection()[Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_76

    invoke-static {}, Lcom/qiniu/android/dns/local/AndroidDnsServer;->getByCommand()[Ljava/net/InetAddress;

    move-result-object v0

    move-object v2, v0

    :goto_c
    if-nez v2, :cond_16

    new-instance v0, Ljava/io/IOException;

    const-string v1, "cant get local dns server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;

    new-instance v3, Lcom/qiniu/android/dns/local/Resolver;

    aget-object v4, v2, v1

    invoke-direct {v3, v4}, Lcom/qiniu/android/dns/local/Resolver;-><init>(Ljava/net/InetAddress;)V

    invoke-direct {v0, v3}, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;-><init>(Lcom/qiniu/android/dns/local/Resolver;)V

    invoke-interface {v0, p1, p2}, Lcom/qiniu/android/dns/IResolver;->resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;

    move-result-object v3

    iget-boolean v0, p1, Lcom/qiniu/android/dns/Domain;->hasCname:Z

    if-eqz v0, :cond_4a

    array-length v4, v3

    move v0, v1

    :goto_2c
    if-ge v0, v4, :cond_74

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v0, 0x1

    :goto_37
    if-nez v0, :cond_4a

    new-instance v0, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object v3, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_4a
    iget v0, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-eqz v0, :cond_73

    array-length v4, v3

    move v0, v1

    :goto_50
    if-ge v0, v4, :cond_73

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v6

    if-nez v6, :cond_70

    iget v6, v5, Lcom/qiniu/android/dns/Record;->ttl:I

    iget v7, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-le v6, v7, :cond_70

    new-instance v0, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object v3, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, v5, Lcom/qiniu/android/dns/Record;->ttl:I

    invoke-direct {v0, v3, v1, v2}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_73
    return-object v3

    :cond_74
    move v0, v1

    goto :goto_37

    :cond_76
    move-object v2, v0

    goto :goto_c
.end method
