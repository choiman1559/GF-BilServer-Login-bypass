.class public Lcom/mob/tools/network/HttpConnectionImpl;
.super Ljava/lang/Object;
.source "HttpConnectionImpl.java"

# interfaces
.implements Lcom/mob/tools/network/HttpConnection;


# instance fields
.field private response:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    :try_start_0
    const-string v1, "org.apache.http.HttpResponse"

    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    const-string v1, "org.apache.http.Header"

    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 25
    .local v0, "t":Ljava/lang/Throwable;
    :goto_a
    return-void

    .line 22
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_b
    move-exception v0

    .line 23
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "httpResponse"    # Ljava/lang/Object;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mob/tools/network/HttpConnectionImpl;->response:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public getErrorStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/mob/tools/network/HttpConnectionImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 63
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v8, p0, Lcom/mob/tools/network/HttpConnectionImpl;->response:Ljava/lang/Object;

    const-string v10, "getAllHeaders"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "allHeaders":Ljava/lang/Object;
    if-eqz v0, :cond_6e

    .line 66
    const-string v8, "length"

    invoke-static {v0, v8}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-array v2, v8, [Ljava/lang/Object;

    .line 67
    .local v2, "headers":[Ljava/lang/Object;
    const/4 v8, 0x0

    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v0, v8, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    array-length v10, v2

    move v8, v9

    :goto_29
    if-ge v8, v10, :cond_6e

    aget-object v1, v2, v8

    .line 69
    .local v1, "h":Ljava/lang/Object;
    const-string v9, "getName"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v9, v11}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 70
    .local v4, "name":Ljava/lang/String;
    const-string v9, "getValue"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v9, v11}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 71
    .local v6, "value":Ljava/lang/String;
    if-nez v6, :cond_47

    const-string v6, ""

    .line 72
    :cond_47
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "values":[Ljava/lang/String;
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_54} :catch_57

    .line 68
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 77
    .end local v0    # "allHeaders":Ljava/lang/Object;
    .end local v1    # "h":Ljava/lang/Object;
    .end local v2    # "headers":[Ljava/lang/Object;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "values":[Ljava/lang/String;
    :catch_57
    move-exception v5

    .line 78
    .local v5, "t":Ljava/lang/Throwable;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x9

    if-ge v8, v9, :cond_68

    .line 79
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 81
    :cond_68
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8, v5}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 76
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v0    # "allHeaders":Ljava/lang/Object;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_6e
    return-object v3
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/mob/tools/network/HttpConnectionImpl;->response:Ljava/lang/Object;

    const-string v3, "getEntity"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "entity":Ljava/lang/Object;
    const-string v2, "getContent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    return-object v2

    .line 48
    .end local v0    # "entity":Ljava/lang/Object;
    :catch_17
    move-exception v1

    .line 49
    .local v1, "t":Ljava/lang/Throwable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_28

    .line 50
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_28
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getResponseCode()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/mob/tools/network/HttpConnectionImpl;->response:Ljava/lang/Object;

    const-string v3, "getStatusLine"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, "line":Ljava/lang/Object;
    const-string v2, "getStatusCode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1b

    move-result v2

    return v2

    .line 35
    .end local v0    # "line":Ljava/lang/Object;
    :catch_1b
    move-exception v1

    .line 36
    .local v1, "t":Ljava/lang/Throwable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_2c

    .line 37
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_2c
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
