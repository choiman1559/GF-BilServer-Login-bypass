.class public Lcom/tencent/tp/TssInfoPublisher;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tp/TssInfoPublisher$TssInfoReceiver;
    }
.end annotation


# static fields
.field public static final TSS_INFO_TYPE_DETECT_RESULT:I = 0x1

.field public static final TSS_INFO_TYPE_HEARTBEAT:I = 0x2

.field private static volatile a:Lcom/tencent/tp/TssInfoPublisher;

.field private static b:Ljava/lang/Thread;

.field private static volatile c:Z


# instance fields
.field private d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tp/TssInfoPublisher;->a:Lcom/tencent/tp/TssInfoPublisher;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/tp/TssInfoPublisher;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tp/TssInfoPublisher;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/tencent/tp/TssInfoPublisher;
    .registers 2

    sget-object v0, Lcom/tencent/tp/TssInfoPublisher;->a:Lcom/tencent/tp/TssInfoPublisher;

    if-nez v0, :cond_13

    const-class v1, Lcom/tencent/tp/TssInfoPublisher;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/tp/TssInfoPublisher;->a:Lcom/tencent/tp/TssInfoPublisher;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/tp/TssInfoPublisher;

    invoke-direct {v0}, Lcom/tencent/tp/TssInfoPublisher;-><init>()V

    sput-object v0, Lcom/tencent/tp/TssInfoPublisher;->a:Lcom/tencent/tp/TssInfoPublisher;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tencent/tp/TssInfoPublisher;->a:Lcom/tencent/tp/TssInfoPublisher;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    if-nez p2, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/tencent/tp/TssInfoPublisher;

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/tencent/tp/TssInfoPublisher;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_25

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tp/TssInfoPublisher$TssInfoReceiver;

    invoke-interface {v0, p1, p2}, Lcom/tencent/tp/TssInfoPublisher$TssInfoReceiver;->onReceive(ILjava/lang/String;)V

    goto :goto_15

    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method private static b()I
    .registers 1

    :try_start_0
    const-string v0, "dgx_jkzi_kdkz"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result v0

    :goto_e
    return v0

    :catch_f
    move-exception v0

    const/4 v0, -0x1

    goto :goto_e
.end method

.method private static c()V
    .registers 1

    :try_start_0
    const-string v0, "dgx_xgjnz_kdkz"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private static d()Ljava/lang/String;
    .registers 1

    :try_start_0
    const-string v0, "dgx_mzxq_kdkz"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const-string v0, "-1"

    goto :goto_a
.end method


# virtual methods
.method public a(Lcom/tencent/tp/TssInfoPublisher$TssInfoReceiver;)V
    .registers 5

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-class v1, Lcom/tencent/tp/TssInfoPublisher;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/tencent/tp/TssInfoPublisher;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_2f

    sget-boolean v0, Lcom/tencent/tp/TssInfoPublisher;->c:Z

    if-nez v0, :cond_2

    const-class v1, Lcom/tencent/tp/TssSdk;

    monitor-enter v1

    :try_start_13
    sget-boolean v0, Lcom/tencent/tp/TssInfoPublisher;->c:Z

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tp/TssInfoPublisher;->c:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-static {}, Lcom/tencent/tp/TssInfoPublisher;->a()Lcom/tencent/tp/TssInfoPublisher;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/tencent/tp/TssInfoPublisher;->b:Ljava/lang/Thread;

    sget-object v0, Lcom/tencent/tp/TssInfoPublisher;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2a
    monitor-exit v1

    goto :goto_2

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_2c

    throw v0

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public run()V
    .registers 6

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/tp/TssInfoPublisher;->b()I

    move-result v0

    if-ne v0, v4, :cond_1f

    sput-boolean v3, Lcom/tencent/tp/TssInfoPublisher;->c:Z

    :goto_a
    return-void

    :cond_b
    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3c

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/tencent/tp/TssInfoPublisher;->a(ILjava/lang/String;)V

    :cond_1f
    :goto_1f
    invoke-static {}, Lcom/tencent/tp/TssInfoPublisher;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_44
    .catchall {:try_start_c .. :try_end_2a} :catchall_4b

    move-result v1

    if-eqz v1, :cond_33

    :cond_2d
    :goto_2d
    invoke-static {}, Lcom/tencent/tp/TssInfoPublisher;->c()V

    sput-boolean v3, Lcom/tencent/tp/TssInfoPublisher;->c:Z

    goto :goto_a

    :cond_33
    const/16 v1, 0x7c

    :try_start_35
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_44
    .catchall {:try_start_35 .. :try_end_38} :catchall_4b

    move-result v1

    if-ne v1, v4, :cond_b

    goto :goto_2d

    :cond_3c
    const-wide/16 v0, 0x3e8

    :try_start_3e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_4b

    goto :goto_1f

    :catch_42
    move-exception v0

    goto :goto_1f

    :catch_44
    move-exception v0

    invoke-static {}, Lcom/tencent/tp/TssInfoPublisher;->c()V

    sput-boolean v3, Lcom/tencent/tp/TssInfoPublisher;->c:Z

    goto :goto_a

    :catchall_4b
    move-exception v0

    invoke-static {}, Lcom/tencent/tp/TssInfoPublisher;->c()V

    sput-boolean v3, Lcom/tencent/tp/TssInfoPublisher;->c:Z

    throw v0
.end method
