.class public Lcn/sharesdk/flickr/a;
.super Lcn/sharesdk/framework/b;
.source "FlickrHelper.java"


# static fields
.field private static b:Lcn/sharesdk/flickr/a;


# instance fields
.field private c:Lcn/sharesdk/framework/utils/a;

.field private d:Lcn/sharesdk/framework/a/a;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 35
    new-instance v0, Lcn/sharesdk/framework/utils/a;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/a;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    .line 36
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/flickr/a;->d:Lcn/sharesdk/framework/a/a;

    .line 37
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/flickr/a;
    .registers 2

    .prologue
    .line 27
    sget-object v0, Lcn/sharesdk/flickr/a;->b:Lcn/sharesdk/flickr/a;

    if-nez v0, :cond_b

    .line 28
    new-instance v0, Lcn/sharesdk/flickr/a;

    invoke-direct {v0, p0}, Lcn/sharesdk/flickr/a;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/flickr/a;->b:Lcn/sharesdk/flickr/a;

    .line 30
    :cond_b
    sget-object v0, Lcn/sharesdk/flickr/a;->b:Lcn/sharesdk/flickr/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 94
    :try_start_1
    const-string v1, "http://www.flickr.com/services/oauth/access_token"

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_verifier"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 98
    iget-object v3, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 100
    iget-object v0, p0, Lcn/sharesdk/flickr/a;->d:Lcn/sharesdk/framework/a/a;

    const/4 v3, 0x0

    const-string v5, "/oauth/access_token"

    invoke-virtual {p0}, Lcn/sharesdk/flickr/a;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_2c

    move-result-object v0

    .line 104
    :goto_2b
    return-object v0

    .line 101
    :catch_2c
    move-exception v0

    .line 102
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v7

    .line 104
    goto :goto_2b
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZZIII)Ljava/util/HashMap;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "ZZZIII)",
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
    .line 152
    const-string v1, "https://up.flickr.com/services/upload/"

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 155
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "title"

    invoke-direct {v0, v3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_17
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 158
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "description"

    invoke-direct {v0, v3, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_27
    if-eqz p4, :cond_3c

    array-length v0, p4

    if-lez v0, :cond_3c

    .line 161
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "tags"

    const-string v4, " "

    invoke-static {v4, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_3c
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "is_public"

    if-eqz p5, :cond_e4

    const-string v0, "1"

    :goto_44
    invoke-direct {v3, v4, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "is_friend"

    if-eqz p6, :cond_e8

    const-string v0, "1"

    :goto_52
    invoke-direct {v3, v4, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "is_family"

    if-eqz p7, :cond_ec

    const-string v0, "1"

    :goto_60
    invoke-direct {v3, v4, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "safety_level"

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "content_type"

    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "hidden"

    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "nojsoncallback"

    const-string v4, "1"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "format"

    const-string v4, "json"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 172
    iget-object v3, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 173
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 174
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "photo"

    invoke-direct {v3, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcn/sharesdk/flickr/a;->d:Lcn/sharesdk/framework/a/a;

    const-string v5, "/services/upload/"

    .line 177
    invoke-virtual {p0}, Lcn/sharesdk/flickr/a;->c()I

    move-result v6

    .line 176
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v0, Lcn/sharesdk/framework/utils/g;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/g;-><init>()V

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 179
    if-eqz v2, :cond_dc

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_f0

    .line 180
    :cond_dc
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "respons is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_e4
    const-string v0, "0"

    goto/16 :goto_44

    .line 164
    :cond_e8
    const-string v0, "0"

    goto/16 :goto_52

    .line 165
    :cond_ec
    const-string v0, "0"

    goto/16 :goto_60

    .line 183
    :cond_f0
    const-string v0, "rsp"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 184
    if-eqz v0, :cond_100

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_108

    .line 185
    :cond_100
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "respons is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_108
    const-string v3, "ok"

    const-string v4, "stat"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    .line 189
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_11c
    return-object v2
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcn/sharesdk/flickr/a;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 117
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 40
    iget-object v0, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 9
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
    .line 120
    const-string v1, "https://www.flickr.com/services/rest/"

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "method"

    const-string v4, "flickr.people.getInfo"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "user_id"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "api_key"

    iget-object v4, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v4}, Lcn/sharesdk/framework/utils/a;->a()Lcn/sharesdk/framework/utils/a$b;

    move-result-object v4

    iget-object v4, v4, Lcn/sharesdk/framework/utils/a$b;->a:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "nojsoncallback"

    const-string v4, "1"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "format"

    const-string v4, "json"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 129
    iget-object v3, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 130
    iget-object v0, p0, Lcn/sharesdk/flickr/a;->d:Lcn/sharesdk/framework/a/a;

    const/4 v4, 0x0

    const-string v5, "flickr.people.getInfo"

    .line 131
    invoke-virtual {p0}, Lcn/sharesdk/flickr/a;->c()I

    move-result v6

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 133
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "respons is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_6e
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_87

    .line 138
    :cond_7f
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "respons is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_87
    const-string v2, "ok"

    const-string v3, "stat"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 142
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_9b
    return-object v1
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 50
    :try_start_2
    const-string v1, "http://www.flickr.com/services/oauth/request_token"

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_callback"

    invoke-virtual {p0}, Lcn/sharesdk/flickr/a;->getRedirectUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    iget-object v3, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 56
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-object v0, p0, Lcn/sharesdk/flickr/a;->d:Lcn/sharesdk/framework/a/a;

    const/4 v4, 0x0

    const-string v5, "/oauth/request_token"

    .line 58
    invoke-virtual {p0}, Lcn/sharesdk/flickr/a;->c()I

    move-result v6

    .line 57
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 59
    if-nez v0, :cond_3e

    move-object v0, v7

    .line 89
    :goto_3d
    return-object v0

    .line 63
    :cond_3e
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 65
    array-length v3, v1

    move v0, v8

    :goto_4b
    if-ge v0, v3, :cond_72

    aget-object v4, v1, v0

    .line 66
    if-nez v4, :cond_54

    .line 65
    :cond_51
    :goto_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 70
    :cond_54
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 71
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_51

    .line 75
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_67} :catch_68

    goto :goto_51

    .line 86
    :catch_68
    move-exception v0

    .line 87
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_70
    move-object v0, v7

    .line 89
    goto :goto_3d

    .line 78
    :cond_72
    :try_start_72
    const-string v0, "oauth_token"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 79
    const-string v0, "oauth_token"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    const-string v1, "oauth_token_secret"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    iget-object v2, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v2, v0, v1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "/oauth/authorize"

    invoke-virtual {p0}, Lcn/sharesdk/flickr/a;->c()I

    move-result v2

    invoke-static {v1, v2}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.flickr.com/services/oauth/authorize?oauth_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_aa} :catch_68

    move-result-object v0

    goto :goto_3d
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 45
    new-instance v0, Lcn/sharesdk/flickr/b;

    invoke-direct {v0, p1}, Lcn/sharesdk/flickr/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcn/sharesdk/flickr/a;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/a;->a()Lcn/sharesdk/framework/utils/a$b;

    move-result-object v0

    iget-object v0, v0, Lcn/sharesdk/framework/utils/a$b;->e:Ljava/lang/String;

    return-object v0
.end method
