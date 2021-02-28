.class public Lcn/sharesdk/instapaper/b;
.super Lcn/sharesdk/framework/b;
.source "InstapaperHelper.java"


# static fields
.field private static b:Lcn/sharesdk/instapaper/b;


# instance fields
.field private c:Lcn/sharesdk/framework/utils/a;

.field private d:Lcn/sharesdk/framework/a/a;

.field private e:Lcn/sharesdk/framework/authorize/AuthorizeListener;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 36
    new-instance v0, Lcn/sharesdk/framework/utils/a;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/a;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    .line 37
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/instapaper/b;->d:Lcn/sharesdk/framework/a/a;

    .line 38
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/instapaper/b;
    .registers 2

    .prologue
    .line 27
    sget-object v0, Lcn/sharesdk/instapaper/b;->b:Lcn/sharesdk/instapaper/b;

    if-nez v0, :cond_b

    .line 28
    new-instance v0, Lcn/sharesdk/instapaper/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/instapaper/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/instapaper/b;->b:Lcn/sharesdk/instapaper/b;

    .line 30
    :cond_b
    sget-object v0, Lcn/sharesdk/instapaper/b;->b:Lcn/sharesdk/instapaper/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/HashMap;
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
    const/4 v4, 0x0

    .line 104
    const-string v1, "https://www.instapaper.com/api/1/account/verify_credentials"

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v0, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    iget-object v3, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 110
    iget-object v0, p0, Lcn/sharesdk/instapaper/b;->d:Lcn/sharesdk/framework/a/a;

    const-string v5, "/api/1/account/verify_credentials"

    .line 111
    invoke-virtual {p0}, Lcn/sharesdk/instapaper/b;->c()I

    move-result v6

    .line 110
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_31

    .line 113
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 115
    :cond_31
    return-object v4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 119
    const-string v1, "https://www.instapaper.com/api/1/bookmarks/add"

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "description"

    invoke-direct {v0, v4, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "title"

    invoke-direct {v0, v4, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "url"

    invoke-direct {v0, v4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 125
    iget-object v4, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v4, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 127
    iget-object v0, p0, Lcn/sharesdk/instapaper/b;->d:Lcn/sharesdk/framework/a/a;

    const-string v5, "/api/1/bookmarks/add"

    invoke-virtual {p0}, Lcn/sharesdk/instapaper/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4f

    .line 129
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 131
    :cond_4f
    return-object v3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 11
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 137
    if-nez p2, :cond_4

    .line 178
    :cond_3
    :goto_3
    return-object v5

    .line 141
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    if-eqz p3, :cond_3c

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 143
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

    .line 144
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

    .line 149
    :cond_3c
    if-eqz p4, :cond_e2

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_e2

    .line 150
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v5

    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 151
    new-instance v3, Lcom/mob/tools/network/KVPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    .line 152
    goto :goto_4d

    :cond_6a
    move-object v3, v0

    .line 157
    :goto_6b
    const-string v0, "GET"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 158
    iget-object v0, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1, v2}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    new-instance v1, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v1}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    invoke-virtual {v1, p1, v2, v0, v5}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_8c
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 176
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    goto/16 :goto_3

    .line 161
    :cond_9f
    const-string v0, "POST"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 163
    if-eqz p4, :cond_b3

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_ca

    .line 164
    :cond_b3
    iget-object v0, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 172
    :goto_bf
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    .line 167
    :cond_ca
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object v1, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v1, p1, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 170
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_bf

    :cond_e0
    move-object v0, v5

    goto :goto_8c

    :cond_e2
    move-object v3, v5

    goto :goto_6b
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcn/sharesdk/instapaper/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 41
    iget-object v0, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    const-string v1, ""

    invoke-virtual {v0, p1, p2, v1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method protected b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 4

    .prologue
    .line 62
    iput-object p1, p0, Lcn/sharesdk/instapaper/b;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 63
    new-instance v0, Lcn/sharesdk/instapaper/d;

    invoke-direct {v0}, Lcn/sharesdk/instapaper/d;-><init>()V

    .line 64
    iget-object v1, p0, Lcn/sharesdk/instapaper/b;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/instapaper/d;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 65
    invoke-virtual {v0, p0}, Lcn/sharesdk/instapaper/d;->a(Lcn/sharesdk/framework/authorize/AuthorizeHelper;)V

    .line 66
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 79
    :try_start_5
    const-string v1, "https://www.instapaper.com/api/1/oauth/access_token"

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "x_auth_username"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "x_auth_password"

    invoke-direct {v0, v3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "x_auth_mode"

    const-string v4, "client_auth"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 85
    iget-object v3, p0, Lcn/sharesdk/instapaper/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 86
    iget-object v0, p0, Lcn/sharesdk/instapaper/b;->d:Lcn/sharesdk/framework/a/a;

    const/4 v3, 0x0

    const-string v5, "/api/1/oauth/access_token"

    invoke-virtual {p0}, Lcn/sharesdk/instapaper/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "data"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_4a} :catch_4c

    :goto_4a
    move-object v0, v7

    .line 100
    :goto_4b
    return-object v0

    .line 88
    :catch_4c
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_85

    const-string v1, "{\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 92
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 93
    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 94
    const-string v0, "status"

    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    .line 95
    goto :goto_4b

    .line 98
    :cond_85
    const-string v1, "error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a
.end method

.method public getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcn/sharesdk/instapaper/b;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    const-string v0, "instapaper://auth/"

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 58
    new-instance v0, Lcn/sharesdk/instapaper/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/instapaper/a;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const-string v0, "instapaper://none/"

    return-object v0
.end method
