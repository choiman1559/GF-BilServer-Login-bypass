.class Lcom/bilibili/deviceutils/helper/OritensionHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/deviceutils/helper/OritensionHelper;->registerGravitySensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/deviceutils/helper/OritensionHelper;


# direct methods
.method constructor <init>(Lcom/bilibili/deviceutils/helper/OritensionHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper$1;->this$0:Lcom/bilibili/deviceutils/helper/OritensionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper$1;->this$0:Lcom/bilibili/deviceutils/helper/OritensionHelper;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->access$002(Lcom/bilibili/deviceutils/helper/OritensionHelper;F)F

    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper$1;->this$0:Lcom/bilibili/deviceutils/helper/OritensionHelper;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->access$102(Lcom/bilibili/deviceutils/helper/OritensionHelper;F)F

    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper$1;->this$0:Lcom/bilibili/deviceutils/helper/OritensionHelper;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->access$202(Lcom/bilibili/deviceutils/helper/OritensionHelper;F)F

    return-void
.end method
