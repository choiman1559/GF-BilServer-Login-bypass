.class Lcn/sharesdk/tencent/qq/b$2;
.super Ljava/lang/Object;
.source "QQHelper.java"

# interfaces
.implements Lcom/mob/tools/RxMob$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qq/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/b;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/b$2;->a:Lcn/sharesdk/tencent/qq/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/mob/tools/RxMob$Subscriber;)V
    .registers 9
    .param p1, "subscriber"    # Lcom/mob/tools/RxMob$Subscriber;

    .prologue
    const/16 v6, 0x2710

    .line 138
    const-string v1, "https://graph.qq.com/oauth2.0/me"

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v4, p0, Lcn/sharesdk/tencent/qq/b$2;->a:Lcn/sharesdk/tencent/qq/b;

    invoke-static {v4}, Lcn/sharesdk/tencent/qq/b;->a(Lcn/sharesdk/tencent/qq/b;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "unionid"

    const-string v4, "1"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 145
    iput v6, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 146
    iput v6, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 148
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    .line 150
    :try_start_32
    iget-object v6, p0, Lcn/sharesdk/tencent/qq/b$2;->a:Lcn/sharesdk/tencent/qq/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/sharesdk/tencent/qq/b;->a(Lcn/sharesdk/tencent/qq/b;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_40} :catch_41

    .line 158
    :goto_40
    return-void

    .line 152
    :catch_41
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/b$2;->a:Lcn/sharesdk/tencent/qq/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/b;->b(Lcn/sharesdk/tencent/qq/b;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "unionid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "qq auth,get unionId fail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_40
.end method
