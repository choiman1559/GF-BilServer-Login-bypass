.class public final Lcom/paypal/android/sdk/dc;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/paypal/android/sdk/eu;

.field public b:Lcom/paypal/android/sdk/ds;

.field public c:Ljava/lang/String;

.field public d:Lcom/paypal/android/sdk/di;

.field public e:Lcom/paypal/android/sdk/du;

.field public f:Lcom/paypal/android/sdk/dz;

.field public g:Lcom/paypal/android/sdk/ds;

.field public h:Z

.field public i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/dx;

    invoke-direct {v0}, Lcom/paypal/android/sdk/dx;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/eu;

    invoke-direct {v0}, Lcom/paypal/android/sdk/eu;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/dc;->a:Lcom/paypal/android/sdk/eu;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/dc;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/dc;->j:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/dc;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/dc;->b:Lcom/paypal/android/sdk/ds;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/paypal/android/sdk/dc;->b:Lcom/paypal/android/sdk/ds;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ds;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BackendState(accessTokenState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/dc;->b:Lcom/paypal/android/sdk/ds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loginAccessToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/dc;->g:Lcom/paypal/android/sdk/ds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method