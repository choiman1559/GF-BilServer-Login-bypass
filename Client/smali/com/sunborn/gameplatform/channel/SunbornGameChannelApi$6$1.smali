.class Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6$1;
.super Ljava/lang/Object;
.source "SunbornGameChannelApi.java"

# interfaces
.implements Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;


# direct methods
.method constructor <init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;)V
    .registers 2
    .param p1, "this$1"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    .registers 10
    .param p1, "out_trade_no"    # Ljava/lang/String;
    .param p2, "arg0"    # Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError\npayOutTradeNo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nErrorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    invoke-virtual {p2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nErrorMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    invoke-virtual {p2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ErrorMessage:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;

    iget-object v0, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->val$payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    iget-wide v4, v0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->money:D

    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;

    iget-object v0, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->val$payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    iget-object v6, v0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->game_order_id:Ljava/lang/String;

    .line 292
    invoke-virtual/range {v1 .. v6}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->PayResponse(ILjava/lang/String;DLjava/lang/String;)V

    .line 295
    return-void
.end method

.method public onFailed(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    .registers 10
    .param p1, "out_trade_no"    # Ljava/lang/String;
    .param p2, "arg0"    # Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailed\npayOutTradeNo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nErrorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    invoke-virtual {p2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nErrorMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    invoke-virtual {p2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ErrorMessage:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;

    iget-object v0, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->val$payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    iget-wide v4, v0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->money:D

    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;

    iget-object v0, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->val$payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    iget-object v6, v0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->game_order_id:Ljava/lang/String;

    .line 282
    invoke-virtual/range {v1 .. v6}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->PayResponse(ILjava/lang/String;DLjava/lang/String;)V

    .line 285
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "out_trade_no"    # Ljava/lang/String;
    .param p2, "bs_trade_no"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string v0, "onSuccess"

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;

    iget-object v0, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->val$payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    iget-wide v4, v0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->money:D

    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;

    iget-object v0, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->val$payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    iget-object v6, v0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->game_order_id:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->PayResponse(ILjava/lang/String;DLjava/lang/String;)V

    .line 275
    return-void
.end method
