.class public Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
.super Ljava/lang/Object;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageReq"
.end annotation


# instance fields
.field private bitmapDesiredOptions:Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

.field private callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;",
            ">;"
        }
    .end annotation
.end field

.field private diskCacheTime:J

.field private reqTime:J

.field private url:Ljava/lang/String;

.field private useDiskCache:Z

.field private useRamCache:Z

.field private worker:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-boolean v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->useRamCache:Z

    .line 475
    iput-boolean v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->useDiskCache:Z

    .line 476
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->diskCacheTime:J

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->reqTime:J

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->callbacks:Ljava/util/ArrayList;

    .line 484
    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->bitmapDesiredOptions:Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .param p1, "x1"    # Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->bitmapDesiredOptions:Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .param p1, "x1"    # Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->worker:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->throwComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V
    .registers 1
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->throwError()V

    return-void
.end method

.method static synthetic access$200(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->callbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->useRamCache:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .param p1, "x1"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->useRamCache:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)J
    .registers 3
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .prologue
    .line 471
    iget-wide v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->diskCacheTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;J)J
    .registers 4
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .param p1, "x1"    # J

    .prologue
    .line 471
    iput-wide p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->diskCacheTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->useDiskCache:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .param p1, "x1"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->useDiskCache:Z

    return p1
.end method

.method private throwComplete(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 487
    iget-object v1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;

    .line 488
    .local v0, "cb":Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;
    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;->onImageGot(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 490
    .end local v0    # "cb":Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;
    :cond_18
    return-void
.end method

.method private throwError()V
    .registers 5

    .prologue
    .line 493
    iget-object v1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;

    .line 494
    .local v0, "cb":Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;
    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;->onImageGot(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 496
    .end local v0    # "cb":Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;
    :cond_19
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->reqTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 502
    const-string v1, "worker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->worker:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    invoke-virtual {v2}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->worker:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    invoke-virtual {v2}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
