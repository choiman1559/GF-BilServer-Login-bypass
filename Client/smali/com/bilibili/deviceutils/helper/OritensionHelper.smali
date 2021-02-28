.class public Lcom/bilibili/deviceutils/helper/OritensionHelper;
.super Ljava/lang/Object;


# static fields
.field private static volatile INSTANCE:Lcom/bilibili/deviceutils/helper/OritensionHelper;


# instance fields
.field private angleX:F

.field private angleY:F

.field private angleZ:F

.field private context:Landroid/content/Context;

.field private sensorEventListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->sensorManager:Landroid/hardware/SensorManager;

    iput v1, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->angleX:F

    iput v1, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->angleY:F

    iput v1, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->angleZ:F

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-direct {p0}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->registerGravitySensor()V

    return-void
.end method

.method static synthetic access$002(Lcom/bilibili/deviceutils/helper/OritensionHelper;F)F
    .registers 2

    iput p1, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->angleX:F

    return p1
.end method

.method static synthetic access$102(Lcom/bilibili/deviceutils/helper/OritensionHelper;F)F
    .registers 2

    iput p1, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->angleY:F

    return p1
.end method

.method static synthetic access$202(Lcom/bilibili/deviceutils/helper/OritensionHelper;F)F
    .registers 2

    iput p1, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->angleZ:F

    return p1
.end method

.method private getAngle(F)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fef619b90ea9e6fL    # 0.980665

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x12

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bilibili/deviceutils/helper/OritensionHelper;
    .registers 3

    sget-object v0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->INSTANCE:Lcom/bilibili/deviceutils/helper/OritensionHelper;

    if-nez v0, :cond_13

    const-class v1, Lcom/bilibili/deviceutils/helper/OritensionHelper;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->INSTANCE:Lcom/bilibili/deviceutils/helper/OritensionHelper;

    if-nez v0, :cond_12

    new-instance v0, Lcom/bilibili/deviceutils/helper/OritensionHelper;

    invoke-direct {v0, p0}, Lcom/bilibili/deviceutils/helper/OritensionHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->INSTANCE:Lcom/bilibili/deviceutils/helper/OritensionHelper;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->INSTANCE:Lcom/bilibili/deviceutils/helper/OritensionHelper;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private registerGravitySensor()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/bilibili/deviceutils/helper/OritensionHelper$1;

    invoke-direct {v1, p0}, Lcom/bilibili/deviceutils/helper/OritensionHelper$1;-><init>(Lcom/bilibili/deviceutils/helper/OritensionHelper;)V

    iput-object v1, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    const v3, 0xea60

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_4

    :catch_21
    move-exception v0

    goto :goto_4
.end method

.method private unRegisterGravitySensor()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f
.end method


# virtual methods
.method public getOrientation()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->unRegisterGravitySensor()V

    iget v0, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->angleX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->angleX:F

    invoke-direct {p0, v1}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->getAngle(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->angleY:F

    invoke-direct {p0, v1}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->getAngle(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/deviceutils/helper/OritensionHelper;->angleZ:F

    invoke-direct {p0, v1}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->getAngle(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3e
    return-object v0

    :cond_3f
    const-string v0, "unknown"

    goto :goto_3e
.end method
