.class public Lcom/paypal/android/sdk/by;
.super Lcom/paypal/android/sdk/bw;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/bx;Ljava/lang/Exception;)V
    .registers 4

    invoke-virtual {p1}, Lcom/paypal/android/sdk/bx;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/paypal/android/sdk/by;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "RequestError"

    invoke-direct {p0, v0, p1}, Lcom/paypal/android/sdk/bw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "RequestError"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/paypal/android/sdk/bw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/paypal/android/sdk/bw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
