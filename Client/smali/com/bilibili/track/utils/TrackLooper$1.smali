.class Lcom/bilibili/track/utils/TrackLooper$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/utils/TrackLooper;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/track/utils/TrackLooper;


# direct methods
.method constructor <init>(Lcom/bilibili/track/utils/TrackLooper;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/bilibili/track/utils/TrackLooper$1;->this$0:Lcom/bilibili/track/utils/TrackLooper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-static {}, Lcom/bilibili/track/utils/TrackidUtils;->buildTrackId()V

    iget-object v0, p0, Lcom/bilibili/track/utils/TrackLooper$1;->this$0:Lcom/bilibili/track/utils/TrackLooper;

    invoke-virtual {v0}, Lcom/bilibili/track/utils/TrackLooper;->quit()V

    return-void
.end method
