.class Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;


# direct methods
.method constructor <init>(Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb$1;->this$0:Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->access$100()Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb$1;->this$0:Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    invoke-static {v0}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;->access$200(Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "MicroMsg.SDK.WXApiImplV10.ActivityLifecycleCb"

    const-string v1, "WXStat trigger onBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb$1;->this$0:Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    invoke-static {v0}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;->access$300(Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "onBackground_WX"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/wxop/stat/StatService;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb$1;->this$0:Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;->access$202(Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;Z)Z

    :cond_27
    return-void
.end method
