.class public Lcn/sharesdk/pocket/b;
.super Lcn/sharesdk/framework/b;
.source "PocketHelper.java"


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Lcn/sharesdk/pocket/b;


# instance fields
.field private final d:Lcn/sharesdk/framework/a/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "http://mob.com/pocket"

    sput-object v0, Lcn/sharesdk/pocket/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 37
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/pocket/b;->d:Lcn/sharesdk/framework/a/a;

    .line 38
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/pocket/b;
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcn/sharesdk/pocket/b;->c:Lcn/sharesdk/pocket/b;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcn/sharesdk/pocket/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/pocket/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/pocket/b;->c:Lcn/sharesdk/pocket/b;

    .line 32
    :cond_b
    sget-object v0, Lcn/sharesdk/pocket/b;->c:Lcn/sharesdk/pocket/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "consumer_key"

    iget-object v3, p0, Lcn/sharesdk/pocket/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "code"

    iget-object v3, p0, Lcn/sharesdk/pocket/b;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :try_start_1d
    iget-object v1, p0, Lcn/sharesdk/pocket/b;->d:Lcn/sharesdk/framework/a/a;

    const-string v2, "https://getpocket.com/v3/oauth/authorize"

    const-string v3, "/v3/oauth/authorize"

    invoke-virtual {p0}, Lcn/sharesdk/pocket/b;->c()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2a} :catch_2c

    move-result-object v0

    .line 91
    :goto_2b
    return-object v0

    .line 89
    :catch_2c
    move-exception v0

    .line 90
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 91
    const/4 v0, 0x0

    goto :goto_2b
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

    .line 96
    const-string v1, "https://getpocket.com/v3/add"

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "title"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "url"

    invoke-direct {v0, v3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "tags"

    invoke-direct {v0, v3, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "consumer_key"

    iget-object v4, p0, Lcn/sharesdk/pocket/b;->e:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v4, p0, Lcn/sharesdk/pocket/b;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    invoke-virtual {v4}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :try_start_46
    iget-object v0, p0, Lcn/sharesdk/pocket/b;->d:Lcn/sharesdk/framework/a/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "/v3/add"

    invoke-virtual {p0}, Lcn/sharesdk/pocket/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6e

    .line 106
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_64} :catch_66

    move-result-object v0

    .line 111
    :goto_65
    return-object v0

    .line 108
    :catch_66
    move-exception v0

    .line 109
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_6e
    move-object v0, v7

    .line 111
    goto :goto_65
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcn/sharesdk/pocket/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 81
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcn/sharesdk/pocket/b;->e:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "consumer_key"

    iget-object v4, p0, Lcn/sharesdk/pocket/b;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "redirect_uri"

    sget-object v4, Lcn/sharesdk/pocket/b;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :try_start_1f
    iget-object v2, p0, Lcn/sharesdk/pocket/b;->d:Lcn/sharesdk/framework/a/a;

    const-string v3, "https://getpocket.com/v3/oauth/request"

    const-string v4, "/v3/oauth/request"

    invoke-virtual {p0}, Lcn/sharesdk/pocket/b;->c()I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 54
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v3, "response incorrect: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 67
    :goto_48
    return-object v0

    .line 57
    :cond_49
    const-string v2, "code="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/pocket/b;->f:Ljava/lang/String;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://getpocket.com/auth/authorize?mobile=1&request_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/pocket/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&redirect_uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/sharesdk/pocket/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_75} :catch_77

    move-result-object v0

    goto :goto_48

    .line 59
    :catch_77
    move-exception v1

    .line 65
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_48
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 42
    new-instance v0, Lcn/sharesdk/pocket/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/pocket/a;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    sget-object v0, Lcn/sharesdk/pocket/b;->b:Ljava/lang/String;

    return-object v0
.end method
