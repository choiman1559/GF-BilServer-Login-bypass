.class public Lcom/sunborn/girlsfrontline/UserCenterBridge;
.super Ljava/lang/Object;
.source "UserCenterBridge.java"


# static fields
.field private static instance:Lcom/sunborn/girlsfrontline/UserCenterBridge;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/sunborn/girlsfrontline/UserCenterBridge;->instance:Lcom/sunborn/girlsfrontline/UserCenterBridge;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()Z
    .registers 1

    .prologue
    .line 75
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->close()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/sunborn/girlsfrontline/UserCenterBridge;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/sunborn/girlsfrontline/UserCenterBridge;->instance:Lcom/sunborn/girlsfrontline/UserCenterBridge;

    if-nez v0, :cond_b

    .line 29
    new-instance v0, Lcom/sunborn/girlsfrontline/UserCenterBridge;

    invoke-direct {v0}, Lcom/sunborn/girlsfrontline/UserCenterBridge;-><init>()V

    sput-object v0, Lcom/sunborn/girlsfrontline/UserCenterBridge;->instance:Lcom/sunborn/girlsfrontline/UserCenterBridge;

    .line 31
    :cond_b
    sget-object v0, Lcom/sunborn/girlsfrontline/UserCenterBridge;->instance:Lcom/sunborn/girlsfrontline/UserCenterBridge;

    return-object v0
.end method

.method public static getItemsPriceInfo(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "thirdProductIds"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.method public static getUserIP()Ljava/lang/String;
    .registers 1

    .prologue
    .line 249
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserUDID()Ljava/lang/String;
    .registers 1

    .prologue
    .line 252
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .registers 0

    .prologue
    .line 37
    return-void
.end method

.method public static logOut()V
    .registers 1

    .prologue
    .line 60
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->doSwitchAccount()Z

    .line 61
    return-void
.end method

.method public static login(Ljava/lang/String;)V
    .registers 2
    .param p0, "platform"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->doLogin(Ljava/lang/String;)Z

    .line 40
    return-void
.end method

.method public static openUserCenter(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->open_user_center(I)Z

    .line 67
    return-void
.end method

.method public static payWithProductID(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "thirdProductId"    # Ljava/lang/String;
    .param p2, "worldId"    # Ljava/lang/String;
    .param p3, "mark"    # Ljava/lang/String;
    .param p4, "price"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    return-void
.end method

.method public static payment(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 22
    .param p0, "money"    # D
    .param p2, "product_id"    # Ljava/lang/String;
    .param p3, "product_name"    # Ljava/lang/String;
    .param p4, "serverid"    # Ljava/lang/String;
    .param p5, "charid"    # Ljava/lang/String;
    .param p6, "accountid"    # Ljava/lang/String;
    .param p7, "order_id"    # Ljava/lang/String;
    .param p8, "order_sdk"    # Ljava/lang/String;
    .param p9, "payType"    # I

    .prologue
    .line 53
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v1

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->doPay(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setChildUserNotAllowLogin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "startTime"    # Ljava/lang/String;
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 247
    return-void
.end method

.method public static setSunbornSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->setSunbornSDKInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static setUserCurrentPlayTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "currentTime"    # Ljava/lang/String;
    .param p1, "maxTime"    # Ljava/lang/String;
    .param p2, "isLegalHoldays"    # Ljava/lang/String;

    .prologue
    .line 240
    return-void
.end method

.method public static setUserCurrentPlayTimeEnd()V
    .registers 0

    .prologue
    .line 244
    return-void
.end method

.method public static shareImageWithFacebook(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 87
    return-void
.end method

.method public static shareImageWithTwitter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method public static submitRoleInfo(Ljava/lang/String;)V
    .registers 1
    .param p0, "infoJson"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-static {p0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->submitRoleInfo(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static switch_account()Z
    .registers 1

    .prologue
    .line 72
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->doSwitchAccount()Z

    move-result v0

    return v0
.end method

.method public static trackClientActivate4DBCenter(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 185
    return-void
.end method

.method public static trackCreateUserRole4DBCenter(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getCacheOpenId()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "openid":Ljava/lang/String;
    invoke-static {}, Lcom/sunborn/gameplatform/core/common/DataCenterService;->getInstance()Lcom/sunborn/gameplatform/core/common/DataCenterService;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sunborn/girlsfrontline/UserCenterBridge$2;

    invoke-direct {v3, v0}, Lcom/sunborn/girlsfrontline/UserCenterBridge$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/sunborn/gameplatform/core/common/DataCenterService;->getUUID(Landroid/content/Context;Lcom/sunborn/gameplatform/core/common/DataCenterService$IGetUUIDListener;)V

    .line 162
    return-void
.end method

.method public static trackMissionTo2_6(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 123
    return-void
.end method

.method public static trackUserLevel4DBCenter(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 166
    return-void
.end method

.method public static trackUserLevelUpTo12(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 120
    return-void
.end method

.method public static trackUserLevelUpTo4(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 117
    return-void
.end method

.method public static trackUserLogin4DBCenter(Landroid/app/Activity;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 169
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getCacheOpenId()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "openid":Ljava/lang/String;
    invoke-static {}, Lcom/sunborn/gameplatform/core/common/DataCenterService;->getInstance()Lcom/sunborn/gameplatform/core/common/DataCenterService;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sunborn/girlsfrontline/UserCenterBridge$3;

    invoke-direct {v3, v0}, Lcom/sunborn/girlsfrontline/UserCenterBridge$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/sunborn/gameplatform/core/common/DataCenterService;->getUUID(Landroid/content/Context;Lcom/sunborn/gameplatform/core/common/DataCenterService$IGetUUIDListener;)V

    .line 177
    return-void
.end method

.method public static trackUserPay(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 137
    return-void
.end method

.method public static trackUserPay4DBCenter(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 140
    if-nez p1, :cond_3

    .line 152
    :cond_2
    :goto_2
    return-void

    .line 141
    :cond_3
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "strings":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 144
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getCacheOpenId()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "openid":Ljava/lang/String;
    invoke-static {}, Lcom/sunborn/gameplatform/core/common/DataCenterService;->getInstance()Lcom/sunborn/gameplatform/core/common/DataCenterService;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/sunborn/girlsfrontline/UserCenterBridge$1;

    invoke-direct {v4, v0, v1}, Lcom/sunborn/girlsfrontline/UserCenterBridge$1;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/sunborn/gameplatform/core/common/DataCenterService;->getUUID(Landroid/content/Context;Lcom/sunborn/gameplatform/core/common/DataCenterService$IGetUUIDListener;)V

    goto :goto_2
.end method

.method public static trackUserRegister(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 126
    return-void
.end method

.method public static trackUserSign4DBCenter(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 181
    return-void
.end method

.method public static version()V
    .registers 0

    .prologue
    .line 63
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->version()Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method init(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 197
    return-void
.end method

.method initThirdSDK(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 201
    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 226
    return-void
.end method

.method release()V
    .registers 1

    .prologue
    .line 221
    return-void
.end method

.method setFontName(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 205
    return-void
.end method

.method setIsOpenUserAgreement(Z)V
    .registers 2
    .param p1, "b"    # Z

    .prologue
    .line 215
    return-void
.end method

.method setLanguage(Ljava/lang/String;)V
    .registers 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 209
    return-void
.end method

.method setLogLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .prologue
    .line 78
    invoke-static {p1}, Lcom/lohanry/android/framework/tools/Logger;->setLogLevel(I)V

    .line 79
    return-void
.end method

.method public setUserModelOpenId(Ljava/lang/String;)V
    .registers 2
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 236
    return-void
.end method
