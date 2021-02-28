.class public Lcom/mob/tools/gui/CachePool;
.super Ljava/lang/Object;
.source "CachePool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/CachePool$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private capacity:I

.field private head:Lcom/mob/tools/gui/CachePool$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/CachePool$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private size:I

.field private tail:Lcom/mob/tools/gui/CachePool$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/CachePool$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .prologue
    .line 19
    .local p0, "this":Lcom/mob/tools/gui/CachePool;, "Lcom/mob/tools/gui/CachePool<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/mob/tools/gui/CachePool;->capacity:I

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 108
    .local p0, "this":Lcom/mob/tools/gui/CachePool;, "Lcom/mob/tools/gui/CachePool<TK;TV;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v0, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/mob/tools/gui/CachePool;->size:I
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 110
    monitor-exit p0

    return-void

    .line 108
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mob/tools/gui/CachePool;, "Lcom/mob/tools/gui/CachePool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 76
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    if-nez v2, :cond_e

    .line 77
    const/4 v2, 0x0

    iput v2, p0, Lcom/mob/tools/gui/CachePool;->size:I

    .line 78
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_57

    .line 104
    :cond_c
    :goto_c
    monitor-exit p0

    return-object v1

    .line 80
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v2, v2, Lcom/mob/tools/gui/CachePool$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 81
    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v1, v1, Lcom/mob/tools/gui/CachePool$Node;->value:Ljava/lang/Object;

    goto :goto_c

    .line 84
    :cond_1d
    iget-object v0, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    .line 85
    .local v0, "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :cond_1f
    iget-object v2, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    if-eqz v2, :cond_c

    .line 86
    iget-object v0, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    .line 87
    iget-object v2, v0, Lcom/mob/tools/gui/CachePool$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 88
    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    if-nez v1, :cond_4a

    .line 89
    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    .line 90
    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v1, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    .line 96
    :goto_3a
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    .line 97
    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    .line 98
    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v0, v1, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    .line 99
    iput-object v0, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    .line 100
    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->value:Ljava/lang/Object;

    goto :goto_c

    .line 92
    :cond_4a
    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v2, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v2, v1, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    .line 93
    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v2, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v2, v1, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;
    :try_end_56
    .catchall {:try_start_e .. :try_end_56} :catchall_57

    goto :goto_3a

    .line 76
    .end local v0    # "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :catchall_57
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mob/tools/gui/CachePool;, "Lcom/mob/tools/gui/CachePool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 24
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_5
    iget v4, p0, Lcom/mob/tools/gui/CachePool;->capacity:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_2b

    if-gtz v4, :cond_c

    :cond_9
    move v2, v3

    .line 72
    :goto_a
    monitor-exit p0

    return v2

    .line 28
    :cond_c
    const/4 v0, 0x0

    .line 29
    .local v0, "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :goto_d
    :try_start_d
    iget v3, p0, Lcom/mob/tools/gui/CachePool;->size:I

    iget v4, p0, Lcom/mob/tools/gui/CachePool;->capacity:I

    if-lt v3, v4, :cond_53

    .line 30
    iget-object v0, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    .line 31
    if-nez v0, :cond_41

    .line 32
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v4, "size != 0 but tail == null, this must meet any mistake! fix me!!"

    invoke-virtual {v3, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 33
    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    .line 34
    .local v1, "n1":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    if-nez v1, :cond_2e

    .line 35
    const/4 v3, 0x0

    iput v3, p0, Lcom/mob/tools/gui/CachePool;->size:I

    .line 36
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_2b

    goto :goto_d

    .line 24
    .end local v0    # "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    .end local v1    # "n1":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 38
    .restart local v0    # "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    .restart local v1    # "n1":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :cond_2e
    const/4 v3, 0x1

    :try_start_2f
    iput v3, p0, Lcom/mob/tools/gui/CachePool;->size:I

    .line 39
    :goto_31
    iget-object v3, v1, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    if-eqz v3, :cond_3e

    .line 40
    iget v3, p0, Lcom/mob/tools/gui/CachePool;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mob/tools/gui/CachePool;->size:I

    .line 41
    iget-object v1, v1, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    goto :goto_31

    .line 43
    :cond_3e
    iput-object v1, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    goto :goto_d

    .line 46
    .end local v1    # "n1":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :cond_41
    iget-object v3, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v3, v3, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v3, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    .line 47
    iget-object v3, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    .line 48
    iget v3, p0, Lcom/mob/tools/gui/CachePool;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mob/tools/gui/CachePool;->size:I

    goto :goto_d

    .line 52
    :cond_53
    if-nez v0, :cond_5b

    .line 53
    new-instance v0, Lcom/mob/tools/gui/CachePool$Node;

    .end local v0    # "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/mob/tools/gui/CachePool$Node;-><init>(Lcom/mob/tools/gui/CachePool$1;)V

    .line 55
    .restart local v0    # "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :cond_5b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/mob/tools/gui/CachePool$Node;->access$102(Lcom/mob/tools/gui/CachePool$Node;J)J

    .line 56
    iput-object p1, v0, Lcom/mob/tools/gui/CachePool$Node;->key:Ljava/lang/Object;

    .line 57
    iput-object p2, v0, Lcom/mob/tools/gui/CachePool$Node;->value:Ljava/lang/Object;

    .line 58
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    .line 59
    iget-object v3, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v3, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    .line 61
    iget v3, p0, Lcom/mob/tools/gui/CachePool;->size:I

    if-nez v3, :cond_7c

    .line 62
    iput-object v0, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    .line 70
    :goto_73
    iput-object v0, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    .line 71
    iget v3, p0, Lcom/mob/tools/gui/CachePool;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mob/tools/gui/CachePool;->size:I

    goto :goto_a

    .line 63
    :cond_7c
    iget-object v3, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    if-eqz v3, :cond_85

    .line 64
    iget-object v3, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v0, v3, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    goto :goto_73

    .line 66
    :cond_85
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v4, "size != 0 but head == null, this must meet any mistake! fix me!!"

    invoke-virtual {v3, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 67
    iput-object v0, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    .line 68
    const/4 v3, 0x0

    iput v3, p0, Lcom/mob/tools/gui/CachePool;->size:I
    :try_end_93
    .catchall {:try_start_2f .. :try_end_93} :catchall_2b

    goto :goto_73
.end method

.method public size()I
    .registers 2

    .prologue
    .line 136
    .local p0, "this":Lcom/mob/tools/gui/CachePool;, "Lcom/mob/tools/gui/CachePool<TK;TV;>;"
    iget v0, p0, Lcom/mob/tools/gui/CachePool;->size:I

    return v0
.end method

.method public declared-synchronized trimBeforeTime(J)V
    .registers 8
    .param p1, "time"    # J

    .prologue
    .line 113
    .local p0, "this":Lcom/mob/tools/gui/CachePool;, "Lcom/mob/tools/gui/CachePool<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/mob/tools/gui/CachePool;->capacity:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3e

    if-gtz v1, :cond_7

    .line 133
    :cond_5
    monitor-exit p0

    return-void

    .line 117
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    .line 118
    .local v0, "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :goto_9
    if-eqz v0, :cond_5

    .line 119
    invoke-static {v0}, Lcom/mob/tools/gui/CachePool$Node;->access$100(Lcom/mob/tools/gui/CachePool$Node;)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-gez v1, :cond_3b

    .line 120
    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    if-eqz v1, :cond_1d

    .line 121
    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v2, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v2, v1, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    .line 123
    :cond_1d
    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    if-eqz v1, :cond_27

    .line 124
    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v2, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v2, v1, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    .line 126
    :cond_27
    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 127
    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v1, v1, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v1, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    .line 129
    :cond_35
    iget v1, p0, Lcom/mob/tools/gui/CachePool;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mob/tools/gui/CachePool;->size:I

    .line 131
    :cond_3b
    iget-object v0, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3e

    goto :goto_9

    .line 113
    .end local v0    # "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :catchall_3e
    move-exception v1

    monitor-exit p0

    throw v1
.end method
