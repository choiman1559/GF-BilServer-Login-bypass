.class Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;
.super Ljava/lang/Object;
.source "SunbornGameChannelApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->doPay(Lcom/sunborn/gameplatform/core/module/PayInfoModel;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

.field final synthetic val$payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;


# direct methods
.method constructor <init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;Lcom/sunborn/gameplatform/core/module/PayInfoModel;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    iput-object p2, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->val$payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->val$payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    iget-wide v2, v2, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->money:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v9

    .line 260
    .local v9, "fee":I
    int-to-double v2, v9

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    double-to-int v10, v2

    .line 262
    .local v10, "gameMoney":I
    const-string v15, ""

    .line 263
    .local v15, "notify_url":Ljava/lang/String;
    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getHttpPayDOMAINUr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_51

    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getHttpPayDOMAINUr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "998"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getHttpPayDOMAINUr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "999"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 264
    :cond_49
    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getCOM_SUNBORN_PLATFORM_HTTP_PAY_CALL_BACK()Ljava/lang/String;

    move-result-object v15

    .line 268
    :cond_51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v2}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$600(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v2}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$100(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v2}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$200(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v2}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$700(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v2}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$500(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->val$payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    iget-object v11, v2, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->sdk_order_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->val$payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    iget-object v12, v2, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->product_name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->val$payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    iget-object v13, v2, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->product_name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->val$payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    iget-object v14, v2, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->game_order_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;->val$payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    iget-object v0, v2, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->channel_sign:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6$1;

    invoke-direct/range {v17 .. v18}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6$1;-><init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;)V

    invoke-virtual/range {v3 .. v17}, Lcom/bsgamesdk/android/BSGameSdk;->pay(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;)V

    .line 297
    return-void
.end method
