.class public abstract Lcom/bsgamesdk/android/api/g;
.super Ljava/lang/Thread;


# instance fields
.field public final a:J

.field public b:Z

.field public c:Landroid/os/Handler;

.field protected d:Landroid/content/Context;

.field protected e:Lcom/bsgamesdk/android/model/UserParcelable;

.field protected f:Lcom/bsgamesdk/android/model/n;

.field protected g:Lcom/bsgamesdk/android/api/h;

.field protected h:Lcom/bsgamesdk/android/model/m;

.field protected i:Ljava/lang/String;

.field protected j:Lcom/bsgamesdk/android/model/TouristUserParceable;

.field protected k:Lcom/bsgamesdk/android/model/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bsgamesdk/android/model/TouristUserParceable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/bsgamesdk/android/api/g;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/api/g;->b:Z

    const-string v0, "1"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/g;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/bsgamesdk/android/api/g;->d:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/bsgamesdk/android/model/TouristUserParceable;->copy()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/g;->j:Lcom/bsgamesdk/android/model/TouristUserParceable;

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    invoke-direct {v0, p1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/g;->k:Lcom/bsgamesdk/android/model/k;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/g;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bsgamesdk/android/model/UserParcelable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/bsgamesdk/android/api/g;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/api/g;->b:Z

    const-string v0, "1"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/g;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/bsgamesdk/android/api/g;->d:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/bsgamesdk/android/model/UserParcelable;->copy()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/g;->e:Lcom/bsgamesdk/android/model/UserParcelable;

    new-instance v0, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v0, p1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/g;->h:Lcom/bsgamesdk/android/model/m;

    new-instance v0, Lcom/bsgamesdk/android/model/n;

    invoke-direct {v0, p1}, Lcom/bsgamesdk/android/model/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/g;->f:Lcom/bsgamesdk/android/model/n;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/g;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/api/g;->c:Landroid/os/Handler;

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk;->mAccountCallBack:Lcom/bsgamesdk/android/callbacklistener/AccountCallBackListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bsgamesdk/android/api/g;->c:Landroid/os/Handler;

    new-instance v1, Lcom/bsgamesdk/android/api/g$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/api/g$1;-><init>(Lcom/bsgamesdk/android/api/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method protected a(Lcom/bsgamesdk/android/model/TouristUserParceable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V
    .registers 7

    iget-object v0, p0, Lcom/bsgamesdk/android/api/g;->k:Lcom/bsgamesdk/android/model/k;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    iget-object v1, p1, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iget-object v1, p1, Lcom/bsgamesdk/android/model/TouristUserParceable;->refresh_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->refresh_token:Ljava/lang/String;

    iget-wide v2, p1, Lcom/bsgamesdk/android/model/TouristUserParceable;->expire_in:J

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->expire_in:J

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->last_login_time:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->is_login:Z

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    :cond_2b
    if-eqz p2, :cond_58

    iget-object v1, p0, Lcom/bsgamesdk/android/api/g;->k:Lcom/bsgamesdk/android/model/k;

    const-string v2, "nickname"

    iget-object v3, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bsgamesdk/android/model/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/api/g;->k:Lcom/bsgamesdk/android/model/k;

    const-string v2, "avatar"

    iget-object v3, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bsgamesdk/android/model/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/api/g;->k:Lcom/bsgamesdk/android/model/k;

    const-string v2, "s_avatar"

    iget-object v3, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bsgamesdk/android/model/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->avatar:Ljava/lang/String;

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->s_avatar:Ljava/lang/String;

    iget v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    iput v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->realname_verified:I

    :cond_58
    iget-object v1, p0, Lcom/bsgamesdk/android/api/g;->k:Lcom/bsgamesdk/android/model/k;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/model/k;->a(Lcom/bsgamesdk/android/model/TouristUserParceable;)V

    return-void
.end method

.method protected a(Lcom/bsgamesdk/android/model/UserParcelable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V
    .registers 9

    iget-object v0, p0, Lcom/bsgamesdk/android/api/g;->h:Lcom/bsgamesdk/android/model/m;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    iget-object v1, p0, Lcom/bsgamesdk/android/api/g;->e:Lcom/bsgamesdk/android/model/UserParcelable;

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_11

    :goto_10
    return-void

    :cond_11
    iget-object v1, p1, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iget-object v1, p1, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->refresh_token:Ljava/lang/String;

    iget-wide v2, p1, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    :cond_2d
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->last_login_time:J

    if-eqz p2, :cond_45

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    iget v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    iput v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    :cond_45
    iget-object v1, p0, Lcom/bsgamesdk/android/api/g;->h:Lcom/bsgamesdk/android/model/m;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/model/m;->a(Lcom/bsgamesdk/android/model/UserParcelable;)V

    goto :goto_10
.end method

.method public b()V
    .registers 2

    invoke-virtual {p0}, Lcom/bsgamesdk/android/api/g;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/api/g;->b:Z

    :cond_9
    return-void
.end method

.method public b(Lcom/bsgamesdk/android/model/UserParcelable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V
    .registers 9

    iget-object v0, p0, Lcom/bsgamesdk/android/api/g;->h:Lcom/bsgamesdk/android/model/m;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    iget-object v1, p0, Lcom/bsgamesdk/android/api/g;->e:Lcom/bsgamesdk/android/model/UserParcelable;

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_11

    :goto_10
    return-void

    :cond_11
    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    :cond_21
    iget-object v1, p1, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    if-eqz v1, :cond_2d

    iget-object v1, p1, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    :cond_2d
    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    :cond_35
    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->refresh_token:Ljava/lang/String;

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mLongExpires:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->long_expire_in:J

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->last_login_time:J

    iget v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    iput v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    iget v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iput v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download:I

    iget v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    iput v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download_sameSign:I

    iget-object v1, p0, Lcom/bsgamesdk/android/api/g;->h:Lcom/bsgamesdk/android/model/m;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/model/m;->a(Lcom/bsgamesdk/android/model/UserParcelable;)V

    goto :goto_10
.end method
