.class public Lcom/bilibili/deviceutils/utils/DeviceWifiUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v1, "N/A"

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0, v2}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    move-object v0, v1

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_67

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_30
    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, v3, :cond_30

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_6a

    :cond_48
    :goto_48
    packed-switch v2, :pswitch_data_74

    goto :goto_30

    :pswitch_4c
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_f

    :sswitch_4f
    const-string v5, "SSID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    const/4 v2, 0x0

    goto :goto_48

    :sswitch_59
    const-string v5, "BSSID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    const/4 v2, 0x1

    goto :goto_48

    :pswitch_63
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_65} :catch_66

    goto :goto_f

    :catch_66
    move-exception v0

    :cond_67
    move-object v0, v1

    goto :goto_f

    nop

    :sswitch_data_6a
    .sparse-switch
        0x26fb7b -> :sswitch_4f
        0x3c90abd -> :sswitch_59
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_63
    .end packed-switch
.end method

.method public static getWifiList(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "N/A"

    :goto_e
    return-object v0

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_53

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_30

    :catch_4f
    move-exception v0

    const-string v0, "N/A"

    goto :goto_e

    :cond_53
    :try_start_53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_5c

    const-string v0, "N/A"

    goto :goto_e

    :cond_5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5f} :catch_4f

    move-result-object v0

    goto :goto_e
.end method
