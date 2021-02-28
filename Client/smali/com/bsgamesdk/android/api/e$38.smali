.class final Lcom/bsgamesdk/android/api/e$38;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    sget-object v1, Lcom/bsgamesdk/android/model/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getBsDeviceInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/baseconnect/JsonUtils;->objectToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/model/c;->b(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_11
.end method
