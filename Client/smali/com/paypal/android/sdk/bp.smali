.class public Lcom/paypal/android/sdk/bp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/ct;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/paypal/android/sdk/a;

.field private final c:Lcom/paypal/android/sdk/bo;

.field private final d:Lcom/paypal/android/sdk/bt;

.field private final e:Lcom/paypal/android/sdk/bq;

.field private f:Lcom/paypal/android/sdk/co;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/bp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/bp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/a;Lcom/paypal/android/sdk/bo;Lcom/paypal/android/sdk/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/bp;->b:Lcom/paypal/android/sdk/a;

    iput-object p2, p0, Lcom/paypal/android/sdk/bp;->c:Lcom/paypal/android/sdk/bo;

    new-instance v0, Lcom/paypal/android/sdk/bt;

    invoke-direct {v0}, Lcom/paypal/android/sdk/bt;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/bp;->d:Lcom/paypal/android/sdk/bt;

    new-instance v0, Lcom/paypal/android/sdk/bq;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/bq;-><init>(Lcom/paypal/android/sdk/bp;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/bp;->e:Lcom/paypal/android/sdk/bq;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/bp;Lcom/paypal/android/sdk/cs;)V
    .registers 6

    iget-object v0, p0, Lcom/paypal/android/sdk/bp;->d:Lcom/paypal/android/sdk/bt;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/paypal/android/sdk/bt;->a(Lcom/paypal/android/sdk/cs;J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/cq;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mEnvironment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/bp;->c:Lcom/paypal/android/sdk/bo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEnvironment.getEndpoints():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/bp;->c:Lcom/paypal/android/sdk/bo;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bo;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/bp;->c:Lcom/paypal/android/sdk/bo;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/paypal/android/sdk/bp;->c:Lcom/paypal/android/sdk/bo;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bo;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/paypal/android/sdk/bp;->c:Lcom/paypal/android/sdk/bo;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bo;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/paypal/android/sdk/cq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returning:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_42
    return-object v0

    :cond_43
    const/4 v0, 0x0

    goto :goto_42
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/bp;->f:Lcom/paypal/android/sdk/co;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/co;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/bv;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/bp;->d:Lcom/paypal/android/sdk/bt;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/bt;->a(Lcom/paypal/android/sdk/bv;)V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/co;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/bp;->f:Lcom/paypal/android/sdk/co;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/paypal/android/sdk/bp;->f:Lcom/paypal/android/sdk/co;

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/cs;)V
    .registers 4

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cs;->l()V

    invoke-static {}, Lcom/paypal/android/sdk/at;->a()Lcom/paypal/android/sdk/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/at;->f()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cs;->a()Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/paypal/android/sdk/bp;->e:Lcom/paypal/android/sdk/bq;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/bq;->sendMessage(Landroid/os/Message;)Z

    :cond_1f
    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/bp;->d:Lcom/paypal/android/sdk/bt;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bt;->a()V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/cs;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/bp;->f:Lcom/paypal/android/sdk/co;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/co;->a(Lcom/paypal/android/sdk/cs;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/bp;->c:Lcom/paypal/android/sdk/bo;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/paypal/android/sdk/a;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/bp;->b:Lcom/paypal/android/sdk/a;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/bp;->c:Lcom/paypal/android/sdk/bo;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bo;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
