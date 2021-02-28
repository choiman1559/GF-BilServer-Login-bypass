.class public Lcn/sharesdk/unity3d/ShareSDKUtils;
.super Ljava/lang/Object;
.source "ShareSDKUtils.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static DEBUG:Z = false

.field private static final MSG_AUTHORIZE:I = 0x2

.field private static final MSG_FOLLOW_FRIEND:I = 0x7

.field private static final MSG_GET_FRIENDLIST:I = 0x6

.field private static final MSG_INITSDK:I = 0x1

.field private static final MSG_ONEKEY_SAHRE:I = 0x5

.field private static final MSG_SHARE:I = 0x4

.field private static final MSG_SHOW_USER:I = 0x3

.field private static context:Landroid/content/Context;

.field private static disableSSO:Z

.field private static u3dCallback:Ljava/lang/String;

.field private static u3dGameObject:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcn/sharesdk/unity3d/ShareSDKUtils;->disableSSO:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "gameObject"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-boolean v0, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 44
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ShareSDKUtils.prepare"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    :cond_e
    sget-object v0, Lcn/sharesdk/unity3d/ShareSDKUtils;->context:Landroid/content/Context;

    if-nez v0, :cond_1a

    .line 47
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/unity3d/ShareSDKUtils;->context:Landroid/content/Context;

    .line 50
    :cond_1a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 51
    sput-object p1, Lcn/sharesdk/unity3d/ShareSDKUtils;->u3dGameObject:Ljava/lang/String;

    .line 54
    :cond_22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 55
    sput-object p2, Lcn/sharesdk/unity3d/ShareSDKUtils;->u3dCallback:Ljava/lang/String;

    .line 57
    :cond_2a
    return-void
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public authorize(II)V
    .registers 6
    .param p1, "reqID"    # I
    .param p2, "platform"    # I

    .prologue
    .line 97
    sget-boolean v1, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 98
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ShareSDKUtils.authorize"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    :cond_b
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 101
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 102
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 103
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 104
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 105
    return-void
.end method

.method public disableSSOWhenAuthorize(Z)V
    .registers 2
    .param p1, "open"    # Z

    .prologue
    .line 223
    sput-boolean p1, Lcn/sharesdk/unity3d/ShareSDKUtils;->disableSSO:Z

    .line 224
    return-void
.end method

.method public followFriend(IILjava/lang/String;)V
    .registers 7
    .param p1, "reqID"    # I
    .param p2, "platform"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 185
    sget-boolean v1, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 186
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ShareSDKUtils.followFriend"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    :cond_b
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 190
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 191
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 192
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 194
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 195
    return-void
.end method

.method public getAuthInfo(I)Ljava/lang/String;
    .registers 10
    .param p1, "platform"    # I

    .prologue
    .line 198
    sget-boolean v4, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v4, :cond_b

    .line 199
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "ShareSDKUtils.getAuthInfo"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    :cond_b
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->platformIdToName(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    .line 204
    .local v3, "plat":Lcn/sharesdk/framework/Platform;
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 205
    .local v0, "hashon":Lcom/mob/tools/utils/Hashon;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 207
    const-string v4, "expiresIn"

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getExpiresIn()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v4, "expiresTime"

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getExpiresTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v4, "token"

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v4, "refresh_token"

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    const-string v6, "refresh_token"

    invoke-virtual {v5, v6}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v4, "tokenSecret"

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getTokenSecret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v4, "userGender"

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserGender()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v4, "userID"

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v4, "openID"

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    const-string v6, "openid"

    invoke-virtual {v5, v6}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v4, "unionID"

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    const-string v6, "unionid"

    invoke-virtual {v5, v6}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v4, "userName"

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v4, "userIcon"

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_c0
    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getFriendList(IIII)V
    .registers 9
    .param p1, "reqID"    # I
    .param p2, "platform"    # I
    .param p3, "count"    # I
    .param p4, "page"    # I

    .prologue
    .line 170
    sget-boolean v2, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 171
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "ShareSDKUtils.getFriendList"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    :cond_b
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 174
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 175
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 176
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "page"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string v2, "count"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 181
    invoke-static {v1, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 182
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 41
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v34, v0

    packed-switch v34, :pswitch_data_574

    .line 439
    :cond_9
    :goto_9
    const/16 v34, 0x0

    return v34

    .line 230
    :pswitch_c
    sget-boolean v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v34, :cond_17

    .line 231
    sget-object v34, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v35, "ShareSDKUtils.setPlatformConfig"

    invoke-virtual/range {v34 .. v35}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    :cond_17
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 234
    .local v6, "configs":Ljava/lang/String;
    new-instance v13, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v13}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 235
    .local v13, "hashon":Lcom/mob/tools/utils/Hashon;
    invoke-virtual {v13, v6}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    .line 236
    .local v11, "devInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getPlatformList()[Lcn/sharesdk/framework/Platform;

    .line 237
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_31
    :goto_31
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_9

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 238
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    invoke-static/range {v34 .. v34}, Lcn/sharesdk/framework/ShareSDK;->platformIdToName(I)Ljava/lang/String;

    move-result-object v22

    .line 239
    .local v22, "p":Ljava/lang/String;
    if-eqz v22, :cond_31

    .line 240
    sget-boolean v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v34, :cond_90

    .line 241
    sget-object v36, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v37, " ==>>"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    new-instance v38, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v38 .. v38}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/HashMap;

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    :cond_90
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcn/sharesdk/framework/ShareSDK;->setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_31

    .line 249
    .end local v6    # "configs":Ljava/lang/String;
    .end local v11    # "devInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "hashon":Lcom/mob/tools/utils/Hashon;
    .end local v22    # "p":Ljava/lang/String;
    :pswitch_9e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 250
    .local v28, "platform":I
    new-instance v25, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;

    sget-object v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->u3dGameObject:Ljava/lang/String;

    sget-object v35, Lcn/sharesdk/unity3d/ShareSDKUtils;->u3dCallback:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .local v25, "paListener":Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->setReqID(I)V

    .line 252
    invoke-static/range {v28 .. v28}, Lcn/sharesdk/framework/ShareSDK;->platformIdToName(I)Ljava/lang/String;

    move-result-object v20

    .line 253
    .local v20, "name":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v27

    .line 254
    .local v27, "plat":Lcn/sharesdk/framework/Platform;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 255
    sget-boolean v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->disableSSO:Z

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 256
    invoke-virtual/range {v27 .. v27}, Lcn/sharesdk/framework/Platform;->authorize()V

    goto/16 :goto_9

    .line 260
    .end local v20    # "name":Ljava/lang/String;
    .end local v25    # "paListener":Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;
    .end local v27    # "plat":Lcn/sharesdk/framework/Platform;
    .end local v28    # "platform":I
    :pswitch_dd
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 261
    .restart local v28    # "platform":I
    new-instance v25, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;

    sget-object v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->u3dGameObject:Ljava/lang/String;

    sget-object v35, Lcn/sharesdk/unity3d/ShareSDKUtils;->u3dCallback:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .restart local v25    # "paListener":Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->setReqID(I)V

    .line 263
    invoke-static/range {v28 .. v28}, Lcn/sharesdk/framework/ShareSDK;->platformIdToName(I)Ljava/lang/String;

    move-result-object v20

    .line 264
    .restart local v20    # "name":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v27

    .line 265
    .restart local v27    # "plat":Lcn/sharesdk/framework/Platform;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 266
    sget-boolean v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->disableSSO:Z

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 267
    const/16 v34, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 271
    .end local v20    # "name":Ljava/lang/String;
    .end local v25    # "paListener":Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;
    .end local v27    # "plat":Lcn/sharesdk/framework/Platform;
    .end local v28    # "platform":I
    :pswitch_122
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 272
    .local v29, "platformID":I
    new-instance v25, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;

    sget-object v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->u3dGameObject:Ljava/lang/String;

    sget-object v35, Lcn/sharesdk/unity3d/ShareSDKUtils;->u3dCallback:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .restart local v25    # "paListener":Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->setReqID(I)V

    .line 274
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 275
    .local v7, "content":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcn/sharesdk/framework/ShareSDK;->platformIdToName(I)Ljava/lang/String;

    move-result-object v24

    .line 276
    .local v24, "pName":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v27

    .line 277
    .restart local v27    # "plat":Lcn/sharesdk/framework/Platform;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 278
    sget-boolean v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->disableSSO:Z

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 280
    :try_start_162
    new-instance v13, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v13}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 281
    .restart local v13    # "hashon":Lcom/mob/tools/utils/Hashon;
    sget-boolean v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v34, :cond_181

    .line 282
    sget-object v34, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "share content ==>>"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    :cond_181
    invoke-virtual {v13, v7}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    .line 285
    .local v10, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v31, Lcn/sharesdk/framework/Platform$ShareParams;

    move-object/from16 v0, v31

    invoke-direct {v0, v10}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>(Ljava/util/HashMap;)V

    .line 286
    .local v31, "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    const-string v34, "customizeShareParams"

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1e6

    .line 287
    const-string v34, "customizeShareParams"

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 288
    .local v9, "customizeSP":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v34

    if-lez v34, :cond_1e6

    .line 289
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    .line 290
    .local v23, "pID":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1e6

    .line 291
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 292
    .local v5, "cSP":Ljava/lang/String;
    sget-boolean v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v34, :cond_1d4

    .line 293
    sget-object v34, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "share content ==>>"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    :cond_1d4
    invoke-virtual {v13, v5}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    .line 296
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_1e0
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-nez v35, :cond_1ff

    .line 302
    .end local v5    # "cSP":Ljava/lang/String;
    .end local v9    # "customizeSP":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "pID":Ljava/lang/String;
    :cond_1e6
    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V
    :try_end_1ed
    .catch Ljava/lang/Throwable; {:try_start_162 .. :try_end_1ed} :catch_1ef

    goto/16 :goto_9

    .line 303
    .end local v10    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "hashon":Lcom/mob/tools/utils/Hashon;
    .end local v31    # "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    :catch_1ef
    move-exception v33

    .line 304
    .local v33, "t":Ljava/lang/Throwable;
    const/16 v34, 0x9

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v34

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_9

    .line 296
    .end local v33    # "t":Ljava/lang/Throwable;
    .restart local v5    # "cSP":Ljava/lang/String;
    .restart local v9    # "customizeSP":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v13    # "hashon":Lcom/mob/tools/utils/Hashon;
    .restart local v23    # "pID":Ljava/lang/String;
    .restart local v31    # "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    :cond_1ff
    :try_start_1ff
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 297
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_214
    .catch Ljava/lang/Throwable; {:try_start_1ff .. :try_end_214} :catch_1ef

    goto :goto_1e0

    .line 309
    .end local v5    # "cSP":Ljava/lang/String;
    .end local v7    # "content":Ljava/lang/String;
    .end local v9    # "customizeSP":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "hashon":Lcom/mob/tools/utils/Hashon;
    .end local v18    # "key":Ljava/lang/String;
    .end local v23    # "pID":Ljava/lang/String;
    .end local v24    # "pName":Ljava/lang/String;
    .end local v25    # "paListener":Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;
    .end local v27    # "plat":Lcn/sharesdk/framework/Platform;
    .end local v29    # "platformID":I
    .end local v31    # "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    :pswitch_215
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 310
    .restart local v28    # "platform":I
    new-instance v25, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;

    sget-object v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->u3dGameObject:Ljava/lang/String;

    sget-object v35, Lcn/sharesdk/unity3d/ShareSDKUtils;->u3dCallback:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .restart local v25    # "paListener":Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->setReqID(I)V

    .line 312
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 313
    .restart local v7    # "content":Ljava/lang/String;
    new-instance v13, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v13}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 314
    .restart local v13    # "hashon":Lcom/mob/tools/utils/Hashon;
    sget-boolean v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v34, :cond_25c

    .line 315
    sget-object v34, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "onekeyshare  ==>>"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    :cond_25c
    invoke-virtual {v13, v7}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 318
    .local v19, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v21, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct/range {v21 .. v21}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 319
    .local v21, "oks":Lcn/sharesdk/onekeyshare/OnekeyShare;
    if-lez v28, :cond_29d

    .line 320
    invoke-static/range {v28 .. v28}, Lcn/sharesdk/framework/ShareSDK;->platformIdToName(I)Ljava/lang/String;

    move-result-object v20

    .line 321
    .restart local v20    # "name":Ljava/lang/String;
    sget-boolean v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v34, :cond_287

    .line 322
    sget-object v34, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "ShareSDKUtils Onekeyshare shareView platform name ==>> "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    :cond_287
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_29d

    .line 325
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setPlatform(Ljava/lang/String;)V

    .line 326
    const/16 v34, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSilent(Z)V

    .line 329
    .end local v20    # "name":Ljava/lang/String;
    :cond_29d
    const-string v34, "hidePlatformList"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2d6

    .line 330
    const-string v34, "hidePlatformList"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 331
    .local v14, "hidePlatformList":Ljava/lang/String;
    const-string v34, ","

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 332
    .local v32, "stringList":[Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_2d6

    .line 333
    if-eqz v32, :cond_2d6

    .line 334
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v34, v0

    if-lez v34, :cond_2d6

    .line 336
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2cd
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-lt v15, v0, :cond_4bd

    .line 342
    .end local v14    # "hidePlatformList":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v32    # "stringList":[Ljava/lang/String;
    :cond_2d6
    const-string v34, "text"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2f5

    .line 343
    const-string v34, "text"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 345
    :cond_2f5
    const-string v34, "imagePath"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_314

    .line 346
    const-string v34, "imagePath"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImagePath(Ljava/lang/String;)V

    .line 348
    :cond_314
    const-string v34, "imageUrl"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_333

    .line 349
    const-string v34, "imageUrl"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 351
    :cond_333
    const-string v34, "imageArray"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_35c

    .line 352
    const-string v34, "imageArray"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 353
    .local v17, "imageString":Ljava/lang/String;
    const-string v34, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 354
    .local v16, "imageArray":[Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageArray([Ljava/lang/String;)V

    .line 356
    .end local v16    # "imageArray":[Ljava/lang/String;
    .end local v17    # "imageString":Ljava/lang/String;
    :cond_35c
    const-string v34, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_37b

    .line 357
    const-string v34, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    .line 359
    :cond_37b
    const-string v34, "comment"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_39a

    .line 360
    const-string v34, "comment"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setComment(Ljava/lang/String;)V

    .line 362
    :cond_39a
    const-string v34, "url"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3b9

    .line 363
    const-string v34, "url"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    .line 365
    :cond_3b9
    const-string v34, "titleUrl"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3d8

    .line 366
    const-string v34, "titleUrl"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitleUrl(Ljava/lang/String;)V

    .line 368
    :cond_3d8
    const-string v34, "site"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3f7

    .line 369
    const-string v34, "site"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSite(Ljava/lang/String;)V

    .line 371
    :cond_3f7
    const-string v34, "siteUrl"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_416

    .line 372
    const-string v34, "siteUrl"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSiteUrl(Ljava/lang/String;)V

    .line 374
    :cond_416
    const-string v34, "musicUrl"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_435

    .line 375
    const-string v34, "musicUrl"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setMusicUrl(Ljava/lang/String;)V

    .line 377
    :cond_435
    const-string v34, "shareType"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_476

    .line 378
    const-string v34, "6"

    const-string v35, "shareType"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_476

    .line 379
    const-string v34, "url"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_476

    .line 380
    const-string v34, "url"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setVideoUrl(Ljava/lang/String;)V

    .line 384
    :cond_476
    const-string v34, "customizeShareParams"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4a4

    .line 385
    const-string v34, "customizeShareParams"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 386
    .restart local v9    # "customizeSP":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v34

    if-lez v34, :cond_4a4

    .line 387
    new-instance v34, Lcn/sharesdk/unity3d/ShareSDKUtils$1;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcn/sharesdk/unity3d/ShareSDKUtils$1;-><init>(Lcn/sharesdk/unity3d/ShareSDKUtils;Ljava/util/HashMap;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 406
    .end local v9    # "customizeSP":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4a4
    sget-boolean v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->disableSSO:Z

    if-eqz v34, :cond_4ab

    .line 407
    invoke-virtual/range {v21 .. v21}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 409
    :cond_4ab
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 410
    sget-object v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->context:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 337
    .restart local v14    # "hidePlatformList":Ljava/lang/String;
    .restart local v15    # "i":I
    .restart local v32    # "stringList":[Ljava/lang/String;
    :cond_4bd
    aget-object v34, v32, v15

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 338
    .local v30, "platformId":I
    invoke-static/range {v30 .. v30}, Lcn/sharesdk/framework/ShareSDK;->platformIdToName(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->addHiddenPlatform(Ljava/lang/String;)V

    .line 336
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2cd

    .line 414
    .end local v7    # "content":Ljava/lang/String;
    .end local v13    # "hashon":Lcom/mob/tools/utils/Hashon;
    .end local v14    # "hidePlatformList":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "oks":Lcn/sharesdk/onekeyshare/OnekeyShare;
    .end local v25    # "paListener":Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;
    .end local v28    # "platform":I
    .end local v30    # "platformId":I
    .end local v32    # "stringList":[Ljava/lang/String;
    :pswitch_4d2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 415
    .restart local v28    # "platform":I
    new-instance v25, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;

    sget-object v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->u3dGameObject:Ljava/lang/String;

    sget-object v35, Lcn/sharesdk/unity3d/ShareSDKUtils;->u3dCallback:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .restart local v25    # "paListener":Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->setReqID(I)V

    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v34

    const-string v35, "page"

    invoke-virtual/range {v34 .. v35}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    .line 418
    .local v26, "page":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v34

    const-string v35, "count"

    invoke-virtual/range {v34 .. v35}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 419
    .local v8, "count":I
    invoke-static/range {v28 .. v28}, Lcn/sharesdk/framework/ShareSDK;->platformIdToName(I)Ljava/lang/String;

    move-result-object v20

    .line 420
    .restart local v20    # "name":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v27

    .line 421
    .restart local v27    # "plat":Lcn/sharesdk/framework/Platform;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 422
    sget-boolean v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->disableSSO:Z

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 423
    const/16 v34, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v26

    move-object/from16 v2, v34

    invoke-virtual {v0, v8, v1, v2}, Lcn/sharesdk/framework/Platform;->listFriend(IILjava/lang/String;)V

    goto/16 :goto_9

    .line 427
    .end local v8    # "count":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v25    # "paListener":Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;
    .end local v26    # "page":I
    .end local v27    # "plat":Lcn/sharesdk/framework/Platform;
    .end local v28    # "platform":I
    :pswitch_52d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 428
    .restart local v28    # "platform":I
    new-instance v25, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;

    sget-object v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->u3dGameObject:Ljava/lang/String;

    sget-object v35, Lcn/sharesdk/unity3d/ShareSDKUtils;->u3dCallback:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .restart local v25    # "paListener":Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->setReqID(I)V

    .line 430
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 431
    .local v4, "account":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcn/sharesdk/framework/ShareSDK;->platformIdToName(I)Ljava/lang/String;

    move-result-object v20

    .line 432
    .restart local v20    # "name":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v27

    .line 433
    .restart local v27    # "plat":Lcn/sharesdk/framework/Platform;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 434
    sget-boolean v34, Lcn/sharesdk/unity3d/ShareSDKUtils;->disableSSO:Z

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 435
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcn/sharesdk/framework/Platform;->followFriend(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 228
    :pswitch_data_574
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9e
        :pswitch_dd
        :pswitch_122
        :pswitch_215
        :pswitch_4d2
        :pswitch_52d
    .end packed-switch
.end method

.method public initSDK(Ljava/lang/String;)V
    .registers 5
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-boolean v0, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v0, :cond_18

    .line 61
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSDK appkey ==>>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    :cond_18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 64
    sget-object v0, Lcn/sharesdk/unity3d/ShareSDKUtils;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    :goto_23
    return-void

    .line 66
    :cond_24
    sget-object v0, Lcn/sharesdk/unity3d/ShareSDKUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/MobSDK;->init(Landroid/content/Context;)V

    goto :goto_23
.end method

.method public initSDK(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "screct"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-boolean v0, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 72
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSDK appkey ==>>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appscrect ==>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    :cond_22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 75
    sget-object v0, Lcn/sharesdk/unity3d/ShareSDKUtils;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_33
    return-void

    .line 76
    :cond_34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 77
    sget-object v0, Lcn/sharesdk/unity3d/ShareSDKUtils;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_33

    .line 79
    :cond_40
    sget-object v0, Lcn/sharesdk/unity3d/ShareSDKUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/MobSDK;->init(Landroid/content/Context;)V

    goto :goto_33
.end method

.method public isAuthValid(I)Z
    .registers 6
    .param p1, "platform"    # I

    .prologue
    .line 117
    sget-boolean v2, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 118
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "ShareSDKUtils.isAuthValid"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    :cond_b
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->platformIdToName(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 122
    .local v1, "plat":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v2

    return v2
.end method

.method public isClientValid(I)Z
    .registers 6
    .param p1, "platform"    # I

    .prologue
    .line 126
    sget-boolean v2, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 127
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "ShareSDKUtils.isClientValid"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    :cond_b
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->platformIdToName(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 131
    .local v1, "plat":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v2

    return v2
.end method

.method public onekeyShare(IILjava/lang/String;)V
    .registers 7
    .param p1, "reqID"    # I
    .param p2, "platform"    # I
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 158
    sget-boolean v1, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 159
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ShareSDKUtils.OnekeyShare"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    :cond_b
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 162
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 163
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 164
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 166
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 167
    return-void
.end method

.method public removeAccount(I)V
    .registers 6
    .param p1, "platform"    # I

    .prologue
    .line 108
    sget-boolean v2, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 109
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "ShareSDKUtils.removeAccount"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    :cond_b
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->platformIdToName(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 113
    .local v1, "plat":Lcn/sharesdk/framework/Platform;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 114
    return-void
.end method

.method public setPlatformConfig(Ljava/lang/String;)V
    .registers 6
    .param p1, "configs"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-boolean v1, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v1, :cond_18

    .line 85
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSDK configs ==>>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    :cond_18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 89
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 90
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 91
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessageDelayed(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z

    .line 94
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2d
    return-void
.end method

.method public shareContent(IILjava/lang/String;)V
    .registers 7
    .param p1, "reqID"    # I
    .param p2, "platform"    # I
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 146
    sget-boolean v1, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 147
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ShareSDKUtils.share"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    :cond_b
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 150
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 151
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 152
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 154
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 155
    return-void
.end method

.method public showUser(II)V
    .registers 6
    .param p1, "reqID"    # I
    .param p2, "platform"    # I

    .prologue
    .line 135
    sget-boolean v1, Lcn/sharesdk/unity3d/ShareSDKUtils;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 136
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ShareSDKUtils.showUser"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    :cond_b
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 139
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 140
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 141
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 142
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 143
    return-void
.end method
