.class public Lcom/unity3d/splash/services/ads/api/AdUnit;
.super Ljava/lang/Object;


# static fields
.field private static _adUnitActivity:Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

.field private static _currentActivityId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/unity3d/splash/services/ads/api/AdUnit;->_currentActivityId:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getViewList(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clearMotionEventCapture(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->clearCapture()V

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_21
    return-void

    :cond_22
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->LAYOUT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_21

    :cond_2a
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_21
.end method

.method public static close(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->finish()V

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_13
    return-void

    :cond_14
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_13
.end method

.method public static endMotionEventCapture(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->endCapture()V

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_21
    return-void

    :cond_22
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->LAYOUT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_21

    :cond_2a
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_21
.end method

.method public static getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/ads/api/AdUnit;->_adUnitActivity:Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    return-object v0
.end method

.method public static getCurrentAdUnitActivityId()I
    .registers 1

    sget v0, Lcom/unity3d/splash/services/ads/api/AdUnit;->_currentActivityId:I

    return v0
.end method

.method public static getCurrentMotionEventCount(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->getCurrentEventCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_29
    return-void

    :cond_2a
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->LAYOUT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_29

    :cond_32
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_29
.end method

.method private static getKeyEventList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_a

    :cond_2e
    return-object v1
.end method

.method public static getMotionEventCount(Lorg/json/JSONArray;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 8
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_22

    :try_start_d
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_1b

    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_1b
    move-exception v2

    const-string v4, "Error retrieving int from eventTypes"

    invoke-static {v4, v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_18

    :cond_22
    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_96

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->getCurrentEventCount()I

    move-result v0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->getMaxEventCount()I

    move-result v2

    if-lt v0, v2, :cond_54

    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->MAX_MOTION_EVENT_COUNT_REACHED:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_53
    return-void

    :cond_54
    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->getEventCount(Ljava/util/ArrayList;)Landroid/util/SparseIntArray;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move v0, v1

    :goto_66
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_85

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    :try_start_74
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7b} :catch_7e

    :goto_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :catch_7e
    move-exception v2

    const-string v5, "Error building response JSON"

    invoke-static {v5, v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7b

    :cond_85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_53

    :cond_8e
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->LAYOUT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_53

    :cond_96
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_53
.end method

.method public static getMotionEventData(Lorg/json/JSONObject;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 16
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_27

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_27
    const/4 v1, 0x0

    :try_start_28
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_4c

    move-result-object v0

    move-object v2, v0

    :goto_2d
    if-eqz v2, :cond_9

    const/4 v0, 0x0

    move v1, v0

    :goto_31
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_9

    :try_start_37
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_48} :catch_54

    :goto_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    :catch_4c
    move-exception v0

    const-string v2, "Couldn\'t fetch keyIndices"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v2, v1

    goto :goto_2d

    :catch_54
    move-exception v0

    const-string v6, "Couldn\'t add value to requested infos"

    invoke-static {v6, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_48

    :cond_5b
    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_172

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_168

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->getCurrentEventCount()I

    move-result v0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->getMaxEventCount()I

    move-result v1

    if-lt v0, v1, :cond_8e

    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->MAX_MOTION_EVENT_COUNT_REACHED:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_8d
    return-void

    :cond_8e
    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->getEvents(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    :goto_a1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_15d

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/util/SparseArray;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_b9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_144

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;

    :try_start_ce
    const-string v10, "action"

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "isObscured"

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->isObscured()Z

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v10, "toolType"

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getToolType()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "source"

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getSource()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "deviceId"

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getDeviceId()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "x"

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getX()F

    move-result v11

    float-to-double v12, v11

    invoke-virtual {v8, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v10, "y"

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getY()F

    move-result v11

    float-to-double v12, v11

    invoke-virtual {v8, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v10, "eventTime"

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual {v8, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v10, "pressure"

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getPressure()F

    move-result v11

    float-to-double v12, v11

    invoke-virtual {v8, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v10, "size"

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getSize()F

    move-result v0

    float-to-double v12, v0

    invoke-virtual {v8, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_133} :catch_137

    :goto_133
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b9

    :catch_137
    move-exception v0

    const-string v8, "Couldn\'t construct event info"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_133

    :cond_144
    :try_start_144
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_14b} :catch_150

    :goto_14b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_a1

    :catch_150
    move-exception v0

    const-string v1, "Couldn\'t construct info object"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14b

    :cond_15d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto/16 :goto_8d

    :cond_168
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->LAYOUT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto/16 :goto_8d

    :cond_172
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto/16 :goto_8d
.end method

.method public static getOrientation(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_1b
    return-void

    :cond_1c
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public static getSafeAreaInsets(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 11
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_110

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_110

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_108

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_100

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDisplayCutout"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_af

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSafeInsetTop"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getSafeInsetRight"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getSafeInsetBottom"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getSafeInsetLeft"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "top"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "right"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bottom"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "left"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_ae
    return-void

    :cond_af
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->NO_DISPLAY_CUTOUT_AVAILABLE:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V
    :try_end_b7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2b .. :try_end_b7} :catch_b8
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_b7} :catch_ca
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_b7} :catch_dc
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_b7} :catch_ee

    goto :goto_ae

    :catch_b8
    move-exception v0

    sget-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_METHOD_NOT_AVAILABLE:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    const-string v1, "Method getDisplayCutout not found"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ae

    :catch_ca
    move-exception v0

    sget-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_INVOKE_FAILED:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    const-string v1, "Error while calling displayCutout getter"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ae

    :catch_dc
    move-exception v0

    sget-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_INVOKE_FAILED:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    const-string v1, "Error while calling displayCutout getter"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ae

    :catch_ee
    move-exception v0

    sget-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_JSON_ERROR:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    const-string v1, "JSON error while constructing display cutout object"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ae

    :cond_100
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->NO_DISPLAY_CUTOUT_AVAILABLE:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_ae

    :cond_108
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->API_LEVEL_ERROR:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_ae

    :cond_110
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_ae
.end method

.method public static getViewFrame(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 6
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getViewFrame(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getViewFrame(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "x"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "y"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_42
    return-void

    :cond_43
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->UNKNOWN_VIEW:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_42

    :cond_4b
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_42
.end method

.method private static getViewList(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_16

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return-object v1
.end method

.method public static getViews(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getViews()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_20
    return-void

    :cond_21
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_20
.end method

.method public static open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/unity3d/splash/services/ads/api/AdUnit;->open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V

    return-void
.end method

.method public static open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 12
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/unity3d/splash/services/ads/api/AdUnit;->open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V

    return-void
.end method

.method public static open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 15
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/unity3d/splash/services/ads/api/AdUnit;->open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V

    return-void
.end method

.method public static open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 17
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/unity3d/splash/services/ads/api/AdUnit;->open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V

    return-void
.end method

.method public static open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 15
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v0, "Unity Ads opening new transparent ad unit activity, hardware acceleration disabled"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitTransparentSoftwareActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1f
    const/high16 v1, 0x10010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p0, :cond_e7

    :try_start_26
    const-string v1, "activityId"

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_c9

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/unity3d/splash/services/ads/api/AdUnit;->setCurrentAdUnitActivityId(I)V

    :try_start_36
    const-string v1, "views"

    invoke-static {p1}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getViewList(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_f8

    if-eqz p3, :cond_4a

    :try_start_41
    const-string v1, "keyEvents"

    invoke-static {p3}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getKeyEventList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_10f

    :cond_4a
    const-string v1, "systemUiVisibility"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "orientation"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "displayCutoutMode"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Opened AdUnitActivity with: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p8, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_7b
    return-void

    :cond_7c
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_99

    const-string v0, "Unity Ads opening new hardware accelerated ad unit activity"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1f

    :cond_99
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b7

    const-string v0, "Unity Ads opening new hardware accelerated transparent ad unit activity"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitTransparentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1f

    :cond_b7
    const-string v0, "Unity Ads opening new ad unit activity, hardware acceleration disabled"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitSoftwareActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1f

    :catch_c9
    move-exception v0

    const-string v1, "Could not set activityId for intent"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ACTIVITY_ID:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p8, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_7b

    :cond_e7
    const-string v0, "Activity ID is NULL"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ACTIVITY_ID:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Activity ID NULL"

    aput-object v2, v1, v4

    invoke-virtual {p8, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_7b

    :catch_f8
    move-exception v0

    const-string v1, "Error parsing views from viewList"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->CORRUPTED_VIEWLIST:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p8, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto/16 :goto_7b

    :catch_10f
    move-exception v0

    const-string v1, "Error parsing views from viewList"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->CORRUPTED_KEYEVENTLIST:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p8, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto/16 :goto_7b
.end method

.method public static setAdUnitActivity(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)V
    .registers 1

    sput-object p0, Lcom/unity3d/splash/services/ads/api/AdUnit;->_adUnitActivity:Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    return-void
.end method

.method public static setCurrentAdUnitActivityId(I)V
    .registers 1

    sput p0, Lcom/unity3d/splash/services/ads/api/AdUnit;->_currentActivityId:I

    return-void
.end method

.method public static setKeepScreenOn(Ljava/lang/Boolean;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/unity3d/splash/services/ads/api/AdUnit$3;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/ads/api/AdUnit$3;-><init>(Ljava/lang/Boolean;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_15

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_14
    return-void

    :cond_15
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public static setKeyEventList(Lorg/json/JSONArray;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 7
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_34

    :try_start_8
    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-static {p0}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getKeyEventList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->setKeyEventList(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    const-string v1, "Error parsing views from viewList"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->CORRUPTED_KEYEVENTLIST:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1c

    :cond_34
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method public static setLayoutInDisplayCutoutMode(Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/unity3d/splash/services/ads/api/AdUnit$6;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/ads/api/AdUnit$6;-><init>(Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_17
    return-void

    :cond_18
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public static setOrientation(Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/unity3d/splash/services/ads/api/AdUnit$2;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/ads/api/AdUnit$2;-><init>(Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_17
    return-void

    :cond_18
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public static setSystemUiVisibility(Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/unity3d/splash/services/ads/api/AdUnit$4;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/ads/api/AdUnit$4;-><init>(Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_17
    return-void

    :cond_18
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public static setViewFrame(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 13
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Lcom/unity3d/splash/services/ads/api/AdUnit$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/splash/services/ads/api/AdUnit$5;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p5, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_19
    return-void

    :cond_1a
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p5, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_19
.end method

.method public static setViews(Lorg/json/JSONArray;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 6
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getViewList(Lorg/json/JSONArray;)[Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_5} :catch_1e

    move v0, v1

    :goto_6
    if-nez v0, :cond_10

    new-instance v0, Lcom/unity3d/splash/services/ads/api/AdUnit$1;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/ads/api/AdUnit$1;-><init>(Lorg/json/JSONArray;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_10
    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_2a

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->CORRUPTED_VIEWLIST:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {p1, v0, v3}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_6

    :cond_2a
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1d
.end method

.method public static startMotionEventCapture(Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->startCapture(I)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_25
    return-void

    :cond_26
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->LAYOUT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_25

    :cond_2e
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_25
.end method
