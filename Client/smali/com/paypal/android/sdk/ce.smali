.class public abstract Lcom/paypal/android/sdk/ce;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/cp;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/ce;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ce;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/paypal/android/sdk/cs;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parsing success response\n:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/cs;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/cs;->c()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string v1, "paypal.sdk"

    const-string v2, "Exception parsing server response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/paypal/android/sdk/by;

    sget-object v2, Lcom/paypal/android/sdk/bx;->c:Lcom/paypal/android/sdk/bx;

    invoke-direct {v1, v2, v0}, Lcom/paypal/android/sdk/by;-><init>(Lcom/paypal/android/sdk/bx;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/paypal/android/sdk/cs;->a(Lcom/paypal/android/sdk/bw;)V

    goto :goto_11
.end method

.method protected static a(Lcom/paypal/android/sdk/cs;I)V
    .registers 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/cs;->a(Ljava/lang/Integer;)V

    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parsing error response:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/cs;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/cs;->d()V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    const-string v1, "paypal.sdk"

    const-string v2, "Exception parsing server response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/paypal/android/sdk/bx;->a:Lcom/paypal/android/sdk/bx;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bx;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " http response received.  Response not parsable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/paypal/android/sdk/cs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method
