.class public abstract Lcom/mob/tools/network/HTTPPart;
.super Ljava/lang/Object;
.source "HTTPPart.java"


# instance fields
.field private listener:Lcom/mob/tools/network/OnReadListener;

.field private offset:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getInputStreamEntity()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 29
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/mob/tools/network/HTTPPart;->length()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mob/tools/network/HTTPPart;->offset:J

    sub-long v2, v4, v6

    .line 30
    .local v2, "length":J
    const-string v1, "org.apache.http.entity.InputStreamEntity"

    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    const-string v1, "InputStreamEntity"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected abstract length()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public setOffset(J)V
    .registers 4
    .param p1, "offset"    # J

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/mob/tools/network/HTTPPart;->offset:J

    .line 16
    return-void
.end method

.method public setOnReadListener(Lcom/mob/tools/network/OnReadListener;)V
    .registers 2
    .param p1, "l"    # Lcom/mob/tools/network/OnReadListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mob/tools/network/HTTPPart;->listener:Lcom/mob/tools/network/OnReadListener;

    .line 36
    return-void
.end method

.method public toInputStream()Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/mob/tools/network/ByteCounterInputStream;

    invoke-virtual {p0}, Lcom/mob/tools/network/HTTPPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/network/ByteCounterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 20
    .local v0, "is":Lcom/mob/tools/network/ByteCounterInputStream;
    iget-object v1, p0, Lcom/mob/tools/network/HTTPPart;->listener:Lcom/mob/tools/network/OnReadListener;

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/ByteCounterInputStream;->setOnInputStreamReadListener(Lcom/mob/tools/network/OnReadListener;)V

    .line 21
    iget-wide v2, p0, Lcom/mob/tools/network/HTTPPart;->offset:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 22
    iget-wide v2, p0, Lcom/mob/tools/network/HTTPPart;->offset:J

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/network/ByteCounterInputStream;->skip(J)J

    .line 24
    :cond_1b
    return-object v0
.end method
