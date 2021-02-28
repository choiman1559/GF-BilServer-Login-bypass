.class public final Lcom/qiniu/android/dns/local/Hosts;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/dns/local/Hosts$Value;
    }
.end annotation


# instance fields
.field private final hosts:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/qiniu/android/dns/local/Hosts$Value;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/dns/local/Hosts;->hosts:Ljava/util/Hashtable;

    return-void
.end method

.method private filter(Ljava/util/LinkedList;Lcom/qiniu/android/dns/NetworkInfo;)Ljava/util/LinkedList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/qiniu/android/dns/local/Hosts$Value;",
            ">;",
            "Lcom/qiniu/android/dns/NetworkInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/qiniu/android/dns/local/Hosts$Value;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/dns/local/Hosts$Value;

    iget v4, v0, Lcom/qiniu/android/dns/local/Hosts$Value;->provider:I

    if-nez v4, :cond_21

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_21
    iget v4, p2, Lcom/qiniu/android/dns/NetworkInfo;->provider:I

    if-eqz v4, :cond_e

    iget v4, v0, Lcom/qiniu/android/dns/local/Hosts$Value;->provider:I

    iget v5, p2, Lcom/qiniu/android/dns/NetworkInfo;->provider:I

    if-ne v4, v5, :cond_e

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2f
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_37

    move-object v0, v1

    :goto_36
    return-object v0

    :cond_37
    move-object v0, v2

    goto :goto_36
.end method


# virtual methods
.method public declared-synchronized put(Ljava/lang/String;Lcom/qiniu/android/dns/local/Hosts$Value;)Lcom/qiniu/android/dns/local/Hosts;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/qiniu/android/dns/local/Hosts;->hosts:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_10
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/qiniu/android/dns/local/Hosts;->hosts:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object p0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/local/Hosts;
    .registers 4

    new-instance v0, Lcom/qiniu/android/dns/local/Hosts$Value;

    invoke-direct {v0, p2}, Lcom/qiniu/android/dns/local/Hosts$Value;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/qiniu/android/dns/local/Hosts;->put(Ljava/lang/String;Lcom/qiniu/android/dns/local/Hosts$Value;)Lcom/qiniu/android/dns/local/Hosts;

    return-object p0
.end method

.method public declared-synchronized query(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/qiniu/android/dns/local/Hosts;->hosts:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_34

    move-result v1

    if-eqz v1, :cond_16

    :cond_13
    const/4 v0, 0x0

    :goto_14
    monitor-exit p0

    return-object v0

    :cond_16
    :try_start_16
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/dns/local/Hosts$Value;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2b
    invoke-direct {p0, v0, p2}, Lcom/qiniu/android/dns/local/Hosts;->filter(Ljava/util/LinkedList;Lcom/qiniu/android/dns/NetworkInfo;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qiniu/android/dns/local/Hosts;->toIps(Ljava/util/LinkedList;)[Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_34

    move-result-object v0

    goto :goto_14

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toIps(Ljava/util/LinkedList;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/qiniu/android/dns/local/Hosts$Value;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_19

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/dns/local/Hosts$Value;

    iget-object v0, v0, Lcom/qiniu/android/dns/local/Hosts$Value;->ip:Ljava/lang/String;

    aput-object v0, v3, v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1b

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_19
    monitor-exit p0

    return-object v3

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
