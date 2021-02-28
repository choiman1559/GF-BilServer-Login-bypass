.class public Lcom/android/data/sdk/domain/model/SchemaHostList;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_HEART_BEAT:I = 0x0

.field public static final TYPE_REPORT_DATA:I = 0x1


# instance fields
.field private httpFreeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpsFreeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpsList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isHttps:Z


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->isHttps:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpLists:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsList:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsList:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpFreeList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsFreeList:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpFreeList:Ljava/util/LinkedList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsFreeList:Ljava/util/LinkedList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/data/sdk/domain/model/SchemaHostList;->getConfigSchemaHostList()Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/util/LinkedList;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_16

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    return-void

    :cond_17
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method private b(Ljava/util/LinkedList;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_1c

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_16
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1c
    return-void
.end method


# virtual methods
.method public declared-synchronized bestConfigSchemaHost()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpLists:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpLists:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1b

    :goto_16
    monitor-exit p0

    return-object v0

    :cond_18
    :try_start_18
    const-string v0, ""
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_1b

    goto :goto_16

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bestSchemaHost(I)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    packed-switch p1, :pswitch_data_38

    :try_start_4
    iget-boolean v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->isHttps:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsList:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_35

    :goto_11
    monitor-exit p0

    return-object v0

    :pswitch_13
    :try_start_13
    iget-boolean v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->isHttps:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsFreeList:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_11

    :cond_21
    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpFreeList:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_11

    :cond_2b
    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpList:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_35

    goto :goto_11

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_13
    .end packed-switch
.end method

.method public declared-synchronized getConfigSchemaHostList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsList:Ljava/util/LinkedList;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpLists:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_19
    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpList:Ljava/util/LinkedList;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpLists:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2c
    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpLists:Ljava/util/ArrayList;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    monitor-exit p0

    return-object v0

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSchema(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->isHttps:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_9

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-object p2

    :cond_7
    move-object p2, p1

    goto :goto_5

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSchemaFreeHostList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->isHttps:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsFreeList:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    :goto_c
    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpFreeList:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_c

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSchemaHostList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->isHttps:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsList:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    :goto_c
    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpList:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_c

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHttpList(Ljava/lang/String;I)Lcom/android/data/sdk/domain/model/SchemaHostList;
    .registers 4

    monitor-enter p0

    packed-switch p2, :pswitch_data_16

    :goto_4
    monitor-exit p0

    return-object p0

    :pswitch_6
    :try_start_6
    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/android/data/sdk/domain/model/SchemaHostList;->b(Ljava/util/LinkedList;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    goto :goto_4

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_f
    :try_start_f
    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpFreeList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/android/data/sdk/domain/model/SchemaHostList;->b(Ljava/util/LinkedList;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_c

    goto :goto_4

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
    .end packed-switch
.end method

.method public declared-synchronized setHttpsList(Ljava/lang/String;I)Lcom/android/data/sdk/domain/model/SchemaHostList;
    .registers 4

    monitor-enter p0

    packed-switch p2, :pswitch_data_16

    :goto_4
    monitor-exit p0

    return-object p0

    :pswitch_6
    :try_start_6
    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/android/data/sdk/domain/model/SchemaHostList;->b(Ljava/util/LinkedList;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    goto :goto_4

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_f
    :try_start_f
    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsFreeList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/android/data/sdk/domain/model/SchemaHostList;->b(Ljava/util/LinkedList;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_c

    goto :goto_4

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
    .end packed-switch
.end method

.method public declared-synchronized setHttpsToggle(I)V
    .registers 3

    const/4 v0, 0x1

    monitor-enter p0

    if-ne p1, v0, :cond_8

    :goto_4
    :try_start_4
    iput-boolean v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->isHttps:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_a

    monitor-exit p0

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sortSchemaFreeHosts(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpFreeList:Ljava/util/LinkedList;

    :cond_37
    :goto_37
    invoke-direct {p0, v0, v1}, Lcom/android/data/sdk/domain/model/SchemaHostList;->a(Ljava/util/LinkedList;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_4f

    :cond_3a
    monitor-exit p0

    return-void

    :cond_3c
    :try_start_3c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsFreeList:Ljava/util/LinkedList;
    :try_end_4e
    .catchall {:try_start_3c .. :try_end_4e} :catchall_4f

    goto :goto_37

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sortSchemaHosts(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpList:Ljava/util/LinkedList;

    :cond_37
    :goto_37
    invoke-direct {p0, v0, v1}, Lcom/android/data/sdk/domain/model/SchemaHostList;->a(Ljava/util/LinkedList;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_4f

    :cond_3a
    monitor-exit p0

    return-void

    :cond_3c
    :try_start_3c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/SchemaHostList;->httpsList:Ljava/util/LinkedList;
    :try_end_4e
    .catchall {:try_start_3c .. :try_end_4e} :catchall_4f

    goto :goto_37

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
