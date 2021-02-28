.class public Lcn/sharesdk/kaixin/a;
.super Lcn/sharesdk/framework/b;
.source "KaiXinHelper.java"


# static fields
.field private static final b:[Ljava/lang/String;

.field private static c:Lcn/sharesdk/kaixin/a;


# instance fields
.field private d:Lcn/sharesdk/framework/a/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "basic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user_birthday"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "user_blood"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "user_marriage"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "user_intro"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user_education"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "user_career"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "friends_birthday"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "friends_blood"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "friends_marriage"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "friends_intro"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "friends_education"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "friends_career"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "create_records"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "user_records"

    aput-object v2, v0, v1

    sput-object v0, Lcn/sharesdk/kaixin/a;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 62
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/kaixin/a;->d:Lcn/sharesdk/framework/a/a;

    .line 63
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kaixin/a;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcn/sharesdk/kaixin/a;->c:Lcn/sharesdk/kaixin/a;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Lcn/sharesdk/kaixin/a;

    invoke-direct {v0, p0}, Lcn/sharesdk/kaixin/a;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/kaixin/a;->c:Lcn/sharesdk/kaixin/a;

    .line 57
    :cond_b
    sget-object v0, Lcn/sharesdk/kaixin/a;->c:Lcn/sharesdk/kaixin/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 93
    const-string v0, "android.permission.INTERNET"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 95
    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private e(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 10
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

    .prologue
    const/4 v7, 0x0

    .line 212
    :try_start_1
    const-string v1, "https://api.kaixin001.com/records/me.json"

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v4, p0, Lcn/sharesdk/kaixin/a;->f:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "num"

    const-string v4, "1"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "category"

    const-string v4, "1"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcn/sharesdk/kaixin/a;->d:Lcn/sharesdk/framework/a/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "/records/me.json"

    invoke-virtual {p0}, Lcn/sharesdk/kaixin/a;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_54

    .line 220
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4a} :catch_4c

    move-result-object v0

    .line 226
    :goto_4b
    return-object v0

    .line 222
    :catch_4c
    move-exception v0

    .line 223
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_54
    move-object v0, v7

    .line 226
    goto :goto_4b
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 131
    :try_start_1
    const-string v1, "https://api.kaixin001.com/users/me.json"

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v4, p0, Lcn/sharesdk/kaixin/a;->f:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v0, "uid,name,gender,hometown,city,status,logo120,logo50,birthday,blood,marriage,trainwith,interest,favbook,favmovie,favtv,idol,motto,wishlist,intro,education,schooltype,school,class,year,career,company,dept,beginyear,beginmonth,endyear,endmonth,isStar,pinyin,online"

    .line 138
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "fields"

    invoke-direct {v3, v4, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcn/sharesdk/kaixin/a;->d:Lcn/sharesdk/framework/a/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "/users/me.json"

    invoke-virtual {p0}, Lcn/sharesdk/kaixin/a;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_48

    .line 142
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3e} :catch_40

    move-result-object v0

    .line 147
    :goto_3f
    return-object v0

    .line 144
    :catch_40
    move-exception v0

    .line 145
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_48
    move-object v0, v7

    .line 147
    goto :goto_3f
.end method

.method public a(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 12
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
    const/4 v7, 0x0

    .line 232
    :try_start_1
    const-string v1, "https://api.kaixin001.com/friends/me.json"

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v4, p0, Lcn/sharesdk/kaixin/a;->f:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "num"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "start"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v0, "uid,name,gender,hometown,city,status,logo120,logo50,birthday,blood,marriage,trainwith,interest,favbook,favmovie,favtv,idol,motto,wishlist,intro,education,schooltype,school,class,year,career,company,dept,beginyear,beginmonth,endyear,endmonth,isStar,pinyin,online"

    .line 241
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "fields"

    invoke-direct {v3, v4, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcn/sharesdk/kaixin/a;->d:Lcn/sharesdk/framework/a/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "/friends/me.json"

    invoke-virtual {p0}, Lcn/sharesdk/kaixin/a;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_64

    .line 245
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5a} :catch_5c

    move-result-object v0

    .line 251
    :goto_5b
    return-object v0

    .line 247
    :catch_5c
    move-exception v0

    .line 248
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_64
    move-object v0, v7

    .line 251
    goto :goto_5b
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 183
    :try_start_1
    const-string v1, "https://api.kaixin001.com/records/add.json"

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v4, p0, Lcn/sharesdk/kaixin/a;->f:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "content"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 190
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "pic"

    invoke-direct {v3, v0, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    :goto_2b
    iget-object v0, p0, Lcn/sharesdk/kaixin/a;->d:Lcn/sharesdk/framework/a/a;

    const/4 v4, 0x0

    const-string v5, "/records/add.json"

    invoke-virtual {p0}, Lcn/sharesdk/kaixin/a;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7a

    .line 197
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 198
    const-string v1, "rid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 199
    const-string v1, "rid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-direct {p0, v0}, Lcn/sharesdk/kaixin/a;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 207
    :goto_5f
    return-object v0

    .line 191
    :cond_60
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 192
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "picurl"

    invoke-direct {v0, v3, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_70} :catch_72

    :cond_70
    move-object v3, v7

    goto :goto_2b

    .line 203
    :catch_72
    move-exception v0

    .line 204
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_7a
    move-object v0, v7

    .line 207
    goto :goto_5f
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
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

    .line 256
    if-nez p2, :cond_4

    .line 290
    :goto_3
    return-object v6

    .line 261
    :cond_4
    if-eqz p3, :cond_3c

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 262
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 264
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

    :cond_3c
    move-object v2, v6

    .line 267
    :cond_3d
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "access_token"

    iget-object v3, p0, Lcn/sharesdk/kaixin/a;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    if-eqz p4, :cond_b8

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_b8

    .line 271
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v6

    :goto_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 272
    new-instance v3, Lcom/mob/tools/network/KVPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    .line 273
    goto :goto_5a

    :cond_77
    move-object v3, v0

    .line 278
    :goto_78
    const/4 v5, 0x0

    .line 279
    :try_start_79
    const-string v0, "GET"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 280
    iget-object v0, p0, Lcn/sharesdk/kaixin/a;->d:Lcn/sharesdk/framework/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v1, v5}, Lcn/sharesdk/framework/a/a;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_8c
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    goto/16 :goto_3

    .line 281
    :cond_97
    const-string v0, "POST"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 282
    iget-object v0, p0, Lcn/sharesdk/kaixin/a;->d:Lcn/sharesdk/framework/a/a;

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_aa} :catch_ac

    move-result-object v0

    goto :goto_8c

    .line 286
    :catch_ac
    move-exception v0

    .line 287
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_b6
    move-object v0, v6

    goto :goto_8c

    :cond_b8
    move-object v3, v6

    goto :goto_78
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 4

    .prologue
    .line 83
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/kaixin/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 84
    const-string v0, "application does not have the permission to connect the internet"

    .line 85
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 90
    :goto_14
    return-void

    .line 89
    :cond_15
    invoke-virtual {p0, p1}, Lcn/sharesdk/kaixin/a;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    goto :goto_14
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcn/sharesdk/kaixin/a;->g:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcn/sharesdk/kaixin/a;->h:[Ljava/lang/String;

    .line 100
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcn/sharesdk/kaixin/a;->e:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcn/sharesdk/kaixin/a;->f:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 10
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

    .prologue
    const/4 v7, 0x0

    .line 153
    :try_start_1
    const-string v1, "https://api.kaixin001.com/users/show.json"

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v4, p0, Lcn/sharesdk/kaixin/a;->f:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "uids"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v0, "uid,name,gender,hometown,city,status,logo120,logo50,birthday,blood,marriage,trainwith,interest,favbook,favmovie,favtv,idol,motto,wishlist,intro,education,schooltype,school,class,year,career,company,dept,beginyear,beginmonth,endyear,endmonth,isStar,pinyin,online"

    .line 161
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "fields"

    invoke-direct {v3, v4, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcn/sharesdk/kaixin/a;->d:Lcn/sharesdk/framework/a/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "/users/show.json"

    invoke-virtual {p0}, Lcn/sharesdk/kaixin/a;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_52

    .line 165
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_48} :catch_4a

    move-result-object v0

    .line 171
    :goto_49
    return-object v0

    .line 167
    :catch_4a
    move-exception v0

    .line 168
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_52
    move-object v0, v7

    .line 171
    goto :goto_49
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 103
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    const-string v0, "/oauth2/authorize"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?client_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/kaixin/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v0, "&response_type=token"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&redirect_uri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/kaixin/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object v0, p0, Lcn/sharesdk/kaixin/a;->h:[Ljava/lang/String;

    if-nez v0, :cond_60

    sget-object v0, Lcn/sharesdk/kaixin/a;->b:[Ljava/lang/String;

    .line 110
    :goto_46
    const-string v2, "&scope="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    array-length v4, v0

    move v2, v1

    :goto_4d
    if-ge v1, v4, :cond_63

    aget-object v5, v0, v1

    .line 112
    if-lez v2, :cond_58

    .line 113
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    :cond_58
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 109
    :cond_60
    iget-object v0, p0, Lcn/sharesdk/kaixin/a;->h:[Ljava/lang/String;

    goto :goto_46

    .line 118
    :cond_63
    const-string v0, "&oauth_client=1"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v0, "/oauth2/authorize"

    invoke-virtual {p0}, Lcn/sharesdk/kaixin/a;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.kaixin001.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

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
    .line 79
    new-instance v0, Lcn/sharesdk/kaixin/b;

    invoke-direct {v0, p1}, Lcn/sharesdk/kaixin/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcn/sharesdk/kaixin/a;->e:Ljava/lang/String;

    return-object v0
.end method
