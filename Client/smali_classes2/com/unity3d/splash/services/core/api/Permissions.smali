.class public Lcom/unity3d/splash/services/core/api/Permissions;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 7
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/unity3d/splash/services/core/device/DeviceError;->APPLICATION_CONTEXT_NULL:Lcom/unity3d/splash/services/core/device/DeviceError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_f
    return-void

    :cond_10
    :try_start_10
    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_2e

    goto :goto_f

    :catch_2e
    move-exception v0

    sget-object v1, Lcom/unity3d/splash/services/core/api/PermissionsError;->ERROR_CHECKING_PERMISSION:Lcom/unity3d/splash/services/core/api/PermissionsError;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public static getPermissions(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 8
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/unity3d/splash/services/core/device/DeviceError;->APPLICATION_CONTEXT_NULL:Lcom/unity3d/splash/services/core/device/DeviceError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_f
    return-void

    :cond_10
    :try_start_10
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_52

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_2f
    if-ge v0, v4, :cond_39

    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_42} :catch_43

    goto :goto_f

    :catch_43
    move-exception v0

    sget-object v2, Lcom/unity3d/splash/services/core/api/PermissionsError;->COULDNT_GET_PERMISSIONS:Lcom/unity3d/splash/services/core/api/PermissionsError;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_52
    :try_start_52
    sget-object v0, Lcom/unity3d/splash/services/core/api/PermissionsError;->NO_REQUESTED_PERMISSIONS:Lcom/unity3d/splash/services/core/api/PermissionsError;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5a} :catch_43

    goto :goto_f
.end method

.method public static requestPermissions(Lorg/json/JSONArray;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_e
    return-void

    :cond_f
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1f

    :cond_17
    sget-object v0, Lcom/unity3d/splash/services/core/api/PermissionsError;->NO_REQUESTED_PERMISSIONS:Lcom/unity3d/splash/services/core/api/PermissionsError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_1f
    :try_start_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_25
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_35

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_35
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v3

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->requestPermissions([Ljava/lang/String;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_52} :catch_53

    goto :goto_e

    :catch_53
    move-exception v0

    sget-object v2, Lcom/unity3d/splash/services/core/api/PermissionsError;->ERROR_REQUESTING_PERMISSIONS:Lcom/unity3d/splash/services/core/api/PermissionsError;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p2, v2, v3}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_e
.end method
