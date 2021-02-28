.class public Lcom/tencent/tp/g;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/tencent/tp/g;


# instance fields
.field public a:Lcom/tencent/tp/n$a;

.field private b:Lcom/tencent/tp/n;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tp/g;->d:Lcom/tencent/tp/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tp/h;

    invoke-direct {v0, p0}, Lcom/tencent/tp/h;-><init>(Lcom/tencent/tp/g;)V

    iput-object v0, p0, Lcom/tencent/tp/g;->a:Lcom/tencent/tp/n$a;

    return-void
.end method

.method public static a()Lcom/tencent/tp/g;
    .registers 2

    sget-object v0, Lcom/tencent/tp/g;->d:Lcom/tencent/tp/g;

    if-nez v0, :cond_13

    const-class v1, Lcom/tencent/tp/g;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/tp/g;->d:Lcom/tencent/tp/g;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/tp/g;

    invoke-direct {v0}, Lcom/tencent/tp/g;-><init>()V

    sput-object v0, Lcom/tencent/tp/g;->d:Lcom/tencent/tp/g;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tencent/tp/g;->d:Lcom/tencent/tp/g;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/tencent/tp/g;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/tp/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/tp/g;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/tencent/tp/g;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/n$a;)V
    .registers 12

    new-instance v0, Lcom/tencent/tp/n;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tp/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/n$a;)V

    iput-object v0, p0, Lcom/tencent/tp/g;->b:Lcom/tencent/tp/n;

    iget-object v0, p0, Lcom/tencent/tp/g;->b:Lcom/tencent/tp/n;

    invoke-virtual {v0}, Lcom/tencent/tp/n;->a()V

    return-void
.end method

.method private a(Lcom/tencent/tp/n;)V
    .registers 3

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/tp/g;->b:Lcom/tencent/tp/n;

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/tencent/tp/g;->b:Lcom/tencent/tp/n;

    invoke-virtual {v0}, Lcom/tencent/tp/n;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tp/g;->b:Lcom/tencent/tp/n;

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/tp/g;->b:Lcom/tencent/tp/n;

    invoke-direct {p0, v0}, Lcom/tencent/tp/g;->a(Lcom/tencent/tp/n;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tp/g;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private d(Ljava/lang/String;)V
    .registers 8

    const-string v0, "hnbwjs:"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    array-length v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_29

    :cond_1f
    const-string v0, "*#07#:OnnNyfHznnvbzWjs.kvmnzViyNcjr xhy zmm"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    goto :goto_c

    :cond_29
    const/4 v1, 0x0

    aget-object v5, v0, v1

    const/4 v1, 0x1

    aget-object v2, v0, v1

    const/4 v1, 0x2

    aget-object v3, v0, v1

    const/4 v1, 0x4

    aget-object v4, v0, v1

    invoke-static {}, Lcom/tencent/tp/v;->j()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_45

    const-string v0, "*#07#:bzoXpmmzioVxodqdot avdgzy"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    goto :goto_c

    :cond_45
    iput-object v5, p0, Lcom/tencent/tp/g;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/tp/g;->a:Lcom/tencent/tp/n$a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tp/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/n$a;)V

    goto :goto_c
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "hnbwjs:"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1}, Lcom/tencent/tp/g;->c(Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    const-string v0, "cdyz_hnbwjs:"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/tencent/tp/g;->b(Ljava/lang/String;)V

    goto :goto_f
.end method
