.class public abstract Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;
.super Ljava/lang/Object;
.source "OnekeyShareThemeImpl.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field protected callback:Lcn/sharesdk/framework/PlatformActionListener;

.field protected context:Landroid/content/Context;

.field protected customerLogos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation
.end field

.field protected customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

.field protected dialogMode:Z

.field protected disableSSO:Z

.field protected hiddenPlatforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected shareParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected silent:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p0, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 50
    return-void
.end method

.method private prepareForEditPage(Lcn/sharesdk/framework/Platform;)V
    .registers 5
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->formateShareData(Lcn/sharesdk/framework/Platform;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 168
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareDataToShareParams(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    .line 169
    .local v0, "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    if-eqz v0, :cond_1f

    .line 171
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 172
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    if-eqz v1, :cond_1a

    .line 173
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    invoke-interface {v1, p1, v0}, Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;->onShare(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 175
    :cond_1a
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, v0}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 178
    .end local v0    # "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    :cond_1f
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .registers 4
    .param p1, "resOrName"    # Ljava/lang/String;

    .prologue
    .line 332
    const/4 v0, 0x0

    new-instance v1, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;

    invoke-direct {v1, p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 343
    return-void
.end method


# virtual methods
.method public final disableSSO()V
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->disableSSO:Z

    .line 82
    return-void
.end method

.method final formateShareData(Lcn/sharesdk/framework/Platform;)Z
    .registers 22
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 181
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v14

    .line 183
    .local v14, "name":Ljava/lang/String;
    const-string v17, "Alipay"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2d

    const-string v17, "AlipayMoments"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2d

    const/4 v4, 0x0

    .line 184
    .local v4, "isAlipay":Z
    :goto_19
    if-eqz v4, :cond_2f

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_2f

    .line 185
    const-string v17, "ssdk_alipay_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 186
    const/16 v17, 0x0

    .line 301
    :goto_2c
    return v17

    .line 183
    .end local v4    # "isAlipay":Z
    :cond_2d
    const/4 v4, 0x1

    goto :goto_19

    .line 189
    .restart local v4    # "isAlipay":Z
    :cond_2f
    const-string v17, "KakaoTalk"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 190
    .local v6, "isKakaoTalk":Z
    if-eqz v6, :cond_4b

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_4b

    .line 191
    const-string v17, "ssdk_kakaotalk_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 192
    const/16 v17, 0x0

    goto :goto_2c

    .line 195
    :cond_4b
    const-string v17, "KakaoStory"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 196
    .local v5, "isKakaoStory":Z
    if-eqz v5, :cond_67

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_67

    .line 197
    const-string v17, "ssdk_kakaostory_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 198
    const/16 v17, 0x0

    goto :goto_2c

    .line 201
    :cond_67
    const-string v17, "Line"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 202
    .local v9, "isLine":Z
    if-eqz v9, :cond_83

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_83

    .line 203
    const-string v17, "ssdk_line_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 204
    const/16 v17, 0x0

    goto :goto_2c

    .line 207
    :cond_83
    const-string v17, "WhatsApp"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 208
    .local v12, "isWhatsApp":Z
    if-eqz v12, :cond_9f

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_9f

    .line 209
    const-string v17, "ssdk_whatsapp_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 210
    const/16 v17, 0x0

    goto :goto_2c

    .line 213
    :cond_9f
    const-string v17, "Pinterest"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 214
    .local v10, "isPinterest":Z
    if-eqz v10, :cond_bc

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_bc

    .line 215
    const-string v17, "ssdk_pinterest_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 216
    const/16 v17, 0x0

    goto/16 :goto_2c

    .line 219
    :cond_bc
    const-string v17, "Instagram"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d9

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_d9

    .line 220
    const-string v17, "ssdk_instagram_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 221
    const/16 v17, 0x0

    goto/16 :goto_2c

    .line 224
    :cond_d9
    const-string v17, "QZone"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f6

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_f6

    .line 225
    const-string v17, "ssdk_qq_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 226
    const/16 v17, 0x0

    goto/16 :goto_2c

    .line 229
    :cond_f6
    const-string v17, "Laiwang"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 230
    .local v7, "isLaiwang":Z
    const-string v17, "LaiwangMoments"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 231
    .local v8, "isLaiwangMoments":Z
    if-nez v7, :cond_10a

    if-eqz v8, :cond_11d

    .line 232
    :cond_10a
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_11d

    .line 233
    const-string v17, "ssdk_laiwang_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 234
    const/16 v17, 0x0

    goto/16 :goto_2c

    .line 238
    :cond_11d
    const-string v17, "YixinMoments"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_147

    const-string v17, "Yixin"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_147

    const/4 v13, 0x0

    .line 239
    .local v13, "isYixin":Z
    :goto_132
    if-eqz v13, :cond_149

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_149

    .line 240
    const-string v17, "ssdk_yixin_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 241
    const/16 v17, 0x0

    goto/16 :goto_2c

    .line 238
    .end local v13    # "isYixin":Z
    :cond_147
    const/4 v13, 0x1

    goto :goto_132

    .line 244
    .restart local v13    # "isYixin":Z
    :cond_149
    const-string v17, "WechatFavorite"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_17d

    const-string v17, "Wechat"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_17d

    const-string v17, "WechatMoments"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_17d

    const/4 v11, 0x0

    .line 245
    .local v11, "isWechat":Z
    :goto_168
    if-eqz v11, :cond_17f

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_17f

    .line 246
    const-string v17, "ssdk_wechat_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 247
    const/16 v17, 0x0

    goto/16 :goto_2c

    .line 244
    .end local v11    # "isWechat":Z
    :cond_17d
    const/4 v11, 0x1

    goto :goto_168

    .line 250
    .restart local v11    # "isWechat":Z
    :cond_17f
    const-string v17, "FacebookMessenger"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19c

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_19c

    .line 251
    const-string v17, "ssdk_facebookmessenger_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 252
    const/16 v17, 0x0

    goto/16 :goto_2c

    .line 255
    :cond_19c
    const-string v17, "Telegram"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b9

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_1b9

    .line 256
    const-string v17, "ssdk_telegram_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 257
    const/16 v17, 0x0

    goto/16 :goto_2c

    .line 260
    :cond_1b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "shareType"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_205

    .line 261
    const/4 v15, 0x1

    .line 262
    .local v15, "shareType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "imagePath"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "imagePath":Ljava/lang/String;
    if-eqz v2, :cond_256

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_256

    .line 264
    const/4 v15, 0x2

    .line 265
    const-string v17, ".gif"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_209

    if-eqz v11, :cond_209

    .line 266
    const/16 v15, 0x9

    .line 298
    :cond_1f6
    :goto_1f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "shareType"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .end local v2    # "imagePath":Ljava/lang/String;
    .end local v15    # "shareType":I
    :cond_205
    const/16 v17, 0x1

    goto/16 :goto_2c

    .line 267
    .restart local v2    # "imagePath":Ljava/lang/String;
    .restart local v15    # "shareType":I
    :cond_209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "url"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "url"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1f6

    .line 268
    const/4 v15, 0x4

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "musicUrl"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "musicUrl"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1f6

    if-eqz v11, :cond_1f6

    .line 270
    const/4 v15, 0x5

    .line 273
    goto :goto_1f6

    .line 274
    :cond_256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "viewToShare"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Bitmap;

    .line 275
    .local v16, "viewToShare":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_2bf

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_2bf

    .line 276
    const/4 v15, 0x2

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "url"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "url"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1f6

    .line 278
    const/4 v15, 0x4

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "musicUrl"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "musicUrl"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1f6

    if-eqz v11, :cond_1f6

    .line 280
    const/4 v15, 0x5

    .line 283
    goto/16 :goto_1f6

    .line 284
    :cond_2bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "imageUrl"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 285
    .local v3, "imageUrl":Ljava/lang/Object;
    if-eqz v3, :cond_1f6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1f6

    .line 286
    const/4 v15, 0x2

    .line 287
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const-string v18, ".gif"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2ea

    if-eqz v11, :cond_2ea

    .line 288
    const/16 v15, 0x9

    .line 289
    goto/16 :goto_1f6

    :cond_2ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "url"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "url"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1f6

    .line 290
    const/4 v15, 0x4

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "musicUrl"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "musicUrl"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1f6

    if-eqz v11, :cond_1f6

    .line 292
    const/4 v15, 0x5

    goto/16 :goto_1f6
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 383
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_be

    .line 422
    :cond_5
    :goto_5
    const/4 v2, 0x0

    return v2

    .line 386
    :pswitch_7
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    const-string v3, "ssdk_oks_share_completed"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 387
    .local v1, "resId":I
    if-lez v1, :cond_5

    .line 388
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_5

    .line 393
    .end local v1    # "resId":I
    :pswitch_1b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "expName":Ljava/lang/String;
    const-string v2, "WechatClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 395
    const-string v2, "WechatTimelineNotSupportedException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 396
    const-string v2, "WechatFavoriteNotSupportedException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 397
    :cond_3d
    const-string v2, "ssdk_wechat_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_5

    .line 398
    :cond_43
    const-string v2, "GooglePlusClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 399
    const-string v2, "ssdk_google_plus_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_5

    .line 400
    :cond_51
    const-string v2, "QQClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 401
    const-string v2, "ssdk_qq_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_5

    .line 402
    :cond_5f
    const-string v2, "YixinClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 403
    const-string v2, "YixinTimelineNotSupportedException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 404
    :cond_6f
    const-string v2, "ssdk_yixin_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_5

    .line 405
    :cond_75
    const-string v2, "KakaoTalkClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 406
    const-string v2, "ssdk_kakaotalk_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_5

    .line 407
    :cond_83
    const-string v2, "KakaoStoryClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 408
    const-string v2, "ssdk_kakaostory_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 409
    :cond_92
    const-string v2, "WhatsAppClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 410
    const-string v2, "ssdk_whatsapp_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 411
    :cond_a1
    const-string v2, "FacebookMessengerClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 412
    const-string v2, "ssdk_facebookmessenger_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 414
    :cond_b0
    const-string v2, "ssdk_oks_share_failed"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 419
    .end local v0    # "expName":Ljava/lang/String;
    :pswitch_b7
    const-string v2, "ssdk_oks_share_canceled"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 383
    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1b
        :pswitch_b7
    .end packed-switch
.end method

.method final isUseClientToShare(Lcn/sharesdk/framework/Platform;)Z
    .registers 9
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 107
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "name":Ljava/lang/String;
    const-string v5, "Wechat"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "WechatMoments"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 109
    const-string v5, "WechatFavorite"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "ShortMessage"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 110
    const-string v5, "Email"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "Qzone"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 111
    const-string v5, "QQ"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "Pinterest"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 112
    const-string v5, "Instagram"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "Yixin"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 113
    const-string v5, "YixinMoments"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "QZone"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 114
    const-string v5, "Mingdao"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "Line"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 115
    const-string v5, "KakaoStory"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "KakaoTalk"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 116
    const-string v5, "Bluetooth"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "WhatsApp"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 117
    const-string v5, "BaiduTieba"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "Laiwang"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 118
    const-string v5, "LaiwangMoments"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "Alipay"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 119
    const-string v5, "AlipayMoments"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "FacebookMessenger"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 120
    const-string v5, "GooglePlus"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "Dingding"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 121
    const-string v5, "Youtube"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "Meipai"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 122
    const-string v5, "Telegram"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 146
    :cond_ee
    :goto_ee
    return v3

    .line 125
    :cond_ef
    const-string v5, "Evernote"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_107

    .line 126
    const-string v5, "true"

    const-string v6, "ShareByAppClient"

    invoke-virtual {p1, v6}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    :cond_105
    move v3, v4

    .line 146
    goto :goto_ee

    .line 129
    :cond_107
    const-string v5, "SinaWeibo"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_105

    .line 130
    const-string v5, "true"

    const-string v6, "ShareByAppClient"

    invoke-virtual {p1, v6}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_105

    .line 132
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, "test":Landroid/content/Intent;
    const-string v5, "com.sina.weibo"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v5, "image/*"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 136
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_159

    .line 137
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "test":Landroid/content/Intent;
    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v2    # "test":Landroid/content/Intent;
    const-string v5, "com.sina.weibog3"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v5, "image/*"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 142
    :cond_159
    if-nez v1, :cond_ee

    move v3, v4

    goto :goto_ee
.end method

.method public final onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 5
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 372
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 373
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 374
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 375
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 376
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 379
    const/4 v1, 0x5

    invoke-static {v1, p1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 380
    return-void
.end method

.method public final onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 6
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 352
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 353
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 354
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 355
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 356
    return-void
.end method

.method public final onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 6
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 359
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 361
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 362
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 363
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 364
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 365
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 368
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 369
    return-void
.end method

.method public final setCustomerLogos(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "customerLogos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/CustomerLogo;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customerLogos:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method public final setDialogMode(Z)V
    .registers 2
    .param p1, "dialogMode"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->dialogMode:Z

    .line 54
    return-void
.end method

.method public final setHiddenPlatforms(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "hiddenPlatforms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->hiddenPlatforms:Ljava/util/HashMap;

    .line 70
    return-void
.end method

.method public final setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 2
    .param p1, "callback"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 73
    if-nez p1, :cond_3

    move-object p1, p0

    .end local p1    # "callback":Lcn/sharesdk/framework/PlatformActionListener;
    :cond_3
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 74
    return-void
.end method

.method public final setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V
    .registers 2
    .param p1, "customizeCallback"    # Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    .prologue
    .line 77
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    .line 78
    return-void
.end method

.method public final setShareParamsMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "shareParamsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method public final setSilent(Z)V
    .registers 2
    .param p1, "silent"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->silent:Z

    .line 62
    return-void
.end method

.method final shareDataToShareParams(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;
    .registers 12
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;

    .prologue
    const/4 v6, 0x0

    .line 305
    if-eqz p1, :cond_7

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    if-nez v7, :cond_d

    .line 306
    :cond_7
    const-string v7, "ssdk_oks_share_failed"

    invoke-direct {p0, v7}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 328
    :goto_c
    return-object v6

    .line 311
    :cond_d
    :try_start_d
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v8, "imagePath"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 312
    .local v1, "imagePath":Ljava/lang/String;
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v8, "viewToShare"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 313
    .local v5, "viewToShare":Landroid/graphics/Bitmap;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7e

    if-eqz v5, :cond_7e

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_7e

    .line 314
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "screenshot"

    invoke-static {v7, v8}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .local v3, "ss":Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 317
    .local v0, "fos":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v5, v7, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 318
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 319
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 320
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v8, "imagePath"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_7e} :catch_86

    .line 328
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "ss":Ljava/io/File;
    :cond_7e
    new-instance v6, Lcn/sharesdk/framework/Platform$ShareParams;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-direct {v6, v7}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>(Ljava/util/HashMap;)V

    goto :goto_c

    .line 322
    .end local v1    # "imagePath":Ljava/lang/String;
    .end local v5    # "viewToShare":Landroid/graphics/Bitmap;
    :catch_86
    move-exception v4

    .line 323
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 324
    const-string v7, "ssdk_oks_share_failed"

    invoke-direct {p0, v7}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method final shareSilently(Lcn/sharesdk/framework/Platform;)V
    .registers 4
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->formateShareData(Lcn/sharesdk/framework/Platform;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 151
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareDataToShareParams(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    .line 152
    .local v0, "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    if-eqz v0, :cond_2b

    .line 153
    const-string v1, "ssdk_oks_sharing"

    invoke-direct {p0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    if-eqz v1, :cond_1a

    .line 155
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    invoke-interface {v1, p1, v0}, Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;->onShare(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 157
    :cond_1a
    iget-boolean v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->disableSSO:Z

    if-eqz v1, :cond_23

    .line 158
    iget-boolean v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->disableSSO:Z

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 160
    :cond_23
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 161
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 164
    .end local v0    # "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    :cond_2b
    return-void
.end method

.method public final show(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    .line 90
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v5, "platform"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 91
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v5, "platform"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    .line 93
    .local v3, "platform":Lcn/sharesdk/framework/Platform;
    instance-of v0, v3, Lcn/sharesdk/framework/CustomPlatform;

    .line 94
    .local v0, "isCustomPlatform":Z
    invoke-virtual {p0, v3}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->isUseClientToShare(Lcn/sharesdk/framework/Platform;)Z

    move-result v1

    .line 95
    .local v1, "isUseClientToShare":Z
    iget-boolean v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->silent:Z

    if-nez v4, :cond_2a

    if-nez v0, :cond_2a

    if-eqz v1, :cond_2e

    .line 96
    :cond_2a
    invoke-virtual {p0, v3}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareSilently(Lcn/sharesdk/framework/Platform;)V

    .line 103
    .end local v0    # "isCustomPlatform":Z
    .end local v1    # "isUseClientToShare":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "platform":Lcn/sharesdk/framework/Platform;
    :goto_2d
    return-void

    .line 98
    .restart local v0    # "isCustomPlatform":Z
    .restart local v1    # "isUseClientToShare":Z
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "platform":Lcn/sharesdk/framework/Platform;
    :cond_2e
    invoke-direct {p0, v3}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->prepareForEditPage(Lcn/sharesdk/framework/Platform;)V

    goto :goto_2d

    .line 101
    .end local v0    # "isCustomPlatform":Z
    .end local v1    # "isUseClientToShare":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "platform":Lcn/sharesdk/framework/Platform;
    :cond_32
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->showPlatformPage(Landroid/content/Context;)V

    goto :goto_2d
.end method

.method protected abstract showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
.end method

.method protected abstract showPlatformPage(Landroid/content/Context;)V
.end method
