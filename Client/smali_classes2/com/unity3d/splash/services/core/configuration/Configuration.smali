.class public Lcom/unity3d/splash/services/core/configuration/Configuration;
.super Ljava/lang/Object;


# instance fields
.field private _moduleConfigurationList:[Ljava/lang/String;

.field private _moduleConfigurations:Ljava/util/Map;

.field private _url:Ljava/lang/String;

.field private _webAppApiClassList:[Ljava/lang/Class;

.field private _webViewData:Ljava/lang/String;

.field private _webViewHash:Ljava/lang/String;

.field private _webViewUrl:Ljava/lang/String;

.field private _webViewVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.unity3d.splash.services.core.configuration.CoreModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.unity3d.splash.services.ads.configuration.AdsModuleConfiguration"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_moduleConfigurationList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.unity3d.splash.services.core.configuration.CoreModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.unity3d.splash.services.ads.configuration.AdsModuleConfiguration"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_moduleConfigurationList:[Ljava/lang/String;

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_url:Ljava/lang/String;

    return-void
.end method

.method private createWebAppApiClassList()V
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getModuleConfigurationList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_29

    aget-object v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getModuleConfiguration(Ljava/lang/String;)Lcom/unity3d/splash/services/core/configuration/IModuleConfiguration;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-interface {v4}, Lcom/unity3d/splash/services/core/configuration/IModuleConfiguration;->getWebAppApiClassList()[Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_26

    invoke-interface {v4}, Lcom/unity3d/splash/services/core/configuration/IModuleConfiguration;->getWebAppApiClassList()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_29
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    iput-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webAppApiClassList:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected buildQueryString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?ts="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdkVersionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_url:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleConfiguration(Ljava/lang/String;)Lcom/unity3d/splash/services/core/configuration/IModuleConfiguration;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/configuration/IModuleConfiguration;

    :cond_15
    :goto_15
    return-object v0

    :cond_16
    :try_start_16
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/configuration/IModuleConfiguration;

    if-eqz v0, :cond_36

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    if-nez v2, :cond_15

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_32} :catch_33

    goto :goto_15

    :catch_33
    move-exception v0

    move-object v0, v1

    goto :goto_15

    :cond_36
    move-object v0, v1

    goto :goto_15
.end method

.method public getModuleConfigurationList()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_moduleConfigurationList:[Ljava/lang/String;

    return-object v0
.end method

.method public getWebAppApiClassList()[Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webAppApiClassList:[Ljava/lang/Class;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/unity3d/splash/services/core/configuration/Configuration;->createWebAppApiClassList()V

    :cond_7
    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webAppApiClassList:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWebViewData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webViewData:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewHash()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webViewVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected makeRequest()V
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "game_detail"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "url"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    const-string v1, "hash"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webViewVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_30
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Invalid data. Web view URL is null or empty"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    return-void
.end method

.method public setConfigUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_url:Ljava/lang/String;

    return-void
.end method

.method public setWebViewData(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webViewData:Ljava/lang/String;

    return-void
.end method

.method public setWebViewHash(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    return-void
.end method

.method public setWebViewUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    return-void
.end method
