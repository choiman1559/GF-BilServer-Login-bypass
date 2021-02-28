.class Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;
.super Ljava/lang/Object;
.source "SunbornGamePlatformApi.java"

# interfaces
.implements Lcom/lohanry/android/framework/action/callback/BaseActionResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHttpCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;


# direct methods
.method private constructor <init>(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;)V
    .registers 2

    .prologue
    .line 288
    iput-object p1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;
    .param p2, "x1"    # Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$1;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;-><init>(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;)V

    return-void
.end method


# virtual methods
.method public final onBegin(Lcom/lohanry/android/framework/action/BaseAction;)V
    .registers 3
    .param p1, "action"    # Lcom/lohanry/android/framework/action/BaseAction;

    .prologue
    .line 291
    const-string v0, "onBegin"

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->e(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-static {v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->access$500(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;)V

    .line 293
    return-void
.end method

.method public final onCancel(Lcom/lohanry/android/framework/action/BaseAction;)V
    .registers 2
    .param p1, "action"    # Lcom/lohanry/android/framework/action/BaseAction;

    .prologue
    .line 324
    return-void
.end method

.method public final onError(Lcom/lohanry/android/framework/action/BaseAction;)V
    .registers 11
    .param p1, "action"    # Lcom/lohanry/android/framework/action/BaseAction;

    .prologue
    const/4 v2, -0x1

    .line 328
    const-string v1, "onError"

    invoke-static {v1}, Lcom/sunborn/gameplatform/core/common/SLog;->e(Ljava/lang/String;)V

    .line 329
    instance-of v1, p1, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;

    if-eqz v1, :cond_26

    move-object v8, p1

    .line 331
    check-cast v8, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;

    .line 335
    .local v8, "verfyaction":Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;
    iget-object v1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-virtual {v8}, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->showMsgDialog(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-virtual {v8}, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->LoginResponseDirect(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .end local v8    # "verfyaction":Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;
    :cond_25
    :goto_25
    return-void

    .line 337
    :cond_26
    instance-of v1, p1, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;

    if-eqz v1, :cond_25

    move-object v7, p1

    .line 339
    check-cast v7, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;

    .line 341
    .local v7, "orderAction":Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;
    iget-object v1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-virtual {v7}, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->showMsgDialog(Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    const-string v3, ""

    iget-object v4, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    iget-object v4, v4, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    iget-wide v4, v4, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->money:D

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->PayResponse(ILjava/lang/String;DLjava/lang/String;)V

    goto :goto_25
.end method

.method public final onFinish(Lcom/lohanry/android/framework/action/BaseAction;)V
    .registers 3
    .param p1, "action"    # Lcom/lohanry/android/framework/action/BaseAction;

    .prologue
    .line 349
    const-string v0, "onFinish"

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->e(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-static {v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->access$700(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;)V

    .line 351
    return-void
.end method

.method public final onSuccess(Lcom/lohanry/android/framework/action/BaseAction;)V
    .registers 11
    .param p1, "action"    # Lcom/lohanry/android/framework/action/BaseAction;

    .prologue
    .line 298
    const-string v0, "onSuccess"

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->e(Ljava/lang/String;)V

    .line 299
    instance-of v0, p1, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;

    if-eqz v0, :cond_3d

    .line 300
    const-string v0, "SunbornLoginVerfyAction onSuccess"

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->e(Ljava/lang/String;)V

    move-object v8, p1

    .line 302
    check-cast v8, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;

    .line 304
    .local v8, "verfyaction":Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    iget-object v1, v8, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->user:Lcom/sunborn/gameplatform/core/module/SunbornUser;

    iput-object v1, v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->user:Lcom/sunborn/gameplatform/core/module/SunbornUser;

    .line 306
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    iget-object v1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    iget-object v1, v1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->user:Lcom/sunborn/gameplatform/core/module/SunbornUser;

    iget v1, v1, Lcom/sunborn/gameplatform/core/module/SunbornUser;->result:I

    iget-object v2, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    iget-object v2, v2, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->user:Lcom/sunborn/gameplatform/core/module/SunbornUser;

    iget-object v2, v2, Lcom/sunborn/gameplatform/core/module/SunbornUser;->msg:Ljava/lang/String;

    iget-object v3, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    iget-object v3, v3, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->user:Lcom/sunborn/gameplatform/core/module/SunbornUser;

    iget-object v3, v3, Lcom/sunborn/gameplatform/core/module/SunbornUser;->openid:Ljava/lang/String;

    iget-object v4, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    iget-object v4, v4, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->user:Lcom/sunborn/gameplatform/core/module/SunbornUser;

    iget-object v4, v4, Lcom/sunborn/gameplatform/core/module/SunbornUser;->accessToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    iget-object v5, v5, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->user:Lcom/sunborn/gameplatform/core/module/SunbornUser;

    iget-object v5, v5, Lcom/sunborn/gameplatform/core/module/SunbornUser;->extenVal:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->LoginResponseDirect(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .end local v8    # "verfyaction":Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;
    :cond_3c
    :goto_3c
    return-void

    .line 307
    :cond_3d
    instance-of v0, p1, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;

    if-eqz v0, :cond_3c

    .line 309
    const-string v0, "SunbornCreateOrderAction onSuccess"

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->e(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->access$600()Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    iget-object v0, v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    if-eqz v0, :cond_79

    move-object v7, p1

    .line 311
    check-cast v7, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;

    .line 312
    .local v7, "orderAction":Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    iget-object v0, v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    invoke-virtual {v7}, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->getOrderBean()Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;

    move-result-object v1

    iget-object v1, v1, Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;->payplat_order_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->sdk_order_id:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    iget-object v0, v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    invoke-virtual {v7}, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->getOrderBean()Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;

    move-result-object v1

    iget-object v1, v1, Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;->order_sign:Ljava/lang/String;

    iput-object v1, v0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->channel_sign:Ljava/lang/String;

    .line 314
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->access$600()Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    iget-object v1, v1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    invoke-interface {v0, v1}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->doPay(Lcom/sunborn/gameplatform/core/module/PayInfoModel;)Z

    goto :goto_3c

    .line 316
    .end local v7    # "orderAction":Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;
    :cond_79
    iget-object v1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    const/4 v2, -0x1

    const-string v3, ""

    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    iget-object v0, v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    iget-object v0, v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    iget-wide v4, v0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->money:D

    :goto_8a
    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->PayResponse(ILjava/lang/String;DLjava/lang/String;)V

    goto :goto_3c

    :cond_90
    const-wide/16 v4, 0x0

    goto :goto_8a
.end method
