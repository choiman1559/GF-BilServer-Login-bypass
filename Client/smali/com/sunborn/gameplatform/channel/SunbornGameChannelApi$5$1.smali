.class Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5$1;
.super Ljava/lang/Object;
.source "SunbornGameChannelApi.java"

# interfaces
.implements Lcom/bsgamesdk/android/callbacklistener/CallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;


# direct methods
.method constructor <init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;)V
    .registers 2
    .param p1, "this$1"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    .registers 4
    .param p1, "arg0"    # Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logout onError\nErrorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nErrorMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    invoke-virtual {p1}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->LogoutResponse()V

    .line 234
    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;

    iget-object v0, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v0}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$600(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    invoke-static {}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$000()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->stop(Landroid/app/Activity;)V

    .line 235
    return-void
.end method

.method public onFailed(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    .registers 4
    .param p1, "arg0"    # Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logout onFailed\nErrorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nErrorMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->LogoutResponse()V

    .line 225
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->LogoutResponse()V

    .line 215
    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;

    iget-object v0, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v0}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$600(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    invoke-static {}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$000()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->stop(Landroid/app/Activity;)V

    .line 216
    return-void
.end method
