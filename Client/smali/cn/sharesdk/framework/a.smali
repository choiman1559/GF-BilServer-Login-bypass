.class public Lcn/sharesdk/framework/a;
.super Ljava/lang/Object;
.source "InnerPlatformActionListener.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# instance fields
.field private a:Lcn/sharesdk/framework/PlatformActionListener;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            "Lcn/sharesdk/framework/Platform$ShareParams;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/a;->b:Ljava/util/HashMap;

    .line 25
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/a;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/PlatformActionListener;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iput-object p1, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p1
.end method

.method private a(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 210
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    .line 212
    const/16 v1, 0xf

    :try_start_6
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "nickname"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "icon"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gender"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "snsUserUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "resume"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "secretType"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "secret"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "birthday"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "followerCount"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "favouriteCount"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "shareCount"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "snsregat"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "snsUserLevel"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "educationJSONArrayStr"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "workJSONArrayStr"

    aput-object v3, v1, v2

    .line 229
    invoke-direct {p0, v0, v1}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_5d} :catch_5f

    move-result-object v0

    .line 233
    :goto_5e
    return-object v0

    .line 230
    :catch_5f
    move-exception v0

    .line 231
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 233
    const/4 v0, 0x0

    goto :goto_5e
.end method

.method private a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7c

    const/4 v1, 0x0

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    array-length v5, p2

    move v0, v1

    move v2, v1

    :goto_10
    if-ge v0, v5, :cond_38

    aget-object v6, p2, v0

    .line 267
    if-lez v2, :cond_1c

    .line 268
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    .line 273
    invoke-virtual {p1, v6}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 274
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 266
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 277
    :cond_2b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v7, "utf-8"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 279
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 281
    :cond_38
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "======UserData: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 282
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 6
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
    .line 86
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 87
    new-instance v1, Lcn/sharesdk/framework/a$1;

    invoke-direct {v1, p0, v0, p2, p3}, Lcn/sharesdk/framework/a$1;-><init>(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/PlatformActionListener;ILjava/util/HashMap;)V

    iput-object v1, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private b(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 237
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    .line 238
    const-string v1, "WechatMoments"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "WechatFavorite"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 239
    :cond_1c
    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserGender()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 241
    const-string v1, "Wechat"

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_32

    .line 243
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    .line 248
    :cond_32
    const/4 v1, 0x5

    :try_start_33
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "gender"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "birthday"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "secretType"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "educationJSONArrayStr"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "workJSONArrayStr"

    aput-object v3, v1, v2

    .line 255
    invoke-direct {p0, v0, v1}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_51} :catch_53

    move-result-object v0

    .line 259
    :goto_52
    return-object v0

    .line 256
    :catch_53
    move-exception v0

    .line 257
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 259
    const/4 v0, 0x0

    goto :goto_52
.end method

.method private b(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 10
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
    .line 127
    iget-object v0, p0, Lcn/sharesdk/framework/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 128
    if-eqz p3, :cond_ba

    .line 129
    const-string v0, "ShareParams"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    move-object v1, v0

    .line 134
    :goto_13
    :try_start_13
    invoke-virtual {p3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_19} :catch_90

    move-object v2, v0

    .line 140
    :goto_1a
    if-eqz v1, :cond_80

    .line 141
    new-instance v3, Lcn/sharesdk/framework/b/b/f;

    invoke-direct {v3}, Lcn/sharesdk/framework/b/b/f;-><init>()V

    .line 142
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getCustomFlag()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcn/sharesdk/framework/b/b/f;->n:[Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v4, "WechatMoments"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    const-string v4, "WechatFavorite"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 146
    :cond_47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 147
    const-string v4, "Wechat"

    invoke-static {v4}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v4

    .line 148
    if-eqz v4, :cond_5d

    .line 149
    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_5d
    :goto_5d
    iput-object v0, v3, Lcn/sharesdk/framework/b/b/f;->b:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v0

    iput v0, v3, Lcn/sharesdk/framework/b/b/f;->a:I

    .line 157
    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/Platform;->filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_71

    .line 159
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    iput-object v1, v3, Lcn/sharesdk/framework/b/b/f;->c:Ljava/lang/String;

    .line 160
    iput-object v0, v3, Lcn/sharesdk/framework/b/b/f;->d:Lcn/sharesdk/framework/b/b/f$a;

    .line 162
    :cond_71
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/a;->b(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcn/sharesdk/framework/b/b/f;->m:Ljava/lang/String;

    .line 164
    invoke-static {}, Lcn/sharesdk/framework/b/d;->a()Lcn/sharesdk/framework/b/d;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_80

    .line 166
    invoke-virtual {v0, v3}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    .line 171
    :cond_80
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_8f

    .line 173
    :try_start_84
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/framework/a;->c:I
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_8f} :catch_b1

    .line 180
    :cond_8f
    :goto_8f
    return-void

    .line 135
    :catch_90
    move-exception v0

    .line 136
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v2, p3

    .line 137
    goto :goto_1a

    .line 151
    :cond_9a
    const-string v4, "TencentWeibo"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 152
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v4, "name"

    invoke-virtual {v0, v4}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    .line 176
    :catch_b1
    move-exception v0

    .line 177
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_8f

    :cond_ba
    move-object v1, v0

    goto/16 :goto_13
.end method


# virtual methods
.method a()Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method a(Lcn/sharesdk/framework/Platform;ILjava/lang/Object;)V
    .registers 6

    .prologue
    .line 183
    iput p2, p0, Lcn/sharesdk/framework/a;->c:I

    .line 184
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 185
    new-instance v1, Lcn/sharesdk/framework/a$2;

    invoke-direct {v1, p0, v0, p2, p3}, Lcn/sharesdk/framework/a$2;-><init>(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/PlatformActionListener;ILjava/lang/Object;)V

    iput-object v1, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->doAuthorize([Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Lcn/sharesdk/framework/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 29
    return-void
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 4
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_f

    .line 79
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/framework/a;->c:I

    .line 83
    :cond_f
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 8
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
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 49
    instance-of v0, p1, Lcn/sharesdk/framework/CustomPlatform;

    if-eqz v0, :cond_14

    .line 50
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_13

    .line 51
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 52
    iput-object v3, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 53
    iput v2, p0, Lcn/sharesdk/framework/a;->c:I

    .line 75
    :cond_13
    :goto_13
    return-void

    .line 58
    :cond_14
    sparse-switch p2, :sswitch_data_42

    .line 66
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_13

    .line 67
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 68
    const-string v0, "Wechat"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcn/sharesdk/framework/a;->c:I

    if-eqz v0, :cond_34

    iget v0, p0, Lcn/sharesdk/framework/a;->c:I

    if-ne v0, p2, :cond_13

    .line 69
    :cond_34
    iput-object v3, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 70
    iput v2, p0, Lcn/sharesdk/framework/a;->c:I

    goto :goto_13

    .line 60
    :sswitch_39
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_13

    .line 63
    :sswitch_3d
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/framework/a;->b(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_13

    .line 58
    nop

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_39
        0x9 -> :sswitch_3d
    .end sparse-switch
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_f

    .line 41
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/framework/a;->c:I

    .line 45
    :cond_f
    return-void
.end method
