.class final Lcom/paypal/android/sdk/bq;
.super Landroid/os/Handler;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/bp;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/bq;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/paypal/android/sdk/bq;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/bp;

    if-eqz v0, :cond_5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/paypal/android/sdk/cs;

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bp;->a(Lcom/paypal/android/sdk/bp;Lcom/paypal/android/sdk/cs;)V

    goto :goto_5

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method
