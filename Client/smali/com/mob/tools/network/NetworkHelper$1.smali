.class Lcom/mob/tools/network/NetworkHelper$1;
.super Ljava/lang/Object;
.source "NetworkHelper.java"

# interfaces
.implements Lcom/mob/tools/network/HttpResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/network/NetworkHelper;->jsonPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/network/NetworkHelper;

.field final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/mob/tools/network/NetworkHelper;Ljava/util/HashMap;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mob/tools/network/NetworkHelper;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/mob/tools/network/NetworkHelper$1;->this$0:Lcom/mob/tools/network/NetworkHelper;

    iput-object p2, p0, Lcom/mob/tools/network/NetworkHelper$1;->val$map:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/network/HttpConnection;)V
    .registers 11
    .param p1, "conn"    # Lcom/mob/tools/network/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    .line 351
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getResponseCode()I

    move-result v4

    .line 352
    .local v4, "status":I
    const/16 v6, 0xc8

    if-eq v4, v6, :cond_e

    const/16 v6, 0xc9

    if-ne v4, v6, :cond_4d

    .line 353
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 355
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 356
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 357
    .local v5, "txt":Ljava/lang/String;
    :goto_2b
    if-eqz v5, :cond_3e

    .line 358
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_36

    .line 359
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    :cond_36
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_2b

    .line 364
    :cond_3e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 365
    iget-object v6, p0, Lcom/mob/tools/network/NetworkHelper$1;->val$map:Ljava/util/HashMap;

    const-string v7, "res"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-void

    .line 367
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "txt":Ljava/lang/String;
    :cond_4d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 369
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 370
    .restart local v0    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 371
    .restart local v5    # "txt":Ljava/lang/String;
    :goto_6a
    if-eqz v5, :cond_7d

    .line 372
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_75

    .line 373
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    :cond_75
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_6a

    .line 378
    :cond_7d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 380
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 381
    .local v1, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "error"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v6, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance v6, Ljava/lang/Throwable;

    new-instance v7, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v7}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v7, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v6
.end method
