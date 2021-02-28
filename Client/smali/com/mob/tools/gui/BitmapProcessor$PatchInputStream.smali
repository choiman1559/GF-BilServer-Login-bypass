.class Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;
.super Ljava/io/FilterInputStream;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatchInputStream"
.end annotation


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 445
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 446
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;->in:Ljava/io/InputStream;

    .line 447
    return-void
.end method


# virtual methods
.method public skip(J)J
    .registers 12
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    const-wide/16 v0, 0x0

    .line 451
    .local v0, "m":J
    :goto_2
    cmp-long v4, v0, p1

    if-gez v4, :cond_14

    .line 452
    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v0

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 453
    .local v2, "mm":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_15

    .line 458
    .end local v2    # "mm":J
    :cond_14
    return-wide v0

    .line 456
    .restart local v2    # "mm":J
    :cond_15
    add-long/2addr v0, v2

    .line 457
    goto :goto_2
.end method
