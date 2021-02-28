.class final Lcom/paypal/android/sdk/payments/cg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/ea;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PayPalService;


# direct methods
.method private constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/cg;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J)Lcom/paypal/android/sdk/ds;
    .registers 12

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v4, v2, v0

    new-instance v1, Lcom/paypal/android/sdk/ds;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/paypal/android/sdk/ds;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-object v1
.end method


# virtual methods
.method public final a()V
    .registers 1

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/ez;)V
    .registers 6

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ey;->j:Lcom/paypal/android/sdk/ey;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ez;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ez;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ey;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ez;->u()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dc;->g:Lcom/paypal/android/sdk/ds;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dc;->g:Lcom/paypal/android/sdk/ds;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ds;->a()Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_30
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/d;->a(Lcom/paypal/android/sdk/cs;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void

    :cond_4c
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dc;->g:Lcom/paypal/android/sdk/ds;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/de;->a(Lcom/paypal/android/sdk/ds;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dc;->d:Lcom/paypal/android/sdk/di;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/dh;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v1

    iget-object v1, v1, Lcom/paypal/android/sdk/dc;->d:Lcom/paypal/android/sdk/di;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/dh;->a(Lcom/paypal/android/sdk/di;)V

    goto :goto_35
.end method

.method public final a(Lcom/paypal/android/sdk/fb;)V
    .registers 5

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ey;->v:Lcom/paypal/android/sdk/ey;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fb;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ey;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fc;)V
    .registers 3

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fd;)V
    .registers 13

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ey;->j:Lcom/paypal/android/sdk/ey;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fd;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fd;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ey;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/d;->a(Lcom/paypal/android/sdk/cs;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fd;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fd;->A()Z

    move-result v0

    if-nez v0, :cond_43

    :cond_2b
    const/4 v0, 0x1

    :goto_2c
    if-eqz v0, :cond_45

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fd;->A()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->t()V

    :cond_39
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    :goto_42
    return-void

    :cond_43
    const/4 v0, 0x0

    goto :goto_2c

    :cond_45
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->b()Lcom/paypal/android/sdk/bp;

    move-result-object v10

    new-instance v0, Lcom/paypal/android/sdk/fo;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->b()Lcom/paypal/android/sdk/bp;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v3

    iget-object v3, v3, Lcom/paypal/android/sdk/dc;->b:Lcom/paypal/android/sdk/ds;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/ds;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fd;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fd;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fd;->v()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fd;->w()I

    move-result v8

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fd;->x()I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/paypal/android/sdk/fo;-><init>(Lcom/paypal/android/sdk/ct;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Lcom/paypal/android/sdk/bp;->b(Lcom/paypal/android/sdk/cs;)V

    goto :goto_42
.end method

.method public final a(Lcom/paypal/android/sdk/fe;)V
    .registers 5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fe;->p()Lcom/paypal/android/sdk/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeleteCreditCardRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fg;)V
    .registers 3

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fh;)V
    .registers 4

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fh;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/paypal/android/sdk/dc;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fi;)V
    .registers 7

    const-wide/16 v0, 0x348

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-wide v2, p1, Lcom/paypal/android/sdk/fi;->f:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_cf

    :goto_b
    iget-object v2, p1, Lcom/paypal/android/sdk/fi;->c:Ljava/lang/String;

    if-nez v2, :cond_7c

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v2

    iget-object v3, p1, Lcom/paypal/android/sdk/fi;->d:Ljava/lang/String;

    iget-object v4, p1, Lcom/paypal/android/sdk/fi;->e:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Lcom/paypal/android/sdk/payments/cg;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/paypal/android/sdk/ds;

    move-result-object v0

    iput-object v0, v2, Lcom/paypal/android/sdk/dc;->g:Lcom/paypal/android/sdk/ds;

    :goto_1f
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/paypal/android/sdk/dc;->f:Lcom/paypal/android/sdk/dz;

    new-instance v0, Lcom/paypal/android/sdk/di;

    invoke-direct {v0}, Lcom/paypal/android/sdk/di;-><init>()V

    iget-object v1, p1, Lcom/paypal/android/sdk/fi;->a:Lcom/paypal/android/sdk/el;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/el;->a()Z

    move-result v1

    if-eqz v1, :cond_98

    iget-object v1, p1, Lcom/paypal/android/sdk/fi;->a:Lcom/paypal/android/sdk/el;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/el;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/di;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/sdk/dk;->a:Lcom/paypal/android/sdk/dk;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/di;->a(Lcom/paypal/android/sdk/dk;)V

    :goto_43
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v1

    iput-object v0, v1, Lcom/paypal/android/sdk/dc;->d:Lcom/paypal/android/sdk/di;

    iget-object v0, p1, Lcom/paypal/android/sdk/fi;->a:Lcom/paypal/android/sdk/el;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/el;->a()Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fi;->a:Lcom/paypal/android/sdk/el;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/el;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/paypal/android/sdk/dc;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ey;->l:Lcom/paypal/android/sdk/ey;

    iget-boolean v2, p1, Lcom/paypal/android/sdk/fi;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fi;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ey;Ljava/lang/Boolean;Ljava/lang/String;)V

    :goto_72
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void

    :cond_7c
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fi;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/paypal/android/sdk/dc;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/du;

    iget-object v2, p1, Lcom/paypal/android/sdk/fi;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/paypal/android/sdk/fi;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/paypal/android/sdk/du;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/paypal/android/sdk/dc;->e:Lcom/paypal/android/sdk/du;

    goto :goto_1f

    :cond_98
    iget-object v1, p1, Lcom/paypal/android/sdk/fi;->a:Lcom/paypal/android/sdk/el;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/el;->d()Lcom/paypal/android/sdk/er;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/di;->a(Lcom/paypal/android/sdk/er;)V

    sget-object v1, Lcom/paypal/android/sdk/dk;->b:Lcom/paypal/android/sdk/dk;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/di;->a(Lcom/paypal/android/sdk/dk;)V

    goto :goto_43

    :cond_a7
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fi;->a:Lcom/paypal/android/sdk/el;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/el;->d()Lcom/paypal/android/sdk/er;

    move-result-object v1

    invoke-static {}, Lcom/paypal/android/sdk/da;->a()Lcom/paypal/android/sdk/da;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/er;->a(Lcom/paypal/android/sdk/eq;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/paypal/android/sdk/dc;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ey;->m:Lcom/paypal/android/sdk/ey;

    iget-boolean v2, p1, Lcom/paypal/android/sdk/fi;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fi;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ey;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_72

    :cond_cf
    move-wide v0, v2

    goto/16 :goto_b
.end method

.method public final a(Lcom/paypal/android/sdk/fn;)V
    .registers 8

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ey;->b:Lcom/paypal/android/sdk/ey;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fn;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ey;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fn;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/fn;->b:Ljava/lang/String;

    iget-wide v4, p1, Lcom/paypal/android/sdk/fn;->c:J

    invoke-static {v1, v2, v4, v5}, Lcom/paypal/android/sdk/payments/cg;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/paypal/android/sdk/ds;

    move-result-object v1

    iput-object v1, v0, Lcom/paypal/android/sdk/dc;->b:Lcom/paypal/android/sdk/ds;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    iget-boolean v1, p1, Lcom/paypal/android/sdk/fn;->d:Z

    iput-boolean v1, v0, Lcom/paypal/android/sdk/dc;->h:Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Z)Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/ce;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/ce;

    move-result-object v0

    invoke-interface {v0}, Lcom/paypal/android/sdk/payments/ce;->a()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/payments/ce;)Lcom/paypal/android/sdk/payments/ce;

    :cond_4a
    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fo;)V
    .registers 11

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/dp;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->f(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fo;->t()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/paypal/android/sdk/fo;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fo;->v()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fo;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fo;->w()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fo;->x()I

    move-result v7

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fo;->y()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/paypal/android/sdk/dp;-><init>(Lcom/paypal/android/sdk/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->d(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/dh;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/paypal/android/sdk/dh;->a(Lcom/paypal/android/sdk/dp;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/ez;)V
    .registers 5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ez;->p()Lcom/paypal/android/sdk/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApproveAndExecuteSfoPaymentRequest Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/cs;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fb;)V
    .registers 5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fb;->p()Lcom/paypal/android/sdk/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConsentRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/cs;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cf;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fc;)V
    .registers 5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fc;->p()Lcom/paypal/android/sdk/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreateSfoPaymentRequest Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/cs;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cf;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fd;)V
    .registers 5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fd;->p()Lcom/paypal/android/sdk/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreditCardPaymentRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/cs;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fg;)V
    .registers 5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fg;->p()Lcom/paypal/android/sdk/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAppInfoRequest Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/cs;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cf;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fh;)V
    .registers 5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fh;->p()Lcom/paypal/android/sdk/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoginChallengeRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/cs;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cf;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fi;)V
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fi;->p()Lcom/paypal/android/sdk/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginRequest Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "paypal.sdk"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    iget-object v0, p1, Lcom/paypal/android/sdk/fi;->a:Lcom/paypal/android/sdk/el;

    iget-boolean v2, p1, Lcom/paypal/android/sdk/fi;->b:Z

    invoke-virtual {v0}, Lcom/paypal/android/sdk/el;->a()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ey;->l:Lcom/paypal/android/sdk/ey;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fi;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ey;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dh;->b()V

    iget-boolean v0, p1, Lcom/paypal/android/sdk/fi;->h:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fi;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/paypal/android/sdk/dc;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/dz;

    iget-object v2, p1, Lcom/paypal/android/sdk/fi;->i:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/paypal/android/sdk/dz;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/paypal/android/sdk/dc;->f:Lcom/paypal/android/sdk/dz;

    :cond_5b
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/cs;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cf;)V

    return-void

    :cond_6b
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ey;->m:Lcom/paypal/android/sdk/ey;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fi;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ey;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method public final b(Lcom/paypal/android/sdk/fn;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/cs;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fo;)V
    .registers 5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fo;->p()Lcom/paypal/android/sdk/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TokenizeCreditCardRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method
