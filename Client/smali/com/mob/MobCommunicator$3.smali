.class Lcom/mob/MobCommunicator$3;
.super Ljava/lang/Object;
.source "MobCommunicator.java"

# interfaces
.implements Lcom/mob/tools/network/HttpResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobCommunicator;->a([B[Ljava/lang/String;)Lcom/mob/tools/network/HttpResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Lcom/mob/MobCommunicator;


# direct methods
.method constructor <init>(Lcom/mob/MobCommunicator;[Ljava/lang/String;[B)V
    .registers 4

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mob/MobCommunicator$3;->c:Lcom/mob/MobCommunicator;

    iput-object p2, p0, Lcom/mob/MobCommunicator$3;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/MobCommunicator$3;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/network/HttpConnection;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v10, 0xc8

    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 166
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getResponseCode()I

    move-result v2

    .line 167
    iget-object v0, p0, Lcom/mob/MobCommunicator$3;->c:Lcom/mob/MobCommunicator;

    invoke-static {v0, p1}, Lcom/mob/MobCommunicator;->a(Lcom/mob/MobCommunicator;Lcom/mob/tools/network/HttpConnection;)J

    move-result-wide v4

    .line 168
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_42

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    const-string v1, "httpStatus"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "error"

    const-string v2, "Illegal content length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v1, Lcom/mob/MobCommunicator$NetworkError;

    iget-object v2, p0, Lcom/mob/MobCommunicator$3;->c:Lcom/mob/MobCommunicator;

    invoke-static {v2}, Lcom/mob/MobCommunicator;->a(Lcom/mob/MobCommunicator;)Lcom/mob/tools/utils/Hashon;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mob/MobCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_42
    if-ne v2, v10, :cond_60

    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 177
    :goto_48
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    const/16 v1, 0x400

    new-array v6, v1, [B

    .line 179
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 180
    :goto_55
    const/4 v7, -0x1

    if-eq v1, v7, :cond_65

    .line 181
    invoke-virtual {v3, v6, v9, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 182
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_55

    .line 176
    :cond_60
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_48

    .line 184
    :cond_65
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 185
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 186
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a2

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    const-string v1, "httpStatus"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "error"

    const-string v2, "Illegal content length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v1, Lcom/mob/MobCommunicator$NetworkError;

    iget-object v2, p0, Lcom/mob/MobCommunicator$3;->c:Lcom/mob/MobCommunicator;

    invoke-static {v2}, Lcom/mob/MobCommunicator;->a(Lcom/mob/MobCommunicator;)Lcom/mob/tools/utils/Hashon;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mob/MobCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_a2
    if-ne v2, v10, :cond_b5

    .line 195
    iget-object v0, p0, Lcom/mob/MobCommunicator$3;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/MobCommunicator$3;->c:Lcom/mob/MobCommunicator;

    iget-object v2, p0, Lcom/mob/MobCommunicator$3;->b:[B

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mob/MobCommunicator;->a(Lcom/mob/MobCommunicator;[B[B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 201
    return-void

    .line 197
    :cond_b5
    iget-object v0, p0, Lcom/mob/MobCommunicator$3;->c:Lcom/mob/MobCommunicator;

    invoke-static {v0}, Lcom/mob/MobCommunicator;->a(Lcom/mob/MobCommunicator;)Lcom/mob/tools/utils/Hashon;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 198
    const-string v1, "httpStatus"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v1, Lcom/mob/MobCommunicator$NetworkError;

    iget-object v2, p0, Lcom/mob/MobCommunicator$3;->c:Lcom/mob/MobCommunicator;

    invoke-static {v2}, Lcom/mob/MobCommunicator;->a(Lcom/mob/MobCommunicator;)Lcom/mob/tools/utils/Hashon;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mob/MobCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
