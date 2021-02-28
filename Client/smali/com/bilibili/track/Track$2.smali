.class final Lcom/bilibili/track/Track$2;
.super Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/Track;->getDeviceInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$extension:Ljava/util/Map;

.field final synthetic val$isForce:Z

.field final synthetic val$logLevel:Ljava/lang/String;

.field final synthetic val$pageName:Ljava/lang/String;

.field final synthetic val$trackType:Ljava/lang/String;


# direct methods
.method constructor <init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 8

    iput-boolean p2, p0, Lcom/bilibili/track/Track$2;->val$isForce:Z

    iput-object p3, p0, Lcom/bilibili/track/Track$2;->val$pageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/bilibili/track/Track$2;->val$eventId:Ljava/lang/String;

    iput-object p5, p0, Lcom/bilibili/track/Track$2;->val$logLevel:Ljava/lang/String;

    iput-object p6, p0, Lcom/bilibili/track/Track$2;->val$extension:Ljava/util/Map;

    iput-object p7, p0, Lcom/bilibili/track/Track$2;->val$trackType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;-><init>(I)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "TrackingData"

    const-string v1, "===========get device info error"

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/DeviceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "C0000"

    if-ne p1, v0, :cond_37

    :try_start_4
    invoke-static {p2}, Lcom/bilibili/track/Track;->access$200(Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/bilibili/track/Track$2;->val$isForce:Z

    iget-object v1, p0, Lcom/bilibili/track/Track$2;->val$pageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bilibili/track/Track$2;->val$eventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/track/Track$2;->val$logLevel:Ljava/lang/String;

    iget-object v4, p0, Lcom/bilibili/track/Track$2;->val$extension:Ljava/util/Map;

    sget-object v5, Lcom/bilibili/track/constants/TrackType;->SYSTEM:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v5}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/bilibili/track/Track;->access$300(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/bilibili/track/model/TrackModel;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/Track$2;->val$trackType:Ljava/lang/String;

    sget-object v2, Lcom/bilibili/track/constants/TrackType;->SYSTEM:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v2}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/track/model/TrackModel;->setFullCommonInfo(Lcom/bilibili/track/model/FullCommonInfo;)V

    :cond_30
    invoke-static {}, Lcom/bilibili/track/Track;->access$400()Lcom/bilibili/track/dispather/TrackActions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/track/dispather/TrackActions;->acceptInfo(Lcom/bilibili/track/model/TrackModel;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_37} :catch_38

    :cond_37
    :goto_37
    return-void

    :catch_38
    move-exception v0

    goto :goto_37
.end method
