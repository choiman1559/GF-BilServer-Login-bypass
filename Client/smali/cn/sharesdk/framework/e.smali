.class public Lcn/sharesdk/framework/e;
.super Ljava/lang/Object;
.source "ShareSDKCore.java"


# direct methods
.method public static a(ILjava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 177
    if-nez v0, :cond_e

    .line 182
    :goto_d
    return-object v1

    .line 181
    :cond_e
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    if-nez v0, :cond_17

    move-object v0, v1

    :goto_15
    move-object v1, v0

    goto :goto_d

    :cond_17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    invoke-static {}, Lcn/sharesdk/framework/b/a;->a()Lcn/sharesdk/framework/b/a;

    move-result-object v0

    .line 234
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/b/a;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    invoke-static {}, Lcn/sharesdk/framework/b/a;->a()Lcn/sharesdk/framework/b/a;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 223
    invoke-static {}, Lcn/sharesdk/framework/b/a;->a()Lcn/sharesdk/framework/b/a;

    move-result-object v0

    .line 224
    invoke-virtual {v0, p0, p2, p1, p3}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lcn/sharesdk/framework/e;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcn/sharesdk/framework/e;->a(Ljava/util/ArrayList;)V

    .line 26
    return-object v0
.end method

.method public static a(IILjava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public static a(ILcn/sharesdk/framework/Platform;)V
    .registers 4

    .prologue
    .line 145
    new-instance v0, Lcn/sharesdk/framework/b/b/d;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/d;-><init>()V

    .line 146
    packed-switch p0, :pswitch_data_34

    .line 154
    :goto_8
    if-eqz p1, :cond_10

    .line 155
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v1

    iput v1, v0, Lcn/sharesdk/framework/b/b/d;->b:I

    .line 157
    :cond_10
    invoke-static {}, Lcn/sharesdk/framework/b/d;->a()Lcn/sharesdk/framework/b/d;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_19

    .line 159
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    .line 161
    :cond_19
    return-void

    .line 147
    :pswitch_1a
    const-string v1, "SHARESDK_ENTER_SHAREMENU"

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_8

    .line 148
    :pswitch_1f
    const-string v1, "SHARESDK_CANCEL_SHAREMENU"

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_8

    .line 149
    :pswitch_24
    const-string v1, "SHARESDK_EDIT_SHARE"

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_8

    .line 150
    :pswitch_29
    const-string v1, "SHARESDK_FAILED_SHARE"

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_8

    .line 151
    :pswitch_2e
    const-string v1, "SHARESDK_CANCEL_SHARE"

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_8

    .line 146
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1f
        :pswitch_24
        :pswitch_29
        :pswitch_2e
    .end packed-switch
.end method

.method public static a(Landroid/os/Handler;I)V
    .registers 3

    .prologue
    .line 118
    invoke-static {}, Lcn/sharesdk/framework/b/d;->a()Lcn/sharesdk/framework/b/d;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_f

    .line 120
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/b/d;->a(Landroid/os/Handler;)V

    .line 121
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/d;->a(I)V

    .line 122
    invoke-virtual {v0}, Lcn/sharesdk/framework/b/d;->startThread()V

    .line 124
    :cond_f
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 164
    invoke-static {}, Lcn/sharesdk/framework/b/d;->a()Lcn/sharesdk/framework/b/d;

    move-result-object v0

    .line 165
    if-nez v0, :cond_7

    .line 173
    :goto_6
    return-void

    .line 169
    :cond_7
    new-instance v1, Lcn/sharesdk/framework/b/b/a;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/b/a;-><init>()V

    .line 170
    iput-object p0, v1, Lcn/sharesdk/framework/b/b/a;->b:Ljava/lang/String;

    .line 171
    iput p1, v1, Lcn/sharesdk/framework/b/b/a;->a:I

    .line 172
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    goto :goto_6
.end method

.method public static a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    if-nez p0, :cond_3

    .line 108
    :goto_2
    return-void

    .line 99
    :cond_3
    new-instance v0, Lcn/sharesdk/framework/e$1;

    invoke-direct {v0}, Lcn/sharesdk/framework/e$1;-><init>()V

    .line 107
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2
.end method

.method public static a(Z)V
    .registers 2

    .prologue
    .line 111
    invoke-static {}, Lcn/sharesdk/framework/b/d;->a()Lcn/sharesdk/framework/b/d;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_9

    .line 113
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/b/d;->a(Z)V

    .line 115
    :cond_9
    return-void
.end method

.method public static a(Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 187
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_c

    :cond_a
    move v0, v1

    .line 219
    :goto_b
    return v0

    .line 192
    :cond_c
    const-string v0, "fakelist"

    .line 193
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 194
    if-nez v0, :cond_18

    move v0, v1

    .line 195
    goto :goto_b

    .line 198
    :cond_18
    const-string v1, "ShareSDK"

    const-string v3, "parseDevInfo"

    invoke-static {v1, v3}, Lcom/mob/commons/eventrecoder/EventRecorder;->addBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 200
    if-eqz v0, :cond_23

    .line 203
    const-string v1, "snsplat"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 206
    :try_start_3b
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_49

    move-result v1

    .line 211
    :goto_3f
    if-eq v1, v2, :cond_23

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 207
    :catch_49
    move-exception v1

    .line 208
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move v1, v2

    .line 209
    goto :goto_3f

    .line 217
    :cond_53
    const-string v0, "ShareSDK"

    const-string v1, "parseDevInfo"

    invoke-static {v0, v1}, Lcom/mob/commons/eventrecoder/EventRecorder;->addEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b()V
    .registers 1

    .prologue
    .line 127
    invoke-static {}, Lcn/sharesdk/framework/b/d;->a()Lcn/sharesdk/framework/b/d;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_9

    .line 129
    invoke-virtual {v0}, Lcn/sharesdk/framework/b/d;->stopThread()V

    .line 131
    :cond_9
    return-void
.end method

.method private static c()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 30
    const/16 v1, 0x29

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "cn.sharesdk.douban.Douban"

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const-string v3, "cn.sharesdk.evernote.Evernote"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "cn.sharesdk.facebook.Facebook"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "cn.sharesdk.renren.Renren"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "cn.sharesdk.sina.weibo.SinaWeibo"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "cn.sharesdk.kaixin.KaiXin"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "cn.sharesdk.linkedin.LinkedIn"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "cn.sharesdk.system.email.Email"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "cn.sharesdk.system.text.ShortMessage"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string v3, "cn.sharesdk.tencent.qq.QQ"

    aput-object v3, v2, v1

    const/16 v1, 0xa

    const-string v3, "cn.sharesdk.tencent.qzone.QZone"

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-string v3, "cn.sharesdk.tencent.weibo.TencentWeibo"

    aput-object v3, v2, v1

    const/16 v1, 0xc

    const-string v3, "cn.sharesdk.twitter.Twitter"

    aput-object v3, v2, v1

    const/16 v1, 0xd

    const-string v3, "cn.sharesdk.wechat.friends.Wechat"

    aput-object v3, v2, v1

    const/16 v1, 0xe

    const-string v3, "cn.sharesdk.wechat.moments.WechatMoments"

    aput-object v3, v2, v1

    const/16 v1, 0xf

    const-string v3, "cn.sharesdk.wechat.favorite.WechatFavorite"

    aput-object v3, v2, v1

    const/16 v1, 0x10

    const-string v3, "cn.sharesdk.youdao.YouDao"

    aput-object v3, v2, v1

    const/16 v1, 0x11

    const-string v3, "cn.sharesdk.google.GooglePlus"

    aput-object v3, v2, v1

    const/16 v1, 0x12

    const-string v3, "cn.sharesdk.foursquare.FourSquare"

    aput-object v3, v2, v1

    const/16 v1, 0x13

    const-string v3, "cn.sharesdk.pinterest.Pinterest"

    aput-object v3, v2, v1

    const/16 v1, 0x14

    const-string v3, "cn.sharesdk.flickr.Flickr"

    aput-object v3, v2, v1

    const/16 v1, 0x15

    const-string v3, "cn.sharesdk.tumblr.Tumblr"

    aput-object v3, v2, v1

    const/16 v1, 0x16

    const-string v3, "cn.sharesdk.dropbox.Dropbox"

    aput-object v3, v2, v1

    const/16 v1, 0x17

    const-string v3, "cn.sharesdk.vkontakte.VKontakte"

    aput-object v3, v2, v1

    const/16 v1, 0x18

    const-string v3, "cn.sharesdk.instagram.Instagram"

    aput-object v3, v2, v1

    const/16 v1, 0x19

    const-string v3, "cn.sharesdk.yixin.friends.Yixin"

    aput-object v3, v2, v1

    const/16 v1, 0x1a

    const-string v3, "cn.sharesdk.yixin.moments.YixinMoments"

    aput-object v3, v2, v1

    const/16 v1, 0x1b

    const-string v3, "cn.sharesdk.mingdao.Mingdao"

    aput-object v3, v2, v1

    const/16 v1, 0x1c

    const-string v3, "cn.sharesdk.line.Line"

    aput-object v3, v2, v1

    const/16 v1, 0x1d

    const-string v3, "cn.sharesdk.kakao.story.KakaoStory"

    aput-object v3, v2, v1

    const/16 v1, 0x1e

    const-string v3, "cn.sharesdk.kakao.talk.KakaoTalk"

    aput-object v3, v2, v1

    const/16 v1, 0x1f

    const-string v3, "cn.sharesdk.whatsapp.WhatsApp"

    aput-object v3, v2, v1

    const/16 v1, 0x20

    const-string v3, "cn.sharesdk.pocket.Pocket"

    aput-object v3, v2, v1

    const/16 v1, 0x21

    const-string v3, "cn.sharesdk.instapaper.Instapaper"

    aput-object v3, v2, v1

    const/16 v1, 0x22

    const-string v3, "cn.sharesdk.facebookmessenger.FacebookMessenger"

    aput-object v3, v2, v1

    const/16 v1, 0x23

    const-string v3, "cn.sharesdk.alipay.friends.Alipay"

    aput-object v3, v2, v1

    const/16 v1, 0x24

    const-string v3, "cn.sharesdk.alipay.moments.AlipayMoments"

    aput-object v3, v2, v1

    const/16 v1, 0x25

    const-string v3, "cn.sharesdk.dingding.friends.Dingding"

    aput-object v3, v2, v1

    const/16 v1, 0x26

    const-string v3, "cn.sharesdk.youtube.Youtube"

    aput-object v3, v2, v1

    const/16 v1, 0x27

    const-string v3, "cn.sharesdk.meipai.Meipai"

    aput-object v3, v2, v1

    const/16 v1, 0x28

    const-string v3, "cn.sharesdk.telegram.Telegram"

    aput-object v3, v2, v1

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    array-length v4, v2

    move v1, v0

    :goto_f9
    if-ge v1, v4, :cond_11a

    aget-object v0, v2, v1

    .line 84
    :try_start_fd
    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    check-cast v0, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10d
    .catch Ljava/lang/Throwable; {:try_start_fd .. :try_end_10d} :catch_111

    .line 82
    :goto_10d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f9

    .line 87
    :catch_111
    move-exception v0

    .line 88
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_10d

    .line 91
    :cond_11a
    return-object v3
.end method
