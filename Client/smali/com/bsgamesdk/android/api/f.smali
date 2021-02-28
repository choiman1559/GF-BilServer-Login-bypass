.class public Lcom/bsgamesdk/android/api/f;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "BiliStatusProvider"

    sput-object v0, Lcom/bsgamesdk/android/api/f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "uid"

    aput-object v1, v0, v2

    const-string v1, "logged"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/bsgamesdk/android/api/f;->c:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "uid"

    aput-object v1, v0, v2

    const-string v1, "access_key"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/bsgamesdk/android/api/f;->d:[Ljava/lang/String;

    iput-boolean v2, p0, Lcom/bsgamesdk/android/api/f;->e:Z

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-class v2, Lcom/bsgamesdk/android/api/f;

    monitor-enter v2

    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_2d

    move-result-object v3

    const/16 v4, 0x4000

    :try_start_b
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bsgamesdk/android/api/b;->aa()Z

    move-result v4

    if-eqz v4, :cond_23

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1b} :catch_30
    .catchall {:try_start_b .. :try_end_1b} :catchall_2d

    const v4, 0x7d000

    if-lt v3, v4, :cond_21

    move v0, v1

    :cond_21
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_2d

    :goto_22
    return v0

    :cond_23
    :try_start_23
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_25} :catch_30
    .catchall {:try_start_23 .. :try_end_25} :catchall_2d

    const v4, 0x497c8

    if-le v3, v4, :cond_2b

    move v0, v1

    :cond_2b
    :try_start_2b
    monitor-exit v2

    goto :goto_22

    :catchall_2d
    move-exception v0

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2d

    throw v0

    :catch_30
    move-exception v1

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2d

    goto :goto_22
.end method

.method static synthetic a(Lcom/bsgamesdk/android/api/f;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/api/f;->e:Z

    return p1
.end method

.method static synthetic a(Lcom/bsgamesdk/android/api/f;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/f;->c:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bsgamesdk/android/api/h;)Z
    .registers 9

    const/4 v1, 0x0

    const-string v0, "tv.danmaku.bili"

    invoke-direct {p0, p1, v0}, Lcom/bsgamesdk/android/api/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->aa()Z

    move-result v2

    if-eqz v2, :cond_12

    :goto_11
    return v0

    :cond_12
    if-nez v0, :cond_16

    move v0, v1

    goto :goto_11

    :cond_16
    :try_start_16
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/bsgamesdk/android/api/f$1;

    invoke-direct {v2, p0, p1}, Lcom/bsgamesdk/android/api/f$1;-><init>(Lcom/bsgamesdk/android/api/f;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_28} :catch_48

    const/4 v0, 0x0

    :try_start_29
    const-string v2, ""

    const/16 v3, 0x7d1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOneClickLogin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/bsgamesdk/android/api/f;->e:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v2, v3, v4}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_45} :catch_6c

    :goto_45
    :try_start_45
    iget-boolean v0, p0, Lcom/bsgamesdk/android/api/f;->e:Z
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_47} :catch_48

    goto :goto_11

    :catch_48
    move-exception v0

    const/4 v2, 0x1

    :try_start_4a
    const-string v3, ""

    const/16 v4, 0x7d1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "=oneClickLogin"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v3, v4, v0}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_68} :catch_6a

    :goto_68
    move v0, v1

    goto :goto_11

    :catch_6a
    move-exception v0

    goto :goto_68

    :catch_6c
    move-exception v0

    goto :goto_45
.end method
