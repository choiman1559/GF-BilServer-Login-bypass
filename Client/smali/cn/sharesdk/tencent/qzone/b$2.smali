.class Lcn/sharesdk/tencent/qzone/b$2;
.super Ljava/lang/Object;
.source "QZoneHelper.java"

# interfaces
.implements Lcom/mob/tools/RxMob$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qzone/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/b;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b$2;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/mob/tools/RxMob$Subscriber;)V
    .registers 9
    .param p1, "subscriber"    # Lcom/mob/tools/RxMob$Subscriber;

    .prologue
    const/16 v6, 0x2710

    .line 160
    const-string v1, "https://graph.qq.com/oauth2.0/me"

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v4, p0, Lcn/sharesdk/tencent/qzone/b$2;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v4}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "unionid"

    const-string v4, "1"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 167
    iput v6, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 168
    iput v6, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 170
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    .line 172
    :try_start_32
    iget-object v6, p0, Lcn/sharesdk/tencent/qzone/b$2;->a:Lcn/sharesdk/tencent/qzone/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/tencent/qzone/b;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_40} :catch_41

    .line 179
    :goto_40
    return-void

    .line 174
    :catch_41
    move-exception v0

    .line 175
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$2;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->b(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "unionid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "qq auth, get unionId fail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_40
.end method
