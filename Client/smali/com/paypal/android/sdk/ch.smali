.class final Lcom/paypal/android/sdk/ch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/cs;

.field private synthetic b:Lcom/paypal/android/sdk/cg;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/cg;Lcom/paypal/android/sdk/cs;)V
    .registers 3

    iput-object p1, p0, Lcom/paypal/android/sdk/ch;->b:Lcom/paypal/android/sdk/cg;

    iput-object p2, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    invoke-static {}, Lcom/paypal/android/sdk/cg;->d()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mock executing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/cs;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/cs;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/ch;->b:Lcom/paypal/android/sdk/cg;

    iget-object v1, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/cg;->c(Lcom/paypal/android/sdk/cs;)Z

    move-result v0

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/paypal/android/sdk/ch;->b:Lcom/paypal/android/sdk/cg;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cg;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/cs;->h()Lcom/paypal/android/sdk/cq;

    move-result-object v1

    invoke-interface {v1}, Lcom/paypal/android/sdk/cq;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mock failure:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/cs;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    iget-object v1, p0, Lcom/paypal/android/sdk/ch;->b:Lcom/paypal/android/sdk/cg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/cg;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/cg;->a(Lcom/paypal/android/sdk/cs;I)V

    :goto_56
    iget-object v0, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cs;->a()Z

    move-result v0

    if-nez v0, :cond_a5

    :try_start_5e
    invoke-static {}, Lcom/paypal/android/sdk/cg;->d()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sleep for ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ch;->b:Lcom/paypal/android/sdk/cg;

    invoke-static {v1}, Lcom/paypal/android/sdk/cg;->a(Lcom/paypal/android/sdk/cg;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/ch;->b:Lcom/paypal/android/sdk/cg;

    invoke-static {v0}, Lcom/paypal/android/sdk/cg;->a(Lcom/paypal/android/sdk/cg;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/paypal/android/sdk/cg;->d()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "end ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ch;->b:Lcom/paypal/android/sdk/cg;

    invoke-static {v1}, Lcom/paypal/android/sdk/cg;->a(Lcom/paypal/android/sdk/cg;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms] sleep"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9a
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_9a} :catch_ec

    :goto_9a
    iget-object v0, p0, Lcom/paypal/android/sdk/ch;->b:Lcom/paypal/android/sdk/cg;

    invoke-static {v0}, Lcom/paypal/android/sdk/cg;->b(Lcom/paypal/android/sdk/cg;)Lcom/paypal/android/sdk/ct;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    invoke-interface {v0, v1}, Lcom/paypal/android/sdk/ct;->a(Lcom/paypal/android/sdk/cs;)V

    :cond_a5
    return-void

    :cond_a6
    iget-object v0, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cs;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cd

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Empty mock value for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/cs;->h()Lcom/paypal/android/sdk/cq;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cd
    iget-object v1, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/cs;->h()Lcom/paypal/android/sdk/cq;

    move-result-object v1

    invoke-interface {v1}, Lcom/paypal/android/sdk/cq;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mock response:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/cs;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    invoke-static {v0}, Lcom/paypal/android/sdk/cg;->a(Lcom/paypal/android/sdk/cs;)V

    goto/16 :goto_56

    :catch_ec
    move-exception v0

    iget-object v0, p0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/cs;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cs;->h()Lcom/paypal/android/sdk/cq;

    move-result-object v0

    invoke-interface {v0}, Lcom/paypal/android/sdk/cq;->a()Ljava/lang/String;

    goto :goto_9a
.end method