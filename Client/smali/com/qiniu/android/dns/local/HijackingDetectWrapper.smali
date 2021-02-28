.class public final Lcom/qiniu/android/dns/local/HijackingDetectWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# instance fields
.field private final resolver:Lcom/qiniu/android/dns/local/Resolver;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/dns/local/Resolver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    return-void
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    invoke-virtual {v1, p1, p2}, Lcom/qiniu/android/dns/local/Resolver;->resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;

    move-result-object v2

    iget-boolean v1, p1, Lcom/qiniu/android/dns/Domain;->hasCname:Z

    if-eqz v1, :cond_2d

    array-length v3, v2

    move v1, v0

    :goto_d
    if-ge v1, v3, :cond_58

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v1, 0x1

    :goto_18
    if-nez v1, :cond_2d

    new-instance v0, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object v1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    iget-object v2, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    iget-object v2, v2, Lcom/qiniu/android/dns/local/Resolver;->address:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2d
    iget v1, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-eqz v1, :cond_57

    array-length v1, v2

    :goto_32
    if-ge v0, v1, :cond_57

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v4

    if-nez v4, :cond_54

    iget v4, v3, Lcom/qiniu/android/dns/Record;->ttl:I

    iget v5, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-le v4, v5, :cond_54

    new-instance v0, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object v1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    iget-object v2, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    iget-object v2, v2, Lcom/qiniu/android/dns/local/Resolver;->address:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iget v3, v3, Lcom/qiniu/android/dns/Record;->ttl:I

    invoke-direct {v0, v1, v2, v3}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_57
    return-object v2

    :cond_58
    move v1, v0

    goto :goto_18
.end method
