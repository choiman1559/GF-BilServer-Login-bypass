.class final Lcom/unity3d/player/k$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/k;

.field private b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unity3d/player/k;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/k$a;->a:Lcom/unity3d/player/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    const-string v2, "https://splash.unity.cn/api/diagnosis"

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_5b
    .catchall {:try_start_1 .. :try_end_e} :catchall_63

    const/16 v1, 0x7530

    :try_start_10
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "type"

    const-string v4, "tracking"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "reason"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "platform"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_55} :catch_6f
    .catchall {:try_start_10 .. :try_end_55} :catchall_6a

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5a
    :goto_5a
    return-void

    :catch_5b
    move-exception v0

    move-object v0, v1

    :goto_5d
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5a

    :catchall_63
    move-exception v0

    :goto_64
    if-eqz v1, :cond_69

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_69
    throw v0

    :catchall_6a
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_64

    :catch_6f
    move-exception v1

    goto :goto_5d
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/k$a;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 12

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/unity3d/player/k$a;->b:[Ljava/lang/String;

    iget-object v0, p0, Lcom/unity3d/player/k$a;->b:[Ljava/lang/String;

    if-nez v0, :cond_8

    :cond_7
    return-object v3

    :cond_8
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v0, p0, Lcom/unity3d/player/k$a;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/unity3d/player/k$a;->b:[Ljava/lang/String;

    aget-object v4, v0, v1

    if-eqz v4, :cond_8a

    :try_start_15
    new-instance v0, Ljava/net/URL;

    invoke-static {v4}, Lcom/unity3d/player/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_8f
    .catchall {:try_start_15 .. :try_end_24} :catchall_b5

    const/16 v2, 0x7530

    :try_start_26
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v2, 0x190

    if-lt v5, v2, :cond_85

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v2, ""

    :goto_46
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    :cond_5e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/k$a;->a(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_85} :catch_c3
    .catchall {:try_start_26 .. :try_end_85} :catchall_bd

    :cond_85
    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8a
    :goto_8a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_a

    :catch_8f
    move-exception v0

    move-object v2, v3

    :goto_91
    :try_start_91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/k$a;->a(Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_91 .. :try_end_af} :catchall_c1

    if-eqz v2, :cond_8a

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_8a

    :catchall_b5
    move-exception v0

    move-object v2, v3

    :goto_b7
    if-eqz v2, :cond_bc

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_bc
    throw v0

    :catchall_bd
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_b7

    :catchall_c1
    move-exception v0

    goto :goto_b7

    :catch_c3
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_91
.end method
