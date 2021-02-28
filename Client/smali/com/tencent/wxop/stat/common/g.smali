.class public Lcom/tencent/wxop/stat/common/g;
.super Ljava/lang/Object;


# static fields
.field private static volatile c:Lcom/tencent/wxop/stat/common/g;


# instance fields
.field private a:I

.field private b:I

.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wxop/stat/common/g;->c:Lcom/tencent/wxop/stat/common/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/wxop/stat/common/g;->a:I

    iput v1, p0, Lcom/tencent/wxop/stat/common/g;->b:I

    iput-object v2, p0, Lcom/tencent/wxop/stat/common/g;->d:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/tencent/wxop/stat/common/g;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/g;->d:Landroid/content/Context;

    :try_start_15
    iget-object v0, p0, Lcom/tencent/wxop/stat/common/g;->d:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-static {v0, v1}, Lcom/tencent/wxop/stat/common/r;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/wxop/stat/common/g;->e:Z

    iget-boolean v0, p0, Lcom/tencent/wxop/stat/common/g;->e:Z

    if-eqz v0, :cond_52

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_52

    const-class v0, Landroid/provider/Settings$System;

    const-string v1, "canWrite"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/wxop/stat/common/g;->d:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/wxop/stat/common/g;->e:Z
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_52} :catch_53

    :cond_52
    :goto_52
    return-void

    :catch_53
    move-exception v0

    iget v1, p0, Lcom/tencent/wxop/stat/common/g;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/wxop/stat/common/g;->b:I

    iget v2, p0, Lcom/tencent/wxop/stat/common/g;->a:I

    if-ge v1, v2, :cond_52

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_52
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/g;
    .registers 3

    sget-object v0, Lcom/tencent/wxop/stat/common/g;->c:Lcom/tencent/wxop/stat/common/g;

    if-nez v0, :cond_13

    const-class v1, Lcom/tencent/wxop/stat/common/g;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/wxop/stat/common/g;->c:Lcom/tencent/wxop/stat/common/g;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/wxop/stat/common/g;

    invoke-direct {v0, p0}, Lcom/tencent/wxop/stat/common/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/wxop/stat/common/g;->c:Lcom/tencent/wxop/stat/common/g;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tencent/wxop/stat/common/g;->c:Lcom/tencent/wxop/stat/common/g;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/common/g;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    iget v1, p0, Lcom/tencent/wxop/stat/common/g;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/wxop/stat/common/g;->b:I

    iget v2, p0, Lcom/tencent/wxop/stat/common/g;->a:I

    if-ge v1, v2, :cond_19

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_19
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/tencent/wxop/stat/common/g;->e:Z

    if-eqz v0, :cond_1d

    :try_start_4
    iget-object v0, p0, Lcom/tencent/wxop/stat/common/g;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_f

    move-result v0

    :goto_e
    return v0

    :catch_f
    move-exception v0

    iget v1, p0, Lcom/tencent/wxop/stat/common/g;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/wxop/stat/common/g;->b:I

    iget v2, p0, Lcom/tencent/wxop/stat/common/g;->a:I

    if-ge v1, v2, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1d
    const/4 v0, 0x0

    goto :goto_e
.end method
