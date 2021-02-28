.class public Lcom/bsgamesdk/android/model/n;
.super Lcom/bsgamesdk/android/model/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "userinfoCache"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bsgamesdk/android/model/g;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/bsgamesdk/android/model/UserParcelable;)V
    .registers 5

    invoke-virtual {p0}, Lcom/bsgamesdk/android/model/n;->c()Lcom/bsgamesdk/android/model/UserinfoCache;

    move-result-object v0

    iget-object v1, v0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoList:Ljava/util/Map;

    iget-object v2, p1, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/model/n;->a(Lcom/bsgamesdk/android/model/UserinfoCache;)V

    return-void
.end method

.method public a(Lcom/bsgamesdk/android/model/UserParcelable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V
    .registers 6

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iput-object v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    :cond_14
    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iput-object v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->refresh_token:Ljava/lang/String;

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    :cond_28
    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mLongExpires:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mLongExpires:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->long_expire_in:J

    :cond_38
    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    :cond_48
    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iput-object v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iput-object v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    iget v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    iput v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->last_login_time:J

    iget v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iput v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download:I

    iget v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    iput v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download_sameSign:I

    invoke-virtual {p0}, Lcom/bsgamesdk/android/model/n;->c()Lcom/bsgamesdk/android/model/UserinfoCache;

    move-result-object v0

    iget-object v1, v0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoList:Ljava/util/Map;

    iget-object v2, p1, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/model/n;->a(Lcom/bsgamesdk/android/model/UserinfoCache;)V

    return-void
.end method

.method public a(Lcom/bsgamesdk/android/model/UserinfoCache;)V
    .registers 4

    invoke-static {p1}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userinfo_cache"

    invoke-virtual {p0, v1, v0}, Lcom/bsgamesdk/android/model/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bsgamesdk/android/model/UserParcelable;)V
    .registers 6

    invoke-virtual {p0}, Lcom/bsgamesdk/android/model/n;->c()Lcom/bsgamesdk/android/model/UserinfoCache;

    move-result-object v0

    iget-object v1, v0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoList:Ljava/util/Map;

    iget-object v2, p2, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/model/n;->a(Lcom/bsgamesdk/android/model/UserinfoCache;)V

    return-void
.end method

.method public b(Lcom/bsgamesdk/android/model/UserParcelable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V
    .registers 7

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iput-object v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iput-object v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->refresh_token:Ljava/lang/String;

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    :cond_18
    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mLongExpires:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mLongExpires:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->long_expire_in:J

    :cond_28
    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    :cond_38
    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iput-object v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    iget-object v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iput-object v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->last_login_time:J

    iget v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    iput v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    iget v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iput v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download:I

    iget v0, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    iput v0, p1, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download_sameSign:I

    invoke-virtual {p0}, Lcom/bsgamesdk/android/model/n;->c()Lcom/bsgamesdk/android/model/UserinfoCache;

    move-result-object v0

    iget-object v1, v0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoUidList:Ljava/util/Map;

    iget-wide v2, p1, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/model/n;->a(Lcom/bsgamesdk/android/model/UserinfoCache;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/bsgamesdk/android/model/UserParcelable;)V
    .registers 5

    invoke-virtual {p0}, Lcom/bsgamesdk/android/model/n;->c()Lcom/bsgamesdk/android/model/UserinfoCache;

    move-result-object v0

    iget-object v1, v0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoUidList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/model/n;->a(Lcom/bsgamesdk/android/model/UserinfoCache;)V

    return-void
.end method

.method public c()Lcom/bsgamesdk/android/model/UserinfoCache;
    .registers 2

    const-string v0, "userinfo_cache"

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/model/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/UserinfoCache;

    if-nez v0, :cond_13

    new-instance v0, Lcom/bsgamesdk/android/model/UserinfoCache;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/UserinfoCache;-><init>()V

    :cond_13
    return-object v0
.end method
