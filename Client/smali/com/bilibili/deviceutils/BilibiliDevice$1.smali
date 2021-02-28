.class Lcom/bilibili/deviceutils/BilibiliDevice$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/deviceutils/BilibiliDevice;->getDeviceInfo(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/deviceutils/BilibiliDevice;

.field final synthetic val$deviceTypeList:Ljava/util/List;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/bilibili/deviceutils/BilibiliDevice;Ljava/util/List;I)V
    .registers 4

    iput-object p1, p0, Lcom/bilibili/deviceutils/BilibiliDevice$1;->this$0:Lcom/bilibili/deviceutils/BilibiliDevice;

    iput-object p2, p0, Lcom/bilibili/deviceutils/BilibiliDevice$1;->val$deviceTypeList:Ljava/util/List;

    iput p3, p0, Lcom/bilibili/deviceutils/BilibiliDevice$1;->val$tag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/bilibili/deviceutils/BilibiliDevice$1;->val$deviceTypeList:Ljava/util/List;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/bilibili/deviceutils/BilibiliDevice$1;->val$deviceTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2e

    :try_start_c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/bilibili/deviceutils/BilibiliDevice$1;->val$deviceTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/deviceutils/BilibiliDevice$1;->this$0:Lcom/bilibili/deviceutils/BilibiliDevice;

    invoke-static {v3, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->access$000(Lcom/bilibili/deviceutils/BilibiliDevice;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :catch_2d
    move-exception v0

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/bilibili/deviceutils/BilibiliDevice$1;->val$tag:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDevice;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_44} :catch_2d

    goto :goto_2e
.end method
