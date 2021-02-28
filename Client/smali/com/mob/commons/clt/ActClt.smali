.class public Lcom/mob/commons/clt/ActClt;
.super Ljava/lang/Object;
.source "ActClt.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static a:Lcom/mob/commons/clt/ActClt;


# instance fields
.field private b:Z

.field private c:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/mob/commons/clt/ActClt$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/clt/ActClt$1;-><init>(Lcom/mob/commons/clt/ActClt;)V

    .line 71
    invoke-virtual {v0}, Lcom/mob/commons/clt/ActClt$1;->start()V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/mob/commons/clt/ActClt;Landroid/app/Activity;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 16
    iput-object p1, p0, Lcom/mob/commons/clt/ActClt;->c:Landroid/app/Activity;

    return-object p1
.end method

.method private a()V
    .registers 5

    .prologue
    .line 76
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v1, "type"

    const-string v2, "PV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "datetime"

    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/mob/commons/b;->a()Lcom/mob/commons/b;

    move-result-object v1

    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/mob/commons/b;->a(JLjava/util/HashMap;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    .line 83
    :goto_24
    return-void

    .line 80
    :catch_25
    move-exception v0

    .line 81
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method static synthetic a(Lcom/mob/commons/clt/ActClt;)V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mob/commons/clt/ActClt;->a()V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/clt/ActClt;Z)Z
    .registers 2

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/mob/commons/clt/ActClt;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/mob/commons/clt/ActClt;)Z
    .registers 2

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/mob/commons/clt/ActClt;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/mob/commons/clt/ActClt;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mob/commons/clt/ActClt;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public static declared-synchronized startCollector()V
    .registers 2

    .prologue
    .line 23
    const-class v1, Lcom/mob/commons/clt/ActClt;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mob/commons/clt/ActClt;->a:Lcom/mob/commons/clt/ActClt;

    if-nez v0, :cond_e

    .line 24
    new-instance v0, Lcom/mob/commons/clt/ActClt;

    invoke-direct {v0}, Lcom/mob/commons/clt/ActClt;-><init>()V

    sput-object v0, Lcom/mob/commons/clt/ActClt;->a:Lcom/mob/commons/clt/ActClt;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 26
    :cond_e
    monitor-exit v1

    return-void

    .line 23
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method
