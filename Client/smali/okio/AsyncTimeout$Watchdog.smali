.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :goto_0
    :try_start_0
    const-class v1, Lokio/AsyncTimeout;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_e

    :try_start_3
    invoke-static {}, Lokio/AsyncTimeout;->awaitTimeout()Lokio/AsyncTimeout;

    move-result-object v0

    if-nez v0, :cond_10

    monitor-exit v1

    goto :goto_0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    :try_start_d
    throw v0
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_e} :catch_e

    :catch_e
    move-exception v0

    goto :goto_0

    :cond_10
    :try_start_10
    invoke-static {}, Lokio/AsyncTimeout;->access$000()Lokio/AsyncTimeout;

    move-result-object v2

    if-ne v0, v2, :cond_1c

    const/4 v0, 0x0

    invoke-static {v0}, Lokio/AsyncTimeout;->access$002(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    monitor-exit v1

    return-void

    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_b

    :try_start_1d
    invoke-virtual {v0}, Lokio/AsyncTimeout;->timedOut()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_e

    goto :goto_0
.end method
