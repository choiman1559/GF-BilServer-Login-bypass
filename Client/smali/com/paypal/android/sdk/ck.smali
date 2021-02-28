.class final Lcom/paypal/android/sdk/ck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/ci;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/ci;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/ck;->a:Lcom/paypal/android/sdk/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/ck;->a:Lcom/paypal/android/sdk/ci;

    invoke-static {v0}, Lcom/paypal/android/sdk/ci;->b(Lcom/paypal/android/sdk/ci;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
