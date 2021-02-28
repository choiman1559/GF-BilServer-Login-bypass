.class public Lcom/sunborn/gameplatform/core/common/SFileHelper;
.super Ljava/lang/Object;
.source "SFileHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static openAssetsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 40
    :goto_8
    return-object v1

    .line 39
    :catch_9
    move-exception v0

    .line 40
    .local v0, "var3":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static openAssetsTextFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p0, p1}, Lcom/sunborn/gameplatform/core/common/SFileHelper;->openAssetsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 16
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_8

    .line 17
    const/4 v4, 0x0

    .line 32
    :cond_7
    :goto_7
    return-object v4

    .line 19
    :cond_8
    const-string v3, ""

    .line 20
    .local v3, "line":Ljava/lang/String;
    const-string v4, ""

    .line 21
    .local v4, "result":Ljava/lang/String;
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 22
    .local v1, "inputReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    .local v0, "bufReader":Ljava/io/BufferedReader;
    :goto_16
    :try_start_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2c} :catch_2e

    move-result-object v4

    goto :goto_16

    .line 28
    :catch_2e
    move-exception v5

    .line 29
    .local v5, "var8":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method
