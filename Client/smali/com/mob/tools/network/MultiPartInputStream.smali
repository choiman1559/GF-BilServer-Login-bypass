.class public Lcom/mob/tools/network/MultiPartInputStream;
.super Ljava/io/InputStream;
.source "MultiPartInputStream.java"


# instance fields
.field private curIs:I

.field private isList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    .line 13
    return-void
.end method

.method private isEmpty()Z
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public addInputStream(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mob/tools/network/MultiPartInputStream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_7
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v1, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 32
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_6

    .line 34
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_16
    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mob/tools/network/MultiPartInputStream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 42
    const/4 v0, -0x1

    .line 55
    :cond_7
    return v0

    .line 45
    :cond_8
    iget-object v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 46
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 47
    .local v0, "data":I
    :goto_16
    if-gez v0, :cond_7

    .line 48
    iget v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    .line 49
    iget v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    iget-object v3, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 52
    iget-object v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "is":Ljava/io/InputStream;
    check-cast v1, Ljava/io/InputStream;

    .line 53
    .restart local v1    # "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_16
.end method

.method public read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mob/tools/network/MultiPartInputStream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 60
    const/4 v1, -0x1

    .line 73
    :cond_7
    return v1

    .line 63
    :cond_8
    iget-object v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 64
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 65
    .local v1, "len":I
    :goto_16
    if-gez v1, :cond_7

    .line 66
    iget v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    .line 67
    iget v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    iget-object v3, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 70
    iget-object v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "is":Ljava/io/InputStream;
    check-cast v0, Ljava/io/InputStream;

    .line 71
    .restart local v0    # "is":Ljava/io/InputStream;
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_16
.end method

.method public skip(J)J
    .registers 4
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
