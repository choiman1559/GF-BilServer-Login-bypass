.class Lcom/tencent/tp/u;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_6
    new-instance v0, Lcom/tencent/tp/t;

    invoke-direct {v0}, Lcom/tencent/tp/t;-><init>()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_e

    :goto_b
    if-nez v0, :cond_1d

    :goto_d
    return-void

    :catch_e
    move-exception v0

    :try_start_f
    const-string v0, "ZSXZKODJI:XMZOVZ_DIAJ_MZKJMO_JWE"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->c(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_18} :catch_1a

    move-object v0, v1

    goto :goto_b

    :catch_1a
    move-exception v0

    move-object v0, v1

    goto :goto_b

    :cond_1d
    :try_start_1d
    invoke-virtual {v0, p1}, Lcom/tencent/tp/t;->a(Landroid/content/Context;)Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_31

    :goto_20
    :try_start_20
    invoke-virtual {v0, p2}, Lcom/tencent/tp/t;->a(Ljava/lang/String;)Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_d

    :catch_24
    move-exception v0

    :try_start_25
    const-string v0, "ZSXZKODJI:MZKJMO_YZQDXZN_DIAJ"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->c(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2e} :catch_2f

    goto :goto_d

    :catch_2f
    move-exception v0

    goto :goto_d

    :catch_31
    move-exception v0

    :try_start_32
    const-string v0, "ZSXZKODJI:DIDO_DIAJ_MZKJMO_JWE"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->c(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3b} :catch_3d

    move-object v0, v1

    goto :goto_20

    :catch_3d
    move-exception v0

    move-object v0, v1

    goto :goto_20
.end method
