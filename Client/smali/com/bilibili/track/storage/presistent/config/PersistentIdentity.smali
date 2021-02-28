.class public abstract Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final loadStoredPreferences:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final persistentKey:Ljava/lang/String;

.field private final serializer:Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/lang/String;Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->loadStoredPreferences:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->serializer:Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer;

    iput-object p2, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->persistentKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public commit(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->item:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->loadStoredPreferences:Ljava/util/concurrent/Future;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->loadStoredPreferences:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;
    :try_end_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_e} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_e} :catch_15
    .catchall {:try_start_6 .. :try_end_e} :catchall_3a

    :goto_e
    if-nez v0, :cond_18

    :try_start_10
    monitor-exit v2

    :goto_11
    return-void

    :catch_12
    move-exception v0

    move-object v0, v1

    goto :goto_e

    :catch_15
    move-exception v0

    move-object v0, v1

    goto :goto_e

    :cond_18
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->item:Ljava/lang/Object;

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->serializer:Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer;

    invoke-interface {v1}, Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer;->create()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->item:Ljava/lang/Object;

    :cond_28
    iget-object v1, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->persistentKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->serializer:Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer;

    iget-object v4, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->item:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer;->save(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2

    goto :goto_11

    :catchall_3a
    move-exception v0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->item:Ljava/lang/Object;

    if-nez v0, :cond_25

    iget-object v2, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->loadStoredPreferences:Ljava/util/concurrent/Future;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->loadStoredPreferences:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    if-eqz v0, :cond_38

    iget-object v3, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->persistentKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_18} :catch_36
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_18} :catch_34
    .catchall {:try_start_8 .. :try_end_18} :catchall_31

    move-result-object v0

    :goto_19
    move-object v1, v0

    :goto_1a
    if-nez v1, :cond_28

    :try_start_1c
    iget-object v0, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->serializer:Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer;

    invoke-interface {v0}, Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->item:Ljava/lang/Object;

    :goto_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_31

    :cond_25
    iget-object v0, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->item:Ljava/lang/Object;

    return-object v0

    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->serializer:Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer;

    invoke-interface {v0, v1}, Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;->item:Ljava/lang/Object;

    goto :goto_24

    :catchall_31
    move-exception v0

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw v0

    :catch_34
    move-exception v0

    goto :goto_1a

    :catch_36
    move-exception v0

    goto :goto_1a

    :cond_38
    move-object v0, v1

    goto :goto_19
.end method
