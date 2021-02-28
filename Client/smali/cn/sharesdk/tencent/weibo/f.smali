.class public Lcn/sharesdk/tencent/weibo/f;
.super Lcn/sharesdk/framework/b;
.source "Weibo.java"


# static fields
.field private static b:Lcn/sharesdk/tencent/weibo/f;


# instance fields
.field private c:Lcn/sharesdk/tencent/weibo/c;

.field private d:Lcn/sharesdk/framework/a/a;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 52
    new-instance v0, Lcn/sharesdk/tencent/weibo/c;

    invoke-direct {v0}, Lcn/sharesdk/tencent/weibo/c;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    .line 53
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->d:Lcn/sharesdk/framework/a/a;

    .line 54
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/weibo/f;)Lcn/sharesdk/tencent/weibo/c;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    return-object v0
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/weibo/f;
    .registers 2

    .prologue
    .line 44
    sget-object v0, Lcn/sharesdk/tencent/weibo/f;->b:Lcn/sharesdk/tencent/weibo/f;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcn/sharesdk/tencent/weibo/f;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/weibo/f;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/tencent/weibo/f;->b:Lcn/sharesdk/tencent/weibo/f;

    .line 47
    :cond_b
    sget-object v0, Lcn/sharesdk/tencent/weibo/f;->b:Lcn/sharesdk/tencent/weibo/f;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/weibo/f;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/weibo/f;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "oauth_consumer_key"

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iget-object v2, v2, Lcn/sharesdk/tencent/weibo/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "access_token"

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iget-object v2, v2, Lcn/sharesdk/tencent/weibo/c;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "openid"

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iget-object v2, v2, Lcn/sharesdk/tencent/weibo/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "clientip"

    const-string v2, "127.0.0.1"

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "oauth_version"

    const-string v2, "2.a"

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "scope"

    const-string v2, "all"

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 280
    const-string v0, "https://open.t.qq.com/api/friends/user_idollist"

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-direct {p0, v1}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/util/ArrayList;)V

    .line 283
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "reqnum"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "startindex"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "name"

    invoke-direct {v2, v3, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "mode"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/f;->d:Lcn/sharesdk/framework/a/a;

    const-string v3, "/api/friends/user_idollist"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5a

    .line 290
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 292
    :goto_59
    return-object v0

    :cond_5a
    const/4 v0, 0x0

    goto :goto_59
.end method

.method public a(Ljava/lang/String;FF)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 174
    const-string v0, "https://open.t.qq.com/api/t/add"

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-direct {p0, v1}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/util/ArrayList;)V

    .line 177
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "content"

    invoke-direct {v2, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    cmpl-float v2, p2, v4

    if-eqz v2, :cond_39

    cmpl-float v2, p3, v4

    if-eqz v2, :cond_39

    .line 179
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "latitude"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "longitude"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_39
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/f;->d:Lcn/sharesdk/framework/a/a;

    const-string v3, "/api/t/add"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_57

    .line 184
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 186
    :goto_56
    return-object v0

    :cond_57
    const/4 v0, 0x0

    goto :goto_56
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;FF)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FF)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 191
    const-string v0, "https://open.t.qq.com/api/t/add_pic_url"

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-direct {p0, v1}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/util/ArrayList;)V

    .line 194
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "content"

    invoke-direct {v2, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "pic_url"

    invoke-direct {v2, v3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    cmpl-float v2, p3, v4

    if-eqz v2, :cond_43

    cmpl-float v2, p4, v4

    if-eqz v2, :cond_43

    .line 197
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "longitude"

    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "latitude"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_43
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/f;->d:Lcn/sharesdk/framework/a/a;

    const-string v3, "/api/t/add_pic_url"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_61

    .line 202
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 204
    :goto_60
    return-object v0

    :cond_61
    const/4 v0, 0x0

    goto :goto_60
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 315
    if-nez p2, :cond_4

    .line 349
    :cond_3
    :goto_3
    return-object v6

    .line 319
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 320
    if-eqz p3, :cond_3c

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 321
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 322
    new-instance v4, Lcom/mob/tools/network/KVPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 325
    :cond_3c
    invoke-direct {p0, v2}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/util/ArrayList;)V

    .line 328
    if-eqz p4, :cond_ba

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_ba

    .line 329
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v6

    :goto_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 330
    new-instance v3, Lcom/mob/tools/network/KVPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    .line 331
    goto :goto_50

    :cond_6d
    move-object v3, v0

    .line 335
    :goto_6e
    const/4 v5, 0x0

    .line 337
    :try_start_6f
    const-string v0, "GET"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 338
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v1, v5}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_84} :catch_b0

    move-result-object v0

    .line 346
    :goto_85
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 347
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    goto/16 :goto_3

    .line 339
    :cond_98
    :try_start_98
    const-string v0, "POST"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 340
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_ae} :catch_b0

    move-result-object v0

    goto :goto_85

    .line 342
    :catch_b0
    move-exception v0

    .line 343
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_b8
    move-object v0, v6

    goto :goto_85

    :cond_ba
    move-object v3, v6

    goto :goto_6e
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .registers 4

    .prologue
    .line 77
    if-eqz p2, :cond_6

    .line 78
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/weibo/f;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 102
    :goto_5
    return-void

    .line 82
    :cond_6
    new-instance v0, Lcn/sharesdk/tencent/weibo/f$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/tencent/weibo/f$1;-><init>(Lcn/sharesdk/tencent/weibo/f;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iput-object p1, v0, Lcn/sharesdk/tencent/weibo/c;->c:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iput-object p1, v0, Lcn/sharesdk/tencent/weibo/c;->a:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iput-object p2, v0, Lcn/sharesdk/tencent/weibo/c;->b:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 139
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iput-object p1, v0, Lcn/sharesdk/tencent/weibo/c;->d:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iput-object p2, v0, Lcn/sharesdk/tencent/weibo/c;->e:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iput-object p3, v0, Lcn/sharesdk/tencent/weibo/c;->f:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iput-object p4, v0, Lcn/sharesdk/tencent/weibo/c;->g:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public a()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 355
    :try_start_9
    const-string v2, "com.tencent.WBlog"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 357
    if-eqz v2, :cond_33

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v3, 0x2c

    if-lt v2, v3, :cond_33

    .line 359
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "TencentAuth://weibo"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 360
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 362
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_2f} :catch_34

    move-result v1

    if-lez v1, :cond_33

    .line 363
    const/4 v0, 0x1

    .line 368
    :cond_33
    :goto_33
    return v0

    .line 367
    :catch_34
    move-exception v1

    goto :goto_33
.end method

.method public b(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 116
    const-string v1, "/cgi-bin/oauth2/access_token"

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://open.t.qq.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?client_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iget-object v3, v3, Lcn/sharesdk/tencent/weibo/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&client_secret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iget-object v3, v3, Lcn/sharesdk/tencent/weibo/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&redirect_uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iget-object v3, v3, Lcn/sharesdk/tencent/weibo/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&grant_type=authorization_code&code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    iget-object v3, p0, Lcn/sharesdk/tencent/weibo/f;->d:Lcn/sharesdk/framework/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/tencent/weibo/f;->c()I

    move-result v4

    invoke-virtual {v3, v2, v0, v1, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_73

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_73

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://open.t.qq.com?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 134
    :cond_73
    return-object v0
.end method

.method public b(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 298
    const-string v0, "https://open.t.qq.com/api/friends/user_fanslist"

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-direct {p0, v1}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/util/ArrayList;)V

    .line 301
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "reqnum"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "startindex"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "name"

    invoke-direct {v2, v3, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "mode"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/f;->d:Lcn/sharesdk/framework/a/a;

    const-string v3, "/api/friends/user_fanslist"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5a

    .line 308
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 310
    :goto_59
    return-object v0

    :cond_5a
    const/4 v0, 0x0

    goto :goto_59
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;FF)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FF)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 209
    const-string v1, "https://open.t.qq.com/api/t/add_pic"

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-direct {p0, v2}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/util/ArrayList;)V

    .line 212
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "content"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "pic"

    invoke-direct {v3, v0, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    cmpl-float v0, p3, v4

    if-eqz v0, :cond_40

    cmpl-float v0, p4, v4

    if-eqz v0, :cond_40

    .line 215
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "longitude"

    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "latitude"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_40
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->d:Lcn/sharesdk/framework/a/a;

    const-string v4, "/api/t/add_pic"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/weibo/f;->c()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5e

    .line 220
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 222
    :goto_5d
    return-object v0

    :cond_5e
    const/4 v0, 0x0

    goto :goto_5d
.end method

.method public c(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 156
    const-string v0, "/api/user/info"

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-direct {p0, v1}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/util/ArrayList;)V

    .line 159
    if-eqz p1, :cond_18

    .line 160
    const-string v0, "/api/user/other_info"

    .line 161
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "name"

    invoke-direct {v2, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://open.t.qq.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    iget-object v3, p0, Lcn/sharesdk/tencent/weibo/f;->d:Lcn/sharesdk/framework/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/tencent/weibo/f;->c()I

    move-result v4

    invoke-virtual {v3, v2, v1, v0, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_47

    .line 167
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 169
    :goto_46
    return-object v0

    :cond_47
    const/4 v0, 0x0

    goto :goto_46
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 227
    const-string v1, "https://open.t.qq.com/api/t/upload_pic"

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-direct {p0, v2}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/util/ArrayList;)V

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 234
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "pic_url"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "pic_type"

    const-string v4, "1"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    .line 244
    :goto_30
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->d:Lcn/sharesdk/framework/a/a;

    const-string v4, "/api/t/upload_pic"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/weibo/f;->c()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_74

    .line 246
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 247
    const-string v0, "ret"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 248
    const-string v0, "ret"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 249
    if-nez v0, :cond_9a

    .line 251
    const-string v0, "data"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 252
    const-string v1, "imgurl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 261
    :cond_74
    return-object v6

    .line 236
    :cond_75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 238
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "pic"

    invoke-direct {v3, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "pic_type"

    const-string v5, "2"

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 254
    :cond_9a
    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tecent weibo uploadPic == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " == error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msg"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 257
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 265
    const-string v0, "https://open.t.qq.com/api/friends/add"

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-direct {p0, v1}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/util/ArrayList;)V

    .line 268
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "name"

    invoke-direct {v2, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/f;->d:Lcn/sharesdk/framework/a/a;

    const-string v3, "/api/friends/add"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_32

    .line 272
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 274
    :goto_31
    return-object v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    const-string v0, "/cgi-bin/oauth2/authorize"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/weibo/f;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://open.t.qq.com/cgi-bin/oauth2/authorize?client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iget-object v1, v1, Lcn/sharesdk/tencent/weibo/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&response_type=code&redirect_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iget-object v1, v1, Lcn/sharesdk/tencent/weibo/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 67
    new-instance v0, Lcn/sharesdk/tencent/weibo/d;

    invoke-direct {v0, p1}, Lcn/sharesdk/tencent/weibo/d;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    iget-object v0, v0, Lcn/sharesdk/tencent/weibo/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/c;)Lcn/sharesdk/framework/authorize/d;
    .registers 4
    .param p1, "ssoAct"    # Lcn/sharesdk/framework/authorize/c;

    .prologue
    .line 71
    new-instance v0, Lcn/sharesdk/tencent/weibo/e;

    invoke-direct {v0, p1}, Lcn/sharesdk/tencent/weibo/e;-><init>(Lcn/sharesdk/framework/authorize/c;)V

    .line 72
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/f;->c:Lcn/sharesdk/tencent/weibo/c;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/weibo/e;->a(Lcn/sharesdk/tencent/weibo/c;)V

    .line 73
    return-object v0
.end method
