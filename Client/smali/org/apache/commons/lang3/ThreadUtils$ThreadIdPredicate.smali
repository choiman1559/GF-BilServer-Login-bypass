.class public Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadIdPredicate"
.end annotation


# instance fields
.field private final threadId:J


# direct methods
.method public constructor <init>(J)V
    .registers 6
    .param p1, "threadId"    # J

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_11

    .line 337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The thread id must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_11
    iput-wide p1, p0, Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;->threadId:J

    .line 340
    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Thread;)Z
    .registers 6
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 344
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;->threadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
