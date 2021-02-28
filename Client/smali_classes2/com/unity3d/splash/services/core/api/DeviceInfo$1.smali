.class final Lcom/unity3d/splash/services/core/api/DeviceInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/splash/services/core/device/IVolumeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/core/api/DeviceInfo;->registerVolumeChangeListener(Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private _streamType:I

.field final synthetic val$streamType:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/splash/services/core/api/DeviceInfo$1;->val$streamType:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/unity3d/splash/services/core/api/DeviceInfo$1;->val$streamType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unity3d/splash/services/core/api/DeviceInfo$1;->_streamType:I

    return-void
.end method


# virtual methods
.method public final getStreamType()I
    .registers 2

    iget v0, p0, Lcom/unity3d/splash/services/core/api/DeviceInfo$1;->_streamType:I

    return v0
.end method

.method public final onVolumeChanged(I)V
    .registers 8

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->DEVICEINFO:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/core/api/DeviceInfo$DeviceInfoEvent;->VOLUME_CHANGED:Lcom/unity3d/splash/services/core/api/DeviceInfo$DeviceInfoEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/api/DeviceInfo$1;->getStreamType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/unity3d/splash/services/core/api/DeviceInfo$1;->_streamType:I

    invoke-static {v5}, Lcom/unity3d/splash/services/core/device/Device;->getStreamMaxVolume(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void
.end method
