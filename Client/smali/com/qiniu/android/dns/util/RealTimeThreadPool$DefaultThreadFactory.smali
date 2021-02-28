.class Lcom/qiniu/android/dns/util/RealTimeThreadPool$DefaultThreadFactory;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/dns/util/RealTimeThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultThreadFactory"
.end annotation


# static fields
.field private static final poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final group:Ljava/lang/ThreadGroup;

.field private final namePrefix:Ljava/lang/String;

.field private final threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/qiniu/android/dns/util/RealTimeThreadPool$DefaultThreadFactory;->poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/qiniu/android/dns/util/RealTimeThreadPool$DefaultThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    :goto_15
    iput-object v0, p0, Lcom/qiniu/android/dns/util/RealTimeThreadPool$DefaultThreadFactory;->group:Ljava/lang/ThreadGroup;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pool-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qiniu/android/dns/util/RealTimeThreadPool$DefaultThreadFactory;->poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/dns/util/RealTimeThreadPool$DefaultThreadFactory;->namePrefix:Ljava/lang/String;

    return-void

    :cond_39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    goto :goto_15
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 9

    const/4 v6, 0x5

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/qiniu/android/dns/util/RealTimeThreadPool$DefaultThreadFactory;->group:Ljava/lang/ThreadGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qiniu/android/dns/util/RealTimeThreadPool$DefaultThreadFactory;->namePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qiniu/android/dns/util/RealTimeThreadPool$DefaultThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    if-eq v1, v6, :cond_37

    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setPriority(I)V

    :cond_37
    return-object v0
.end method
