.class final Lcom/paypal/android/sdk/cj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/cs;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/paypal/android/sdk/ci;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/ci;Lcom/paypal/android/sdk/cs;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/paypal/android/sdk/cj;->c:Lcom/paypal/android/sdk/ci;

    iput-object p2, p0, Lcom/paypal/android/sdk/cj;->a:Lcom/paypal/android/sdk/cs;

    iput-object p3, p0, Lcom/paypal/android/sdk/cj;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/cj;->c:Lcom/paypal/android/sdk/ci;

    iget-object v1, p0, Lcom/paypal/android/sdk/cj;->a:Lcom/paypal/android/sdk/cs;

    iget-object v2, p0, Lcom/paypal/android/sdk/cj;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/paypal/android/sdk/cj;->c:Lcom/paypal/android/sdk/ci;

    invoke-static {v3}, Lcom/paypal/android/sdk/ci;->a(Lcom/paypal/android/sdk/ci;)Lokhttp3/OkHttpClient;

    move-result-object v3

    new-instance v4, Lcom/paypal/android/sdk/cn;

    iget-object v5, p0, Lcom/paypal/android/sdk/cj;->c:Lcom/paypal/android/sdk/ci;

    iget-object v6, p0, Lcom/paypal/android/sdk/cj;->a:Lcom/paypal/android/sdk/cs;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/paypal/android/sdk/cn;-><init>(Lcom/paypal/android/sdk/ci;Lcom/paypal/android/sdk/cs;B)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/ci;->a(Lcom/paypal/android/sdk/ci;Lcom/paypal/android/sdk/cs;Ljava/lang/String;Lokhttp3/OkHttpClient;Lokhttp3/Callback;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_19
.end method
