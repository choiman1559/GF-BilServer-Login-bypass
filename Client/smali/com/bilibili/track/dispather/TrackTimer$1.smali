.class Lcom/bilibili/track/dispather/TrackTimer$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/dispather/TrackTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/track/dispather/TrackTimer;


# direct methods
.method constructor <init>(Lcom/bilibili/track/dispather/TrackTimer;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/bilibili/track/dispather/TrackTimer$1;->this$0:Lcom/bilibili/track/dispather/TrackTimer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackTimer$1;->this$0:Lcom/bilibili/track/dispather/TrackTimer;

    invoke-static {v0}, Lcom/bilibili/track/dispather/TrackTimer;->access$000(Lcom/bilibili/track/dispather/TrackTimer;)Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackTimer$1;->this$0:Lcom/bilibili/track/dispather/TrackTimer;

    invoke-static {v0}, Lcom/bilibili/track/dispather/TrackTimer;->access$000(Lcom/bilibili/track/dispather/TrackTimer;)Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;->onCallback()V

    :cond_14
    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackTimer$1;->this$0:Lcom/bilibili/track/dispather/TrackTimer;

    invoke-static {v0}, Lcom/bilibili/track/dispather/TrackTimer;->access$200(Lcom/bilibili/track/dispather/TrackTimer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bilibili/track/dispather/TrackTimer$1;->this$0:Lcom/bilibili/track/dispather/TrackTimer;

    invoke-static {v2}, Lcom/bilibili/track/dispather/TrackTimer;->access$100(Lcom/bilibili/track/dispather/TrackTimer;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
