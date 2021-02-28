.class public final Lcom/bsgamesdk/android/dc/buvid/file/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/dc/buvid/file/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/buvid/file/a;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bsgamesdk/android/dc/buvid/file/a$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/bsgamesdk/android/dc/buvid/file/a;-><init>()V

    return-void
.end method

.method public static final a()Lcom/bsgamesdk/android/dc/buvid/file/a;
    .registers 1

    invoke-static {}, Lcom/bsgamesdk/android/dc/buvid/file/a$a;->a()Lcom/bsgamesdk/android/dc/buvid/file/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bsgamesdk/android/dc/buvid/file/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/dc/buvid/file/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x16

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_22} :catch_24

    move-result-object v0

    :goto_23
    return-object v0

    :catch_24
    move-exception v0

    const-string v0, "000"

    goto :goto_23
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/bsgamesdk/android/dc/buvid/file/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/buvid/file/m;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/buvid/file/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XZ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/buvid/file/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_30

    move-result-object v0

    :goto_2f
    return-object v0

    :catch_30
    move-exception v0

    :cond_31
    invoke-static {p0}, Lcom/android/data/sdk/utils/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    invoke-static {v0}, Lcom/android/data/sdk/utils/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/buvid/file/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/buvid/file/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_61
    invoke-static {p0}, Lcom/bsgamesdk/android/dc/buvid/file/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_91

    invoke-static {v0}, Lcom/android/data/sdk/utils/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/buvid/file/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/buvid/file/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_91
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/buvid/file/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2f
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const-class v1, Lcom/bsgamesdk/android/dc/buvid/file/a;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/bsgamesdk/android/dc/buvid/file/a;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/buvid/file/a;->a:Ljava/lang/String;

    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_26

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x2

    new-instance v1, Lcom/bsgamesdk/android/dc/buvid/file/a$1;

    invoke-direct {v1, p0, p1}, Lcom/bsgamesdk/android/dc/buvid/file/a$1;-><init>(Lcom/bsgamesdk/android/dc/buvid/file/a;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/dc/buvid/file/h;->b(ILjava/lang/Runnable;)V

    const-class v1, Lcom/bsgamesdk/android/dc/buvid/file/a;

    monitor-enter v1

    :try_start_22
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/buvid/file/a;->a:Ljava/lang/String;

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_29

    :cond_25
    return-object v0

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method
