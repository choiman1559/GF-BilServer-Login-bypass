.class public Lorg/apache/commons/lang3/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static clone(Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "object":Ljava/io/Serializable;, "TT;"
    const/4 v5, 0x0

    .line 78
    if-nez p0, :cond_5

    move-object v4, v5

    .line 93
    :cond_4
    :goto_4
    return-object v4

    .line 81
    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v3

    .line 82
    .local v3, "objectData":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_e
    new-instance v2, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_1b} :catch_2f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_3c

    .line 84
    .local v2, "in":Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    const/4 v6, 0x0

    .line 92
    :try_start_1c
    invoke-virtual {v2}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Serializable;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_22} :catch_45
    .catchall {:try_start_1c .. :try_end_22} :catchall_5c

    .line 95
    .local v4, "readObject":Ljava/io/Serializable;, "TT;"
    if-eqz v2, :cond_4

    if-eqz v5, :cond_38

    :try_start_26
    invoke-virtual {v2}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_29} :catch_2f
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_3c

    goto :goto_4

    :catch_2a
    move-exception v5

    :try_start_2b
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_3c

    goto :goto_4

    .end local v2    # "in":Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .end local v4    # "readObject":Ljava/io/Serializable;, "TT;"
    :catch_2f
    move-exception v1

    .line 96
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v5, Lorg/apache/commons/lang3/SerializationException;

    const-string v6, "ClassNotFoundException while reading cloned object data"

    invoke-direct {v5, v6, v1}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 95
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "in":Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .restart local v4    # "readObject":Ljava/io/Serializable;, "TT;"
    :cond_38
    :try_start_38
    invoke-virtual {v2}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_38 .. :try_end_3b} :catch_2f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_4

    .line 97
    .end local v2    # "in":Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .end local v4    # "readObject":Ljava/io/Serializable;, "TT;"
    :catch_3c
    move-exception v1

    .line 98
    .local v1, "ex":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/lang3/SerializationException;

    const-string v6, "IOException while reading or closing cloned object data"

    invoke-direct {v5, v6, v1}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 84
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v2    # "in":Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    :catch_45
    move-exception v5

    :try_start_46
    throw v5
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    .line 95
    :catchall_47
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_4b
    if-eqz v2, :cond_52

    if-eqz v6, :cond_58

    :try_start_4f
    invoke-virtual {v2}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_53
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4f .. :try_end_52} :catch_2f
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_3c

    :cond_52
    :goto_52
    :try_start_52
    throw v5

    :catch_53
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_52

    :cond_58
    invoke-virtual {v2}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_52 .. :try_end_5b} :catch_2f
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5b} :catch_3c

    goto :goto_52

    :catchall_5c
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    goto :goto_4b
.end method

.method public static deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 191
    if-eqz p0, :cond_1d

    const/4 v3, 0x1

    :goto_4
    const-string v5, "The InputStream must not be null"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :try_start_b
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_10} :catch_24
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_2f

    .local v1, "in":Ljava/io/ObjectInputStream;
    const/4 v4, 0x0

    .line 194
    :try_start_11
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_31
    .catchall {:try_start_11 .. :try_end_14} :catchall_33

    move-result-object v2

    .line 196
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_1c

    if-eqz v4, :cond_2b

    :try_start_19
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_1c} :catch_24
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_2f

    .line 195
    :cond_1c
    :goto_1c
    return-object v2

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_1d
    move v3, v4

    .line 191
    goto :goto_4

    .line 196
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "obj":Ljava/lang/Object;, "TT;"
    :catch_1f
    move-exception v3

    :try_start_20
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_23} :catch_24
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2f

    goto :goto_1c

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :catch_24
    move-exception v0

    .line 197
    .local v0, "ex":Ljava/lang/Exception;
    :goto_25
    new-instance v3, Lorg/apache/commons/lang3/SerializationException;

    invoke-direct {v3, v0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 196
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b .. :try_end_2e} :catch_24
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_1c

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :catch_2f
    move-exception v0

    goto :goto_25

    .line 192
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :catch_31
    move-exception v4

    :try_start_32
    throw v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 196
    :catchall_33
    move-exception v3

    if-eqz v1, :cond_3b

    if-eqz v4, :cond_41

    :try_start_38
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_38 .. :try_end_3b} :catch_24
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_2f

    :cond_3b
    :goto_3b
    :try_start_3b
    throw v3

    :catch_3c
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3b

    :cond_41
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_44} :catch_24
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_44} :catch_2f

    goto :goto_3b
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .registers 4
    .param p0, "objectData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 222
    if-eqz p0, :cond_15

    const/4 v0, 0x1

    :goto_4
    const-string v2, "The byte[] must not be null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/apache/commons/lang3/SerializationUtils;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_15
    move v0, v1

    .line 222
    goto :goto_4
.end method

.method public static roundtrip(Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "msg":Ljava/io/Serializable;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/SerializationUtils;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public static serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V
    .registers 7
    .param p0, "obj"    # Ljava/io/Serializable;
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    const/4 v3, 0x0

    .line 136
    if-eqz p1, :cond_1c

    const/4 v2, 0x1

    :goto_4
    const-string v4, "The OutputStream must not be null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :try_start_b
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_23

    .local v1, "out":Ljava/io/ObjectOutputStream;
    const/4 v3, 0x0

    .line 138
    :try_start_11
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_2e
    .catchall {:try_start_11 .. :try_end_14} :catchall_30

    .line 139
    if-eqz v1, :cond_1b

    if-eqz v3, :cond_2a

    :try_start_18
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_23

    .line 142
    :cond_1b
    :goto_1b
    return-void

    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    :cond_1c
    move v2, v3

    .line 136
    goto :goto_4

    .line 139
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catch_1e
    move-exception v2

    :try_start_1f
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_1b

    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    :catch_23
    move-exception v0

    .line 140
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/lang3/SerializationException;

    invoke-direct {v2, v0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 139
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :cond_2a
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_23

    goto :goto_1b

    .line 137
    :catch_2e
    move-exception v3

    :try_start_2f
    throw v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 139
    :catchall_30
    move-exception v2

    if-eqz v1, :cond_38

    if-eqz v3, :cond_3e

    :try_start_35
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_23

    :cond_38
    :goto_38
    :try_start_38
    throw v2

    :catch_39
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_38

    :cond_3e
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_41} :catch_23

    goto :goto_38
.end method

.method public static serialize(Ljava/io/Serializable;)[B
    .registers 3
    .param p0, "obj"    # Ljava/io/Serializable;

    .prologue
    .line 153
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 154
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
