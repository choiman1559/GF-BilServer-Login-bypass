.class public Lcom/paypal/android/sdk/az;
.super Lcom/paypal/android/sdk/bg;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/paypal/android/sdk/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/az;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/az;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ao;Landroid/os/Handler;)V
    .registers 6

    invoke-direct {p0}, Lcom/paypal/android/sdk/bg;-><init>()V

    iput-object p5, p0, Lcom/paypal/android/sdk/az;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/paypal/android/sdk/az;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/sdk/az;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/paypal/android/sdk/az;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/paypal/android/sdk/az;->f:Lcom/paypal/android/sdk/ao;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v2, 0x0

    const-string v4, ""

    :try_start_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_b6
    .catchall {:try_start_3 .. :try_end_e} :catchall_cf

    const v3, 0xea60

    :try_start_11
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const v3, 0xea60

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "User-Agent"

    const-string v5, "%s/%s/%s/%s/Android"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/paypal/android/sdk/az;->f:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v8}, Lcom/paypal/android/sdk/ao;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/paypal/android/sdk/az;->f:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v8}, Lcom/paypal/android/sdk/ao;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/paypal/android/sdk/az;->e:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/paypal/android/sdk/az;->d:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Accept-Language"

    const-string v5, "en-us"

    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    sget-object v5, Lcom/paypal/android/sdk/az;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\nSending \'GET\' request to URL : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/sdk/az;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response Code : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_8a} :catch_e5
    .catchall {:try_start_11 .. :try_end_8a} :catchall_da

    move-object v1, v4

    :goto_8b
    :try_start_8b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8b

    :cond_a3
    sget-object v2, Lcom/paypal/android/sdk/az;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_ac} :catch_ea
    .catchall {:try_start_8b .. :try_end_ac} :catchall_df

    invoke-static {v3}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_f0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    :cond_b5
    :goto_b5
    return-object v0

    :catch_b6
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    move-object v0, v4

    :goto_ba
    :try_start_ba
    iget-object v4, p0, Lcom/paypal/android/sdk/az;->b:Landroid/os/Handler;

    iget-object v5, p0, Lcom/paypal/android/sdk/az;->b:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-static {v5, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c6
    .catchall {:try_start_ba .. :try_end_c6} :catchall_e3

    invoke-static {v3}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_b5

    :catchall_cf
    move-exception v0

    move-object v3, v2

    :goto_d1
    invoke-static {v3}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_d9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d9
    throw v0

    :catchall_da
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_d1

    :catchall_df
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_d1

    :catchall_e3
    move-exception v0

    goto :goto_d1

    :catch_e5
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_ba

    :catch_ea
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_ba

    :cond_f0
    move-object v0, v1

    goto :goto_b5
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/paypal/android/sdk/az;->b:Landroid/os/Handler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/paypal/android/sdk/az;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/paypal/android/sdk/az;->b:Landroid/os/Handler;

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/paypal/android/sdk/az;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/paypal/android/sdk/az;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/az;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/sdk/az;->a:Ljava/lang/String;

    const-string v2, "%s/%s/%s/%s/Android"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/paypal/android/sdk/az;->f:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/ao;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/paypal/android/sdk/az;->f:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/ao;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/paypal/android/sdk/az;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/paypal/android/sdk/az;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/az;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/paypal/android/sdk/az;->b:Landroid/os/Handler;

    const/16 v3, 0x16

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_55} :catch_5d
    .catchall {:try_start_5 .. :try_end_55} :catchall_73

    invoke-static {}, Lcom/paypal/android/sdk/bh;->a()Lcom/paypal/android/sdk/bh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/paypal/android/sdk/bh;->b(Lcom/paypal/android/sdk/bg;)V

    goto :goto_4

    :catch_5d
    move-exception v0

    :try_start_5e
    iget-object v1, p0, Lcom/paypal/android/sdk/az;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/paypal/android/sdk/az;->b:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_73

    invoke-static {}, Lcom/paypal/android/sdk/bh;->a()Lcom/paypal/android/sdk/bh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/paypal/android/sdk/bh;->b(Lcom/paypal/android/sdk/bg;)V

    goto :goto_4

    :catchall_73
    move-exception v0

    invoke-static {}, Lcom/paypal/android/sdk/bh;->a()Lcom/paypal/android/sdk/bh;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/paypal/android/sdk/bh;->b(Lcom/paypal/android/sdk/bg;)V

    throw v0
.end method
