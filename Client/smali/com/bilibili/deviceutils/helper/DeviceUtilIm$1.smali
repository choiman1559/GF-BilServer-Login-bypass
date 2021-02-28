.class Lcom/bilibili/deviceutils/helper/DeviceUtilIm$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getIp()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;


# direct methods
.method constructor <init>(Lcom/bilibili/deviceutils/helper/DeviceUtilIm;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm$1;->this$0:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm$1;->this$0:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-static {}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->getNetIp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->ip:Ljava/lang/String;

    return-void
.end method
