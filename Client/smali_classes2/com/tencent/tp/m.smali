.class public Lcom/tencent/tp/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static volatile a:Lcom/tencent/tp/m;


# instance fields
.field private b:Landroid/hardware/SensorManager;

.field private c:Z

.field private d:I

.field private e:Ljava/util/Set;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tp/m;->e:Ljava/util/Set;

    return-void
.end method

.method public static a()Lcom/tencent/tp/m;
    .registers 2

    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/m;

    if-nez v0, :cond_13

    const-class v1, Lcom/tencent/tp/m;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/m;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/tp/m;

    invoke-direct {v0}, Lcom/tencent/tp/m;-><init>()V

    sput-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/m;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tencent/tp/m;->a:Lcom/tencent/tp/m;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 5

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/tencent/tp/m;->c:Z

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iput-boolean v1, p0, Lcom/tencent/tp/m;->c:Z

    :try_start_8
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/tencent/tp/m;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tp/m;->d:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_20} :catch_21

    goto :goto_5

    :catch_21
    move-exception v0

    const-string v0, "Dido NzinjmHvivbzm avdgzy"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_8

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_e

    :cond_8
    iget-object v0, p0, Lcom/tencent/tp/m;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/tencent/tp/m;->e:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/tencent/tp/m;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/tp/m;->d:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_38

    iget v0, p0, Lcom/tencent/tp/m;->d:I

    const/16 v1, 0x40

    if-le v0, v1, :cond_d

    iget-object v0, p0, Lcom/tencent/tp/m;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_d

    :cond_38
    iget-object v0, p0, Lcom/tencent/tp/m;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NzinjmXio:"

    invoke-static {v1}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tp/m;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " XcvibzXio:"

    invoke-static {v1}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tp/m;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tp/m;->d:I

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_71

    const-string v1, "NzinjmXcvibzOjjHpxc"

    invoke-static {v1}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    :cond_71
    :try_start_71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->c(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_78} :catch_79

    goto :goto_d

    :catch_79
    move-exception v0

    goto :goto_d
.end method
