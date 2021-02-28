.class Lcom/bilibili/deviceutils/BilibiliDevice$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/deviceutils/BilibiliDevice;->createHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/deviceutils/BilibiliDevice;


# direct methods
.method constructor <init>(Lcom/bilibili/deviceutils/BilibiliDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/deviceutils/BilibiliDevice$2;->this$0:Lcom/bilibili/deviceutils/BilibiliDevice;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_68

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/bilibili/deviceutils/BilibiliDevice$2;->this$0:Lcom/bilibili/deviceutils/BilibiliDevice;

    invoke-static {v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->access$200(Lcom/bilibili/deviceutils/BilibiliDevice;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_40

    iget-object v2, p0, Lcom/bilibili/deviceutils/BilibiliDevice$2;->this$0:Lcom/bilibili/deviceutils/BilibiliDevice;

    invoke-static {v2}, Lcom/bilibili/deviceutils/BilibiliDevice;->access$200(Lcom/bilibili/deviceutils/BilibiliDevice;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;

    sget-object v2, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->SUCCESS:Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->getExecptionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;->success(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_8

    :cond_40
    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDevice;->access$300()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDevice;->access$400()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/bilibili/deviceutils/BilibiliDevice$2;->this$0:Lcom/bilibili/deviceutils/BilibiliDevice;

    invoke-static {v2}, Lcom/bilibili/deviceutils/BilibiliDevice;->access$200(Lcom/bilibili/deviceutils/BilibiliDevice;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;

    sget-object v2, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->SUCCESS:Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->getExecptionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;->success(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_8

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
