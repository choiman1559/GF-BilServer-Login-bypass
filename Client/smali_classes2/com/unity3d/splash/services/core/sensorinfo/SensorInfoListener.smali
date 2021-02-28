.class public Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static _accelerometerListener:Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;

.field private static _accelerometerSensor:Landroid/hardware/Sensor;

.field private static _latestAccelerometerEvent:Landroid/hardware/SensorEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;

    sput-object v0, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_accelerometerSensor:Landroid/hardware/Sensor;

    sput-object v0, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_latestAccelerometerEvent:Landroid/hardware/SensorEvent;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccelerometerData()Lorg/json/JSONObject;
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_latestAccelerometerEvent:Landroid/hardware/SensorEvent;

    if-eqz v1, :cond_31

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_a
    const-string v1, "x"

    sget-object v2, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_latestAccelerometerEvent:Landroid/hardware/SensorEvent;

    iget-object v2, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "y"

    sget-object v2, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_latestAccelerometerEvent:Landroid/hardware/SensorEvent;

    iget-object v2, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "z"

    sget-object v2, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_latestAccelerometerEvent:Landroid/hardware/SensorEvent;

    iget-object v2, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-object v0

    :catch_32
    move-exception v1

    const-string v2, "JSON error while constructing accelerometer data"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_31
.end method

.method public static isAccelerometerListenerActive()Z
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static startAccelerometerListener(I)Z
    .registers 4

    sget-object v0, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;

    if-nez v0, :cond_b

    new-instance v0, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;

    invoke-direct {v0}, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;

    :cond_b
    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sput-object v1, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_accelerometerSensor:Landroid/hardware/Sensor;

    sget-object v1, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;

    sget-object v2, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_accelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    return v0
.end method

.method public static stopAccelerometerListener()V
    .registers 2

    sget-object v0, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sget-object v1, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;

    :cond_18
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    sput-object p1, Lcom/unity3d/splash/services/core/sensorinfo/SensorInfoListener;->_latestAccelerometerEvent:Landroid/hardware/SensorEvent;

    :cond_b
    return-void
.end method