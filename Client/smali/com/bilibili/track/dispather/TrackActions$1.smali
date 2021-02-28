.class Lcom/bilibili/track/dispather/TrackActions$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/track/dispather/TrackActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/track/dispather/TrackActions;


# direct methods
.method constructor <init>(Lcom/bilibili/track/dispather/TrackActions;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/dispather/TrackActions$1;->this$0:Lcom/bilibili/track/dispather/TrackActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback()V
    .registers 3

    const-string v0, "Track"

    const-string v1, "callback"

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/DeviceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bilibili/track/model/TrackModel;

    invoke-direct {v0}, Lcom/bilibili/track/model/TrackModel;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/track/model/TrackModel;->setWrite(Z)V

    const-string v1, "TimeSend"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/model/TrackModel;->setType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bilibili/track/dispather/TrackActions$1;->this$0:Lcom/bilibili/track/dispather/TrackActions;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/dispather/TrackActions;->acceptInfo(Lcom/bilibili/track/model/TrackModel;)V

    return-void
.end method
