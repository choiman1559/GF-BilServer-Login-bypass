.class public Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;
.implements Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamePredicate"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :goto_7
    const-string v2, "The name must not be null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iput-object p1, p0, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;->name:Ljava/lang/String;

    .line 308
    return-void

    :cond_11
    move v0, v1

    .line 306
    goto :goto_7
.end method


# virtual methods
.method public test(Ljava/lang/Thread;)Z
    .registers 4
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 317
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public test(Ljava/lang/ThreadGroup;)Z
    .registers 4
    .param p1, "threadGroup"    # Ljava/lang/ThreadGroup;

    .prologue
    .line 312
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
