.class Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;
.super Ljava/lang/Object;
.source "BitmapProcessor.java"

# interfaces
.implements Lcom/mob/tools/network/RawNetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doTask(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

.field final synthetic val$md5:Ljava/lang/String;

.field final synthetic val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    iput-object p2, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$md5:Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/io/InputStream;)V
    .registers 11
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 361
    new-instance v8, Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;

    invoke-direct {v8, p1}, Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;-><init>(Ljava/io/InputStream;)V

    .line 362
    .local v8, "pis":Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;
    const/4 v6, 0x0

    .line 363
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1600()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 364
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1600()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$md5:Ljava/lang/String;

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    .local v7, "file":Ljava/io/File;
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    invoke-static {v0, v8, v7}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->access$1900(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Ljava/io/InputStream;Ljava/io/File;)V

    .line 366
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 367
    :cond_33
    invoke-static {v7, v2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 373
    :goto_37
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 375
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 382
    .end local v7    # "file":Ljava/io/File;
    :cond_42
    :goto_42
    if-eqz v6, :cond_4a

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 383
    :cond_4a
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1800(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V

    .line 391
    :goto_4f
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->access$2002(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .line 392
    return-void

    .line 369
    .restart local v7    # "file":Ljava/io/File;
    :cond_56
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .line 370
    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v1

    iget v1, v1, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredWidth:I

    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v2}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v2

    iget v2, v2, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredHeight:I

    iget-object v3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .line 371
    invoke-static {v3}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v3

    iget v3, v3, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->quality:I

    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v4

    iget-wide v4, v4, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->maxBytes:J

    .line 369
    invoke-static/range {v0 .. v5}, Lcom/mob/tools/utils/BitmapHelper;->getBitmapByCompressQuality(Ljava/lang/String;IIIJ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_37

    .line 379
    .end local v7    # "file":Ljava/io/File;
    :cond_7f
    invoke-static {v8, v2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_42

    .line 385
    :cond_84
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$300(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 387
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1000()Lcom/mob/tools/gui/CachePool;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v2}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/gui/BitmapProcessor;->access$1300(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/gui/CachePool;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 389
    :cond_a8
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v0, v6}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    goto :goto_4f
.end method
