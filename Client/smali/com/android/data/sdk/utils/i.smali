.class public Lcom/android/data/sdk/utils/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_2c
    .catchall {:try_start_b .. :try_end_1c} :catchall_36

    :try_start_1c
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_49
    .catchall {:try_start_1c .. :try_end_21} :catchall_42

    :try_start_21
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_4c
    .catchall {:try_start_21 .. :try_end_24} :catchall_47

    move-result-object v0

    invoke-static {v2}, Lcom/android/data/sdk/utils/i;->b(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/data/sdk/utils/i;->b(Ljava/lang/Object;)V

    goto :goto_a

    :catch_2c
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_2f
    invoke-static {v2}, Lcom/android/data/sdk/utils/i;->b(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/data/sdk/utils/i;->b(Ljava/lang/Object;)V

    goto :goto_a

    :catchall_36
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_3b
    invoke-static {v2}, Lcom/android/data/sdk/utils/i;->b(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/data/sdk/utils/i;->b(Ljava/lang/Object;)V

    throw v0

    :catchall_42
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3b

    :catchall_47
    move-exception v0

    goto :goto_3b

    :catch_49
    move-exception v1

    move-object v1, v0

    goto :goto_2f

    :catch_4c
    move-exception v3

    goto :goto_2f
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_24
    .catchall {:try_start_4 .. :try_end_9} :catchall_2e

    :try_start_9
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_41
    .catchall {:try_start_9 .. :try_end_e} :catchall_3a

    :try_start_e
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_44
    .catchall {:try_start_e .. :try_end_1c} :catchall_3f

    move-result-object v0

    invoke-static {v2}, Lcom/android/data/sdk/utils/i;->b(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/data/sdk/utils/i;->b(Ljava/lang/Object;)V

    goto :goto_3

    :catch_24
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_27
    invoke-static {v2}, Lcom/android/data/sdk/utils/i;->b(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/data/sdk/utils/i;->b(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_2e
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_33
    invoke-static {v2}, Lcom/android/data/sdk/utils/i;->b(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/data/sdk/utils/i;->b(Ljava/lang/Object;)V

    throw v0

    :catchall_3a
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_33

    :catchall_3f
    move-exception v0

    goto :goto_33

    :catch_41
    move-exception v1

    move-object v1, v0

    goto :goto_27

    :catch_44
    move-exception v3

    goto :goto_27
.end method

.method public static b(Ljava/lang/Object;)V
    .registers 2

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_f

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_d
    move-exception v0

    goto :goto_2

    :cond_f
    instance-of v0, p0, Ljava/io/OutputStream;

    if-eqz v0, :cond_19

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :cond_19
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_23

    check-cast p0, Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    goto :goto_2

    :cond_23
    instance-of v0, p0, Ljava/io/Reader;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2c} :catch_d

    goto :goto_2
.end method
