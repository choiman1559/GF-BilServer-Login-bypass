.class Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;
.super Ljava/lang/Object;
.source "SunbornGameChannelApi.java"

# interfaces
.implements Lcom/bsgamesdk/android/callbacklistener/CallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;


# direct methods
.method constructor <init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;)V
    .registers 2
    .param p1, "this$1"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    .registers 8
    .param p1, "arg0"    # Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError\nErrorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nErrorMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ErrorMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->doLoginFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onFailed(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    .registers 8
    .param p1, "arg0"    # Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailed\nErrorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nErrorMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ErrorMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->doLoginFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 124
    const-string v5, "onSuccess"

    invoke-static {v5}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V

    .line 125
    iget-object v5, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;

    iget-object v5, v5, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    const-string v6, "uid"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$102(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    iget-object v5, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;

    iget-object v5, v5, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    const-string v6, "username"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$202(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    const-string v5, "access_token"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "access_token":Ljava/lang/String;
    const-string v5, "expire_times"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "expire_times":Ljava/lang/String;
    const-string v5, "refresh_token"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "refresh_token":Ljava/lang/String;
    new-instance v2, Lcom/android/data/sdk/domain/model/DataParamsModel;

    invoke-direct {v2}, Lcom/android/data/sdk/domain/model/DataParamsModel;-><init>()V

    .line 143
    .local v2, "modle":Lcom/android/data/sdk/domain/model/DataParamsModel;
    iget-object v5, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;

    iget-object v5, v5, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v5}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$300(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/data/sdk/domain/model/DataParamsModel;->setApp_id(Ljava/lang/String;)V

    .line 144
    iget-object v5, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;

    iget-object v5, v5, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v5}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$400(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/data/sdk/domain/model/DataParamsModel;->setMerchant_id(Ljava/lang/String;)V

    .line 145
    iget-object v5, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;

    iget-object v5, v5, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v5}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$500(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/data/sdk/domain/model/DataParamsModel;->setServer_id(Ljava/lang/String;)V

    .line 146
    iget-object v5, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;

    iget-object v5, v5, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v5}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$100(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/data/sdk/domain/model/DataParamsModel;->setUid(Ljava/lang/String;)V

    .line 147
    iget-object v5, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;

    iget-object v5, v5, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v5}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$600(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v5

    invoke-static {}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$000()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bsgamesdk/android/BSGameSdk;->start(Landroid/app/Activity;)V

    .line 160
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v3, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "openid"

    iget-object v6, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;

    iget-object v6, v6, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v6}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$100(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v5, "username"

    iget-object v6, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;->this$1:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;

    iget-object v6, v6, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v6}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$200(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v5, "access_token"

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v5, "expire_times"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v5, "refresh_token"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$000()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1$1;

    invoke-direct {v6, p0, v3}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1$1;-><init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;Ljava/util/HashMap;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method
