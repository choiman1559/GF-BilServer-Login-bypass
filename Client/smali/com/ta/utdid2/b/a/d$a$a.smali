.class public final Lcom/ta/utdid2/b/a/d$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ta/utdid2/b/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/b/a/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ta/utdid2/b/a/d$a;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/b/a/d$a;)V
    .registers 3

    iput-object p1, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->k:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ta/utdid2/b/a/b$a;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public a(Ljava/lang/String;F)Lcom/ta/utdid2/b/a/b$a;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b$a;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public a(Ljava/lang/String;J)Lcom/ta/utdid2/b/a/b$a;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/b/a/b$a;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public a(Ljava/lang/String;Z)Lcom/ta/utdid2/b/a/b$a;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public b()Lcom/ta/utdid2/b/a/b$a;
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->k:Z

    monitor-exit p0

    return-object p0

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public commit()Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ta/utdid2/b/a/d;->a()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_8
    iget-object v3, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v3}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    if-lez v3, :cond_15

    move v2, v1

    :cond_15
    if-eqz v2, :cond_c3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v3}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    move-object v4, v1

    :goto_2d
    monitor-enter p0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_72

    :try_start_2e
    iget-boolean v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->k:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v0}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->k:Z

    :cond_3e
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_48
    :goto_48
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_75

    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v0}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_69
    if-eqz v2, :cond_48

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :catchall_6f
    move-exception v0

    monitor-exit p0
    :try_end_71
    .catchall {:try_start_2e .. :try_end_71} :catchall_6f

    :try_start_71
    throw v0

    :catchall_72
    move-exception v0

    monitor-exit v5
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_72

    throw v0

    :cond_75
    :try_start_75
    iget-object v7, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v7}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    :cond_7f
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit p0
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_6f

    :try_start_85
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v0}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Z

    move-result v6

    if-eqz v6, :cond_93

    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/b/a/d$a;->a(Z)V

    :cond_93
    monitor-exit v5
    :try_end_94
    .catchall {:try_start_85 .. :try_end_94} :catchall_72

    if-eqz v2, :cond_c2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_9d
    if-ltz v2, :cond_c2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_aa
    :goto_aa
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/utdid2/b/a/b$b;

    if-eqz v0, :cond_aa

    iget-object v7, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-interface {v0, v7, v1}, Lcom/ta/utdid2/b/a/b$b;->a(Lcom/ta/utdid2/b/a/b;Ljava/lang/String;)V

    goto :goto_aa

    :cond_be
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_9d

    :cond_c2
    return v6

    :cond_c3
    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_2d
.end method
