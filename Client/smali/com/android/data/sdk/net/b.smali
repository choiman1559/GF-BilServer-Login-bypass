.class public Lcom/android/data/sdk/net/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/data/sdk/net/b$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/android/data/sdk/api/b;

.field private c:Lcom/android/data/sdk/domain/model/RuntimeThread;


# direct methods
.method private constructor <init>(ZLcom/android/data/sdk/domain/model/RuntimeThread;Lcom/android/data/sdk/api/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/data/sdk/net/b;->a:Z

    iput-object p2, p0, Lcom/android/data/sdk/net/b;->c:Lcom/android/data/sdk/domain/model/RuntimeThread;

    iput-object p3, p0, Lcom/android/data/sdk/net/b;->b:Lcom/android/data/sdk/api/b;

    return-void
.end method

.method synthetic constructor <init>(ZLcom/android/data/sdk/domain/model/RuntimeThread;Lcom/android/data/sdk/api/b;Lcom/android/data/sdk/net/b$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/data/sdk/net/b;-><init>(ZLcom/android/data/sdk/domain/model/RuntimeThread;Lcom/android/data/sdk/api/b;)V

    return-void
.end method

.method static synthetic a(Lcom/android/data/sdk/net/b;)Lcom/android/data/sdk/api/b;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/net/b;->b:Lcom/android/data/sdk/api/b;

    return-object v0
.end method

.method private a(Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;Landroid/os/Handler;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1, p2}, Lbsgamesdkhttp/u;->a(Lbsgamesdkhttp/w;)Lbsgamesdkhttp/e;

    move-result-object v0

    invoke-interface {v0}, Lbsgamesdkhttp/e;->a()Lbsgamesdkhttp/y;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_c

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/data/sdk/net/b;->a(Lbsgamesdkhttp/y;Landroid/os/Handler;)V

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-direct {p0, v0, p3}, Lcom/android/data/sdk/net/b;->a(Ljava/lang/Throwable;Landroid/os/Handler;)V

    goto :goto_b
.end method

.method private a(Lbsgamesdkhttp/y;Landroid/os/Handler;)V
    .registers 9

    iget-object v0, p0, Lcom/android/data/sdk/net/b;->b:Lcom/android/data/sdk/api/b;

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Lbsgamesdkhttp/y;->c()Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p1}, Lbsgamesdkhttp/y;->g()Lbsgamesdkhttp/z;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-static {}, Lcom/android/data/sdk/utils/j;->a()Lcom/android/data/sdk/utils/j;

    move-result-object v0

    invoke-virtual {v1}, Lbsgamesdkhttp/z;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/data/sdk/net/b$2;

    invoke-direct {v3, p0, v2}, Lcom/android/data/sdk/net/b$2;-><init>(Lcom/android/data/sdk/net/b;Ljava/lang/String;)V

    sget-object v4, Lcom/android/data/sdk/net/b$4;->a:[I

    iget-object v5, p0, Lcom/android/data/sdk/net/b;->c:Lcom/android/data/sdk/domain/model/RuntimeThread;

    invoke-virtual {v5}, Lcom/android/data/sdk/domain/model/RuntimeThread;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_88

    invoke-virtual {v0, p2, v3}, Lcom/android/data/sdk/utils/j;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_2e} :catch_38
    .catchall {:try_start_b .. :try_end_2e} :catchall_48

    :goto_2e
    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lbsgamesdkhttp/z;->close()V

    :cond_33
    :goto_33
    return-void

    :pswitch_34
    :try_start_34
    invoke-virtual {v0, v3}, Lcom/android/data/sdk/utils/j;->a(Ljava/lang/Runnable;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_48

    goto :goto_2e

    :catch_38
    move-exception v0

    :try_start_39
    invoke-direct {p0, v0, p2}, Lcom/android/data/sdk/net/b;->a(Ljava/lang/Throwable;Landroid/os/Handler;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_48

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lbsgamesdkhttp/z;->close()V

    goto :goto_33

    :pswitch_42
    :try_start_42
    iget-object v0, p0, Lcom/android/data/sdk/net/b;->b:Lcom/android/data/sdk/api/b;

    invoke-interface {v0, v2}, Lcom/android/data/sdk/api/b;->a(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_47} :catch_38
    .catchall {:try_start_42 .. :try_end_47} :catchall_48

    goto :goto_2e

    :catchall_48
    move-exception v0

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Lbsgamesdkhttp/z;->close()V

    :cond_4e
    throw v0

    :cond_4f
    :try_start_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "response body is null!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/data/sdk/net/b;->a(Ljava/lang/Throwable;Landroid/os/Handler;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_59} :catch_38
    .catchall {:try_start_4f .. :try_end_59} :catchall_48

    goto :goto_2e

    :cond_5a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP_CODE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lbsgamesdkhttp/y;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,HTTP_MESSAGE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lbsgamesdkhttp/y;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/data/sdk/net/b;->a(Ljava/lang/Throwable;Landroid/os/Handler;)V

    goto :goto_33

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_34
        :pswitch_42
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/data/sdk/net/b;Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/data/sdk/net/b;->a(Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;Landroid/os/Handler;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;Landroid/os/Handler;)V
    .registers 7

    iget-object v0, p0, Lcom/android/data/sdk/net/b;->b:Lcom/android/data/sdk/api/b;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/android/data/sdk/utils/j;->a()Lcom/android/data/sdk/utils/j;

    move-result-object v0

    new-instance v1, Lcom/android/data/sdk/net/b$3;

    invoke-direct {v1, p0, p1}, Lcom/android/data/sdk/net/b$3;-><init>(Lcom/android/data/sdk/net/b;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/android/data/sdk/net/b$4;->a:[I

    iget-object v3, p0, Lcom/android/data/sdk/net/b;->c:Lcom/android/data/sdk/domain/model/RuntimeThread;

    invoke-virtual {v3}, Lcom/android/data/sdk/domain/model/RuntimeThread;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2a

    invoke-virtual {v0, p2, v1}, Lcom/android/data/sdk/utils/j;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_4

    :pswitch_1f
    invoke-virtual {v0, v1}, Lcom/android/data/sdk/utils/j;->a(Ljava/lang/Runnable;)V

    goto :goto_4

    :pswitch_23
    iget-object v0, p0, Lcom/android/data/sdk/net/b;->b:Lcom/android/data/sdk/api/b;

    invoke-interface {v0, p1}, Lcom/android/data/sdk/api/b;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;)V
    .registers 7

    invoke-static {}, Lcom/android/data/sdk/utils/j;->a()Lcom/android/data/sdk/utils/j;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/data/sdk/net/b;->c:Lcom/android/data/sdk/domain/model/RuntimeThread;

    sget-object v3, Lcom/android/data/sdk/domain/model/RuntimeThread;->CALLER:Lcom/android/data/sdk/domain/model/RuntimeThread;

    if-ne v2, v3, :cond_f

    invoke-virtual {v1}, Lcom/android/data/sdk/utils/j;->b()Landroid/os/Handler;

    move-result-object v0

    :cond_f
    iget-boolean v2, p0, Lcom/android/data/sdk/net/b;->a:Z

    if-eqz v2, :cond_1c

    new-instance v2, Lcom/android/data/sdk/net/b$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/data/sdk/net/b$1;-><init>(Lcom/android/data/sdk/net/b;Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/android/data/sdk/utils/j;->b(Ljava/lang/Runnable;)V

    :goto_1b
    return-void

    :cond_1c
    invoke-direct {p0, p1, p2, v0}, Lcom/android/data/sdk/net/b;->a(Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;Landroid/os/Handler;)V

    goto :goto_1b
.end method
