.class public Lcom/bilibili/track/utils/NetworkUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static networkType(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "NULL"

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_6b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4c

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_6b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v0, "WIFI"

    goto :goto_a

    :cond_31
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_6b

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_6b

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_6b

    const-string v0, "NULL"

    goto :goto_a

    :cond_49
    const-string v0, "NULL"

    goto :goto_a

    :cond_4c
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_5b

    :cond_58
    const-string v0, "NULL"

    goto :goto_a

    :cond_5b
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "WIFI"

    goto :goto_a

    :cond_6b
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_78

    const-string v0, "NULL"

    goto :goto_a

    :cond_78
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_90

    const-string v0, "NULL"

    goto :goto_a

    :pswitch_82
    const-string v0, "2G"

    goto :goto_a

    :pswitch_85
    const-string v0, "3G"

    goto :goto_a

    :pswitch_88
    const-string v0, "4G"
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8a} :catch_8b

    goto :goto_a

    :catch_8b
    move-exception v0

    const-string v0, "NULL"

    goto/16 :goto_a

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_82
        :pswitch_82
        :pswitch_85
        :pswitch_82
        :pswitch_85
        :pswitch_85
        :pswitch_82
        :pswitch_85
        :pswitch_85
        :pswitch_85
        :pswitch_82
        :pswitch_85
        :pswitch_88
        :pswitch_85
        :pswitch_85
    .end packed-switch
.end method
