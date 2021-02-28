.class public final Lcom/paypal/android/sdk/eb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/bv;


# instance fields
.field private a:Lcom/paypal/android/sdk/ea;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/ea;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/cs;)V
    .registers 4

    instance-of v0, p1, Lcom/paypal/android/sdk/fn;

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cs;->q()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fn;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->a(Lcom/paypal/android/sdk/fn;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fn;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->b(Lcom/paypal/android/sdk/fn;)V

    goto :goto_11

    :cond_1a
    instance-of v0, p1, Lcom/paypal/android/sdk/fi;

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cs;->q()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fi;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->a(Lcom/paypal/android/sdk/fi;)V

    goto :goto_11

    :cond_2c
    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fi;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->b(Lcom/paypal/android/sdk/fi;)V

    goto :goto_11

    :cond_34
    instance-of v0, p1, Lcom/paypal/android/sdk/fd;

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cs;->q()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fd;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->a(Lcom/paypal/android/sdk/fd;)V

    goto :goto_11

    :cond_46
    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fd;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->b(Lcom/paypal/android/sdk/fd;)V

    goto :goto_11

    :cond_4e
    instance-of v0, p1, Lcom/paypal/android/sdk/fo;

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cs;->q()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fo;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->a(Lcom/paypal/android/sdk/fo;)V

    goto :goto_11

    :cond_60
    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fo;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->b(Lcom/paypal/android/sdk/fo;)V

    goto :goto_11

    :cond_68
    instance-of v0, p1, Lcom/paypal/android/sdk/fe;

    if-eqz v0, :cond_80

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cs;->q()Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    invoke-interface {v0}, Lcom/paypal/android/sdk/ea;->a()V

    goto :goto_11

    :cond_78
    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fe;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->a(Lcom/paypal/android/sdk/fe;)V

    goto :goto_11

    :cond_80
    instance-of v0, p1, Lcom/paypal/android/sdk/fb;

    if-eqz v0, :cond_9b

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cs;->q()Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fb;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->a(Lcom/paypal/android/sdk/fb;)V

    goto :goto_11

    :cond_92
    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fb;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->b(Lcom/paypal/android/sdk/fb;)V

    goto/16 :goto_11

    :cond_9b
    instance-of v0, p1, Lcom/paypal/android/sdk/fc;

    if-eqz v0, :cond_b7

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cs;->q()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fc;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->a(Lcom/paypal/android/sdk/fc;)V

    goto/16 :goto_11

    :cond_ae
    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fc;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->b(Lcom/paypal/android/sdk/fc;)V

    goto/16 :goto_11

    :cond_b7
    instance-of v0, p1, Lcom/paypal/android/sdk/ez;

    if-eqz v0, :cond_d3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cs;->q()Z

    move-result v0

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/ez;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->a(Lcom/paypal/android/sdk/ez;)V

    goto/16 :goto_11

    :cond_ca
    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/ez;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->b(Lcom/paypal/android/sdk/ez;)V

    goto/16 :goto_11

    :cond_d3
    instance-of v0, p1, Lcom/paypal/android/sdk/fg;

    if-eqz v0, :cond_ef

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cs;->q()Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fg;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->a(Lcom/paypal/android/sdk/fg;)V

    goto/16 :goto_11

    :cond_e6
    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fg;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->b(Lcom/paypal/android/sdk/fg;)V

    goto/16 :goto_11

    :cond_ef
    instance-of v0, p1, Lcom/paypal/android/sdk/fh;

    if-eqz v0, :cond_10b

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cs;->q()Z

    move-result v0

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fh;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->a(Lcom/paypal/android/sdk/fh;)V

    goto/16 :goto_11

    :cond_102
    iget-object v0, p0, Lcom/paypal/android/sdk/eb;->a:Lcom/paypal/android/sdk/ea;

    check-cast p1, Lcom/paypal/android/sdk/fh;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->b(Lcom/paypal/android/sdk/fh;)V

    goto/16 :goto_11

    :cond_10b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not handled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
