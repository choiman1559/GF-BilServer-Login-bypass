.class public Lcom/tencent/tp/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tp/d;


# static fields
.field private static volatile d:Lcom/tencent/tp/l;


# instance fields
.field private a:Lcom/tencent/tp/d;

.field private b:Z

.field private c:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tp/l;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tp/l;->c:Z

    :try_start_9
    const-string v0, "com.tencent.tp.SMI"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tp/d;

    iput-object v0, p0, Lcom/tencent/tp/l;->a:Lcom/tencent/tp/d;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_19} :catch_28

    :goto_19
    invoke-direct {p0}, Lcom/tencent/tp/l;->b()V

    invoke-direct {p0}, Lcom/tencent/tp/l;->c()V

    return-void

    :cond_20
    :try_start_20
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "com.tencent.tp.SMI NOT found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_28} :catch_28

    :catch_28
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tp/l;->a:Lcom/tencent/tp/d;

    goto :goto_19
.end method

.method public static a()Lcom/tencent/tp/l;
    .registers 2

    sget-object v0, Lcom/tencent/tp/l;->d:Lcom/tencent/tp/l;

    if-nez v0, :cond_13

    const-class v1, Lcom/tencent/tp/l;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/tp/l;->d:Lcom/tencent/tp/l;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/tp/l;

    invoke-direct {v0}, Lcom/tencent/tp/l;-><init>()V

    sput-object v0, Lcom/tencent/tp/l;->d:Lcom/tencent/tp/l;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tencent/tp/l;->d:Lcom/tencent/tp/l;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [C

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_1f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int/lit8 v3, v3, 0x2a

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_9
.end method

.method private b()V
    .registers 3

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v1}, Lcom/tencent/tp/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {v0}, Lcom/tencent/tp/r;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_1f
    iput-boolean v0, p0, Lcom/tencent/tp/l;->b:Z

    :cond_21
    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_1f

    :array_24
    .array-data 1
        0x63t
        0x59t
        0x6ft
        0x44t
        0x4bt
        0x48t
        0x46t
        0x4ft
        0x4et
        0x75t
        0x1bt
        0x10t
        0x4bt
        0x46t
        0x46t
        0x45t
        0x5dt
        0x75t
        0x59t
        0x4ft
        0x44t
        0x59t
        0x43t
        0x5et
        0x43t
        0x5ct
        0x4ft
    .end array-data
.end method

.method private c()V
    .registers 3

    const/4 v0, 0x1

    const-string v1, "IsEnabled_1:is_mtp"

    invoke-static {v1}, Lcom/tencent/tp/r;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_12

    :goto_f
    iput-boolean v0, p0, Lcom/tencent/tp/l;->c:Z

    :cond_11
    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/tencent/tp/l;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/tencent/tp/l;->b:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/tp/l;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "NotImp"

    goto :goto_e
.end method

.method public b(Landroid/content/Context;)Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/tencent/tp/l;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/tencent/tp/l;->b:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/tencent/tp/l;->c:Z

    if-eqz v0, :cond_13

    :cond_c
    iget-object v0, p0, Lcom/tencent/tp/l;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_12
.end method

.method public c(Landroid/content/Context;)Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/tencent/tp/l;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/tencent/tp/l;->b:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/tp/l;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_e
.end method
