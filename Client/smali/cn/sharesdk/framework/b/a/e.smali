.class public Lcn/sharesdk/framework/b/a/e;
.super Ljava/lang/Object;
.source "SharePrefrenceUtil.java"


# static fields
.field private static b:Lcn/sharesdk/framework/b/a/e;


# instance fields
.field private a:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    .line 61
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "share_sdk"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public static a()Lcn/sharesdk/framework/b/a/e;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcn/sharesdk/framework/b/a/e;->b:Lcn/sharesdk/framework/b/a/e;

    if-nez v0, :cond_b

    .line 66
    new-instance v0, Lcn/sharesdk/framework/b/a/e;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/a/e;-><init>()V

    sput-object v0, Lcn/sharesdk/framework/b/a/e;->b:Lcn/sharesdk/framework/b/a/e;

    .line 68
    :cond_b
    sget-object v0, Lcn/sharesdk/framework/b/a/e;->b:Lcn/sharesdk/framework/b/a/e;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .registers 6

    .prologue
    .line 157
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "device_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 158
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "trans_short_link"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 228
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 4

    .prologue
    .line 220
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public a(Z)V
    .registers 5

    .prologue
    .line 167
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "connect_server"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 168
    return-void
.end method

.method public b()J
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "service_time"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .registers 6

    .prologue
    .line 177
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "connect_server_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 116
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_device_info"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public b(Z)V
    .registers 5

    .prologue
    .line 196
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "sns_info_buffered"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 197
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 120
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_user_info"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_device_info"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_f
    return v0

    :cond_10
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 124
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_share_content"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_user_info"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_f
    return v0

    :cond_10
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f
.end method

.method public e(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 128
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffered_snsconf_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "trans_short_link"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_f
    return v0

    :cond_10
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f
.end method

.method public f()I
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_share_content"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 103
    const/4 v0, 0x1

    .line 107
    :goto_11
    return v0

    .line 104
    :cond_12
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 105
    const/4 v0, -0x1

    goto :goto_11

    .line 107
    :cond_1c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public f(Ljava/lang/String;)J
    .registers 4

    .prologue
    .line 224
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 4

    .prologue
    .line 132
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffered_snsconf_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "device_time"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "connect_server"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "connect_server_time"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "sns_info_buffered"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
