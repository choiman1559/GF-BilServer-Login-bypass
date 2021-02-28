.class final Lcom/mob/tools/utils/ResHelper$1;
.super Ljava/lang/Object;
.source "ResHelper.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/ResHelper;->getMediaUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 562
    iput-object p1, p0, Lcom/mob/tools/utils/ResHelper$1;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 564
    invoke-static {p2}, Lcom/mob/tools/utils/ResHelper;->access$002(Landroid/net/Uri;)Landroid/net/Uri;

    .line 565
    iget-object v1, p0, Lcom/mob/tools/utils/ResHelper$1;->val$object:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_6
    iget-object v0, p0, Lcom/mob/tools/utils/ResHelper$1;->val$object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 567
    monitor-exit v1

    .line 568
    return-void

    .line 567
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method
