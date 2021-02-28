.class public Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
.super Ljava/lang/Object;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapDesiredOptions"
.end annotation


# instance fields
.field public desiredHeight:I

.field public desiredWidth:I

.field public maxBytes:J

.field public quality:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput v2, p0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredWidth:I

    .line 509
    iput v2, p0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredHeight:I

    .line 510
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->maxBytes:J

    .line 511
    iput v2, p0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->quality:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 514
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredWidth:I

    if-lez v1, :cond_e

    .line 520
    iget v1, p0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    :cond_e
    iget v1, p0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredHeight:I

    if-lez v1, :cond_17

    .line 523
    iget v1, p0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    :cond_17
    iget-wide v2, p0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->maxBytes:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_24

    .line 526
    iget-wide v2, p0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->maxBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 528
    :cond_24
    iget v1, p0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->quality:I

    if-lez v1, :cond_2d

    .line 529
    iget v1, p0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->quality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
