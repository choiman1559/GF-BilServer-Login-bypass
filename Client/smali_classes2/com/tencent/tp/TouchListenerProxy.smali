.class public Lcom/tencent/tp/TouchListenerProxy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static volatile mInstance:Lcom/tencent/tp/TouchListenerProxy;


# instance fields
.field private mOnTouchCnt:I

.field private mRawListener:Landroid/view/View$OnTouchListener;

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/tp/TouchListenerProxy;
    .registers 2

    sget-object v0, Lcom/tencent/tp/TouchListenerProxy;->mInstance:Lcom/tencent/tp/TouchListenerProxy;

    if-nez v0, :cond_13

    const-class v1, Lcom/tencent/tp/TouchListenerProxy;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/tp/TouchListenerProxy;->mInstance:Lcom/tencent/tp/TouchListenerProxy;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/tp/TouchListenerProxy;

    invoke-direct {v0}, Lcom/tencent/tp/TouchListenerProxy;-><init>()V

    sput-object v0, Lcom/tencent/tp/TouchListenerProxy;->mInstance:Lcom/tencent/tp/TouchListenerProxy;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tencent/tp/TouchListenerProxy;->mInstance:Lcom/tencent/tp/TouchListenerProxy;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*#06#:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/tencent/tp/TssSdk;->onruntimeinfo([BI)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method private notifyMotionEvent(Landroid/view/MotionEvent;)V
    .registers 12

    const/4 v9, 0x2

    const/4 v8, 0x1

    iget v0, p0, Lcom/tencent/tp/TouchListenerProxy;->mScreenWidth:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/tencent/tp/TouchListenerProxy;->mScreenHeight:I

    if-nez v0, :cond_21

    :cond_a
    invoke-static {}, Lcom/tencent/tp/v;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    :try_start_11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/tencent/tp/TouchListenerProxy;->mScreenWidth:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/tencent/tp/TouchListenerProxy;->mScreenHeight:I
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_21} :catch_6d

    :cond_21
    :goto_21
    iget v0, p0, Lcom/tencent/tp/TouchListenerProxy;->mScreenWidth:I

    if-lt v0, v9, :cond_10

    iget v0, p0, Lcom/tencent/tp/TouchListenerProxy;->mScreenHeight:I

    if-lt v0, v9, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/tencent/tp/TouchListenerProxy;->mScreenWidth:I

    iget v3, p0, Lcom/tencent/tp/TouchListenerProxy;->mScreenHeight:I

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "AddTouchEvent:row=%d|col=%d|row_max=%d|col_max=%d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/TssSdk;->ioctl(Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lcom/tencent/tp/TouchListenerProxy;->mOnTouchCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/tp/TouchListenerProxy;->mOnTouchCnt:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_10

    invoke-direct {p0, v0}, Lcom/tencent/tp/TouchListenerProxy;->log(Ljava/lang/String;)V

    goto :goto_10

    :catch_6d
    move-exception v0

    iput v8, p0, Lcom/tencent/tp/TouchListenerProxy;->mScreenWidth:I

    iput v8, p0, Lcom/tencent/tp/TouchListenerProxy;->mScreenHeight:I

    goto :goto_21
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/tencent/tp/TouchListenerProxy;->mRawListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/tp/TouchListenerProxy;->mRawListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_13
    return v0

    :pswitch_14
    invoke-direct {p0, p2}, Lcom/tencent/tp/TouchListenerProxy;->notifyMotionEvent(Landroid/view/MotionEvent;)V

    goto :goto_9

    :cond_18
    const/4 v0, 0x0

    goto :goto_13

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public setRawListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/tp/TouchListenerProxy;->mRawListener:Landroid/view/View$OnTouchListener;

    return-void
.end method
