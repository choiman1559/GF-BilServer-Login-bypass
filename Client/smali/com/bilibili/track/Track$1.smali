.class final Lcom/bilibili/track/Track$1;
.super Lcom/bilibili/track/api/RequestCallbackImp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/Track;->getTrackConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$remoteSDKConfig:Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;


# direct methods
.method constructor <init>(Lcom/bilibili/track/api/HttpRequestHandler;Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;)V
    .registers 3

    iput-object p2, p0, Lcom/bilibili/track/Track$1;->val$remoteSDKConfig:Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;

    invoke-direct {p0, p1}, Lcom/bilibili/track/api/RequestCallbackImp;-><init>(Lcom/bilibili/track/api/HttpRequestHandler;)V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_1f

    check-cast p1, Lcom/bilibili/track/config/TrackConfig;

    invoke-static {p1}, Lcom/bilibili/track/Track;->access$002(Lcom/bilibili/track/config/TrackConfig;)Lcom/bilibili/track/config/TrackConfig;

    invoke-static {}, Lcom/bilibili/track/Track;->access$000()Lcom/bilibili/track/config/TrackConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/track/config/TrackConfigHelper;->getRemoteTrackConfig(Lcom/bilibili/track/config/TrackConfig;)Lcom/bilibili/track/config/TrackConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/Track$1;->val$remoteSDKConfig:Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;

    invoke-static {v0, v1}, Lcom/bilibili/track/config/TrackConfigHelper;->updateLocalConfig(Lcom/bilibili/track/config/TrackConfig;Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;)V

    invoke-static {}, Lcom/bilibili/track/Track;->access$000()Lcom/bilibili/track/config/TrackConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/track/config/TrackConfigHelper;->getRemoteTrackConfig(Lcom/bilibili/track/config/TrackConfig;)Lcom/bilibili/track/config/TrackConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/track/Track;->access$100(Lcom/bilibili/track/config/TrackConfig;)V

    :cond_1f
    return-void
.end method
