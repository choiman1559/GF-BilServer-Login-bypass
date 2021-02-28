.class public Lcom/bsgamesdk/android/helper/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile f:Lcom/bsgamesdk/android/helper/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bsgamesdk/android/model/m;

.field private c:Lcom/bsgamesdk/android/model/k;

.field private d:Lcom/bsgamesdk/android/model/o;

.field private e:Lcom/bsgamesdk/android/model/n;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bsgamesdk/android/helper/d;
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/helper/d;->f:Lcom/bsgamesdk/android/helper/d;

    if-nez v0, :cond_13

    const-class v1, Lcom/bsgamesdk/android/helper/d;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/bsgamesdk/android/helper/d;->f:Lcom/bsgamesdk/android/helper/d;

    if-nez v0, :cond_12

    new-instance v0, Lcom/bsgamesdk/android/helper/d;

    invoke-direct {v0}, Lcom/bsgamesdk/android/helper/d;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/helper/d;->f:Lcom/bsgamesdk/android/helper/d;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/bsgamesdk/android/helper/d;->f:Lcom/bsgamesdk/android/helper/d;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bsgamesdk/android/helper/d;
    .registers 5

    const-class v1, Lcom/bsgamesdk/android/helper/d;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/bsgamesdk/android/helper/d;->a:Landroid/content/Context;

    new-instance v0, Lcom/bsgamesdk/android/model/m;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/d;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/d;->b:Lcom/bsgamesdk/android/model/m;

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/d;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/d;->c:Lcom/bsgamesdk/android/model/k;

    new-instance v0, Lcom/bsgamesdk/android/model/o;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/d;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/bsgamesdk/android/model/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/d;->d:Lcom/bsgamesdk/android/model/o;

    new-instance v0, Lcom/bsgamesdk/android/model/n;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/d;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/bsgamesdk/android/model/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/d;->e:Lcom/bsgamesdk/android/model/n;

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2d

    sget-object v0, Lcom/bsgamesdk/android/helper/d;->f:Lcom/bsgamesdk/android/helper/d;

    return-object v0

    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public a(Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lcom/bsgamesdk/android/model/UserParcelable;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/UserParcelable;-><init>()V

    iget-object v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    :cond_15
    if-eqz p2, :cond_19

    iput-object p2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    :cond_19
    iget-object v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    :cond_21
    iget-object v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iget-object v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->refresh_token:Ljava/lang/String;

    iget-object v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    :cond_39
    iget-object v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mLongExpires:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mLongExpires:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->long_expire_in:J

    :cond_49
    iget-object v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    iget-object v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    iget v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    iput v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    iget v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iput v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download:I

    iget v1, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    iput v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download_sameSign:I

    if-eqz p3, :cond_63

    iput-object p3, v0, Lcom/bsgamesdk/android/model/UserParcelable;->original_password:Ljava/lang/String;

    iput-object p3, v0, Lcom/bsgamesdk/android/model/UserParcelable;->password:Ljava/lang/String;

    :cond_63
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->last_login_time:J

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/d;->b:Lcom/bsgamesdk/android/model/m;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/model/m;->a(Lcom/bsgamesdk/android/model/UserParcelable;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/d;->b:Lcom/bsgamesdk/android/model/m;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    return-void
.end method

.method public a(Lcom/bsgamesdk/android/model/UserParcelable;)V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/d;->e:Lcom/bsgamesdk/android/model/n;

    invoke-virtual {v0, p1}, Lcom/bsgamesdk/android/model/n;->a(Lcom/bsgamesdk/android/model/UserParcelable;)V

    return-void
.end method

.method public a(Lcom/bsgamesdk/android/model/UserParcelable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V
    .registers 7

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/d;->b:Lcom/bsgamesdk/android/model/m;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-object v1, p1, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iget-object v1, p1, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->refresh_token:Ljava/lang/String;

    iget-wide v2, p1, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    iget-wide v2, p1, Lcom/bsgamesdk/android/model/UserParcelable;->long_expire_in:J

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->long_expire_in:J

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->last_login_time:J

    if-eqz p2, :cond_46

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    iget v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    iput v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    iget v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iput v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download:I

    iget v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    iput v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download_sameSign:I

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    :cond_46
    iget-object v1, p0, Lcom/bsgamesdk/android/helper/d;->b:Lcom/bsgamesdk/android/model/m;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/model/m;->a(Lcom/bsgamesdk/android/model/UserParcelable;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/d;->c:Lcom/bsgamesdk/android/model/k;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->a()V

    return-void
.end method

.method public b(Lcom/bsgamesdk/android/model/UserParcelable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/d;->e:Lcom/bsgamesdk/android/model/n;

    invoke-virtual {v0, p1, p2}, Lcom/bsgamesdk/android/model/n;->b(Lcom/bsgamesdk/android/model/UserParcelable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V

    return-void
.end method

.method public c(Lcom/bsgamesdk/android/model/UserParcelable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/d;->e:Lcom/bsgamesdk/android/model/n;

    invoke-virtual {v0, p1, p2}, Lcom/bsgamesdk/android/model/n;->a(Lcom/bsgamesdk/android/model/UserParcelable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V

    return-void
.end method
