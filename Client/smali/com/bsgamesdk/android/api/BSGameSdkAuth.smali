.class public Lcom/bsgamesdk/android/api/BSGameSdkAuth;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BACKUOSERVER:Ljava/lang/String; = "backup_server"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bsgamesdk/android/api/BSGameSdkAuth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apple_web_client_id:Ljava/lang/String;

.field public auth_name:Ljava/lang/String;

.field public h5_paid_download:I

.field public h5_paid_download_sameSign:I

.field public limit_alert_message:Ljava/lang/String;

.field public mAccessKey:Ljava/lang/String;

.field public mActivate:Z

.field public mAvatar:Ljava/lang/String;

.field public mBig_Avatar:Ljava/lang/String;

.field public mCoupon:Lcom/bsgamesdk/android/model/e;

.field public mExpires:Ljava/lang/String;

.field public mLongExpires:Ljava/lang/String;

.field public mMid:Ljava/lang/String;

.field public mNotice:Lcom/bsgamesdk/android/model/h;

.field public mRsa:Lcom/bsgamesdk/android/model/j;

.field public mUName:Ljava/lang/String;

.field public need_captch:Ljava/lang/String;

.field public open_id:Ljava/lang/String;

.field public realname_verified:I

.field public redirect_url:Ljava/lang/String;

.field public remind_status:Ljava/lang/String;

.field public tour_limit_message:Ljava/lang/String;

.field public tour_limit_status:I

.field public user_limit_status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth$1;

    invoke-direct {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth$1;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    iput v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iput v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    iput v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iput v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->need_captch:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mLongExpires:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_42

    const/4 v0, 0x1

    :cond_42
    iput-boolean v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z

    const-class v0, Lcom/bsgamesdk/android/model/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/j;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    const-class v0, Lcom/bsgamesdk/android/model/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/e;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mCoupon:Lcom/bsgamesdk/android/model/e;

    const-class v0, Lcom/bsgamesdk/android/model/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/h;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mNotice:Lcom/bsgamesdk/android/model/h;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_status:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_message:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->remind_status:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->auth_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->open_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->apple_web_client_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->redirect_url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->user_limit_status:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->limit_alert_message:Ljava/lang/String;

    return-void
.end method

.method public static checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const/16 v1, -0x2712

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(I)V

    throw v0

    :cond_e
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_25

    :cond_1d
    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const/16 v1, -0x2711

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(I)V

    throw v0

    :cond_25
    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static checkJSONResponse(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const-string v0, "code"

    const/16 v1, -0xb

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1e

    const-string v1, "server_message"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    const-string v3, "invalid response"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v3

    :cond_1e
    return-void
.end method

.method public static mergeMyUserinfoCache(Lcom/bsgamesdk/android/model/UserParcelable;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 5

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-direct {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;-><init>()V

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/UserParcelable;->long_expire_in:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mLongExpires:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->activation:Ljava/lang/String;

    if-nez v1, :cond_35

    const-string v1, "true"

    iput-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->activation:Ljava/lang/String;

    :cond_35
    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->activation:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z

    iget v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    iput v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    iget v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download:I

    iput v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iget v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download_sameSign:I

    iput v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    return-object v0
.end method

.method public static mergeMyUserinfoCacheWithUser(Lcom/bsgamesdk/android/model/UserParcelable;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 5

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-direct {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;-><init>()V

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/UserParcelable;->long_expire_in:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mLongExpires:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->activation:Ljava/lang/String;

    if-nez v1, :cond_35

    const-string v1, "true"

    iput-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->activation:Ljava/lang/String;

    :cond_35
    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->activation:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z

    iget v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    iput v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    iget v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download:I

    iput v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iget v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download_sameSign:I

    iput v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    return-object v0
.end method

.method public static mergeTouristUserinfoCacheWithUser(Lcom/bsgamesdk/android/model/TouristUserParceable;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 5

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-direct {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;-><init>()V

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->expire_in:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->long_expire_in:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mLongExpires:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->s_avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->activation:Ljava/lang/String;

    if-nez v1, :cond_35

    const-string v1, "true"

    iput-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->activation:Ljava/lang/String;

    :cond_35
    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->activation:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z

    return-object v0
.end method

.method public static parseBooleanResponse(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_9

    const/4 v0, 0x1

    return v0

    :catch_9
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseCheckBiliFreeDataUserResponse(Ljava/lang/String;)Lcom/bsgamesdk/android/model/l;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "ip"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pip"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "flag"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "product"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "mCode"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/bsgamesdk/android/model/l;

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/model/l;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2a} :catch_2b

    return-object v0

    :catch_2b
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseGetCouponResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/bsgamesdk/android/model/e;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const/4 v8, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "has_coupon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v1, "coupon_no"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1d
    move-object v0, v8

    :goto_1e
    return-object v0

    :cond_1f
    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "item_name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "item_desc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "coupon_status"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "used_begin_time"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "used_end_time"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/bsgamesdk/android/model/e;

    invoke-direct/range {v0 .. v7}, Lcom/bsgamesdk/android/model/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_48} :catch_49

    goto :goto_1e

    :catch_49
    move-exception v0

    move-object v0, v8

    goto :goto_1e
.end method

.method public static parseGetFreeUrlResponse(Ljava/lang/String;)Lcom/bsgamesdk/android/model/l;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string v1, "ip"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pip"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "flag"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "product"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "mCode"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "target_url"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/bsgamesdk/android/model/l;

    invoke-direct/range {v0 .. v6}, Lcom/bsgamesdk/android/model/l;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :goto_38
    return-object v0

    :cond_39
    new-instance v0, Lcom/bsgamesdk/android/model/l;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/l;-><init>()V
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_38

    :catch_3f
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseGetNoticeResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/bsgamesdk/android/model/h;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "open_login"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "has_notice"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v1, "image_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "start_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v1, "end_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    new-instance v1, Lcom/bsgamesdk/android/model/h;

    invoke-direct/range {v1 .. v13}, Lcom/bsgamesdk/android/model/h;-><init>(ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_49} :catch_4a

    return-object v1

    :catch_4a
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseGetStartCaptchResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/bsgamesdk/android/model/b;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "captcha_type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "image_token"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "challenge"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "gt_user_id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "gs"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "gt"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ctoken"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/bsgamesdk/android/model/b;

    invoke-direct/range {v0 .. v10}, Lcom/bsgamesdk/android/model/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_48} :catch_49

    return-object v0

    :catch_49
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parsePayConditionResponse(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "is_adult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v0

    return v0

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseResponse4Water(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseSmsSendResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "captcha_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    return-object v0

    :catch_10
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseVerifyCouponResponse(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseVerifyOrderResponse(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "paypal_status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    return v0

    :catch_c
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseVoidResponse(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public mergeMyInfo(Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V
    .registers 3

    const-string v0, "\u2196(^\u03c9^)\u2197"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    const-string v0, "http://static.biligame.net/game-mobile-sdk/userinfo/webcome_head_default.png"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    const-string v0, "http://static.biligame.net/game-mobile-sdk/userinfo/webcome_head_default.png"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    if-eqz p1, :cond_92

    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    :cond_1a
    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    :cond_26
    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    :cond_32
    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    :cond_3e
    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    :cond_4a
    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->need_captch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->need_captch:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->need_captch:Ljava/lang/String;

    :cond_56
    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_message:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_message:Ljava/lang/String;

    :cond_62
    iget v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_status:I

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_status:I

    iget v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    iget v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iget v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->remind_status:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->remind_status:Ljava/lang/String;

    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->auth_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->auth_name:Ljava/lang/String;

    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->user_limit_status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->user_limit_status:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->user_limit_status:Ljava/lang/String;

    :cond_86
    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->limit_alert_message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    iget-object v0, p1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->limit_alert_message:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->limit_alert_message:Ljava/lang/String;

    :cond_92
    return-void
.end method

.method public parseActivateResponse(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseAppleRenewResponse(Ljava/lang/String;Landroid/content/Context;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    const-string v1, "access_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseExpires(Lorg/json/JSONObject;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    const-string v1, "timestamp"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "h5_paid_download"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    const-string v3, "h5_paid_download_sign"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_75

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "requestId"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uid"

    iget-object v4, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "timestamp"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "h5_paid_download"

    iget v2, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/bsgamesdk/android/utils/i;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    const/4 v0, 0x1

    :goto_73
    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_75} :catch_78

    :cond_75
    return-void

    :cond_76
    const/4 v0, 0x0

    goto :goto_73

    :catch_78
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseBuildOrderResponse(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v0, "code"

    const/16 v1, -0xb

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const v0, 0xc350b

    if-ne v1, v0, :cond_33

    const-string v0, "server_message"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "message"

    const-string v3, "invalid response"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "backup_server"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    throw v0
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_33
    :try_start_33
    invoke-static {v4}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v0, "cashier_url"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "order_no"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "wx_appid"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, ""
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_4a} :catch_2c

    :try_start_4a
    const-string v5, "requestId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4f} :catch_60
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_4f} :catch_2c

    move-result-object v0

    :goto_50
    const/4 v4, 0x4

    :try_start_51
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_5f} :catch_2c

    return-object v4

    :catch_60
    move-exception v4

    goto :goto_50
.end method

.method public parseExpires(Lorg/json/JSONObject;Landroid/content/Context;)Ljava/lang/String;
    .registers 13

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    add-long/2addr v2, v0

    const-string v4, "expires"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3

    div-long/2addr v4, v6

    add-long v8, v4, v0

    iput-object v3, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mLongExpires:Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gez v0, :cond_99

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    invoke-direct {v0, p2}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;)V

    const-string v1, "1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    const-string v5, "expires_91001"

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/api/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "result"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "local_check"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_check"

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    const-string v1, ""

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content"

    const-string v1, "expires_91001"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "PaymentActivity"

    const-string v3, "check"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_99
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseGetCountry(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "countryList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "list"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_45

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "cname"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "country_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v6, Lcom/bsgamesdk/android/model/d;

    invoke-direct {v6, v4, v5, v3}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_45
    if-eqz v2, :cond_57

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_57

    sget-object v0, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_57} :catch_58

    :cond_57
    return-void

    :catch_58
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseLoginFail(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "need_captch"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseLoginMinorMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "limit_alert_message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseLoginMinorstatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "limit_alert_status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseLoginRSATimeOut(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "rsa_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v1, "code"

    const/16 v2, -0x296

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "server_message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    const-string v4, "invalid response"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v4
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_33
    :try_start_33
    new-instance v2, Lcom/bsgamesdk/android/model/j;

    invoke-direct {v2}, Lcom/bsgamesdk/android/model/j;-><init>()V

    const-string v3, "-----BEGIN PUBLIC KEY-----"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "-----END PUBLIC KEY-----"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/bsgamesdk/android/model/j;->b:Ljava/lang/String;

    const-string v1, "hash"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/bsgamesdk/android/model/j;->a:Ljava/lang/String;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/bsgamesdk/android/model/j;->c:I

    iput-object v2, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_60} :catch_2c

    return-void
.end method

.method public parseLoginResponse(Ljava/lang/String;Landroid/content/Context;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const v8, 0x7a121

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_5
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v1, "code"

    const/16 v3, -0xb

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, -0x1f4

    if-ne v1, v3, :cond_37

    const-string v0, "server_message"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "message"

    const-string v3, "invalid response"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "backup_server"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    throw v0
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_30} :catch_30

    :catch_30
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_37
    if-eqz v1, :cond_4f

    if-eq v1, v8, :cond_4f

    :try_start_3b
    const-string v0, "server_message"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "message"

    const-string v3, "invalid response"

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v3

    :cond_4f
    const-string v3, "openId"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->open_id:Ljava/lang/String;

    const-string v3, "need_captch"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->need_captch:Ljava/lang/String;

    const-string v3, "uid"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    const-string v3, "access_key"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    invoke-virtual {p0, v4, p2}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseExpires(Lorg/json/JSONObject;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    const-string v3, "timestamp"

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "requestId"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "h5_paid_download"

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    const/4 v6, -0x1

    iput v6, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    const-string v6, "h5_paid_download_sign"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_cd

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "requestId"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "uid"

    iget-object v7, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "timestamp"

    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "h5_paid_download"

    iget v5, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/bsgamesdk/android/utils/i;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d2

    move v3, v0

    :goto_cb
    iput v3, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    :cond_cd
    if-eq v1, v8, :cond_d4

    :goto_cf
    iput-boolean v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z
    :try_end_d1
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_d1} :catch_30

    return-void

    :cond_d2
    move v3, v2

    goto :goto_cb

    :cond_d4
    move v0, v2

    goto :goto_cf
.end method

.method public parseMyInfoResponse(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v1, "code"

    const/16 v3, -0xb

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, -0x1f4

    if-ne v1, v3, :cond_34

    const-string v0, "server_message"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "message"

    const-string v3, "invalid response"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "backup_server"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    throw v0
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_34
    :try_start_34
    invoke-static {v4}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "uid"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    const-string v1, "uname"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    const-string v1, "face"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    const-string v1, "s_face"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    const-string v1, "is_bind"

    const/4 v3, 0x1

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_fb

    move v1, v0

    :goto_63
    iput-boolean v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z

    const-string v1, "tour_limit_status"

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_status:I

    const-string v1, "tour_limit_message"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_message:Ljava/lang/String;

    const-string v1, "user_limit_status"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->user_limit_status:Ljava/lang/String;

    const-string v1, "limit_alert_message"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->limit_alert_message:Ljava/lang/String;

    const-string v1, "realname_verified"

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    const-string v1, "timestamp"

    const-string v3, ""

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "requestId"

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "h5_paid_download"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    const/4 v5, -0x1

    iput v5, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    const-string v5, "h5_paid_download_sign"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e6

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "requestId"

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "uid"

    iget-object v7, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "timestamp"

    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "h5_paid_download"

    iget v3, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/bsgamesdk/android/utils/i;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_fe

    :goto_e4
    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    :cond_e6
    const-string v0, "remind_status"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->remind_status:Ljava/lang/String;

    const-string v0, "auth_name"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->auth_name:Ljava/lang/String;
    :try_end_fa
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_fa} :catch_2d

    return-void

    :cond_fb
    move v1, v2

    goto/16 :goto_63

    :cond_fe
    move v0, v2

    goto :goto_e4
.end method

.method public parseNewRSAResponse(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "code"

    const/16 v2, -0xb

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v2, "publickey"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    const-string v2, "server_message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    const-string v4, "invalid response"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v4
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_36
    :try_start_36
    new-instance v1, Lcom/bsgamesdk/android/model/j;

    invoke-direct {v1}, Lcom/bsgamesdk/android/model/j;-><init>()V

    const-string v3, "-----BEGIN PUBLIC KEY-----"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-----END PUBLIC KEY-----"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bsgamesdk/android/model/j;->b:Ljava/lang/String;

    const-string v2, "hash"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bsgamesdk/android/model/j;->a:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bsgamesdk/android/model/j;->c:I

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_63} :catch_2f

    return-void
.end method

.method public parseNewRSAV2Response(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v0, "code"

    const/16 v1, -0xb

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v0, -0x1f4

    if-ne v1, v0, :cond_32

    const-string v0, "server_message"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "message"

    const-string v3, "invalid response"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "backup_server"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_32
    :try_start_32
    invoke-static {v4}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v0, "rsa_key"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v0, "server_message"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "message"

    const-string v3, "invalid response"

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v3

    :cond_55
    new-instance v1, Lcom/bsgamesdk/android/model/j;

    invoke-direct {v1}, Lcom/bsgamesdk/android/model/j;-><init>()V

    const-string v2, "-----BEGIN PUBLIC KEY-----"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-----END PUBLIC KEY-----"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bsgamesdk/android/model/j;->b:Ljava/lang/String;

    const-string v0, "hash"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bsgamesdk/android/model/j;->a:Ljava/lang/String;

    const-string v0, "timestamp"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bsgamesdk/android/model/j;->c:I

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_82} :catch_2b

    return-void
.end method

.method public parseOrderResumeResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseQueryOrderResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "pay_status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    return-object v0

    :catch_e
    move-exception v0

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const v1, -0x18703

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(I)V

    throw v0
.end method

.method public parseRSAResponse(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v0, "code"

    const/16 v1, -0xb

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v0, -0x1f4

    if-ne v1, v0, :cond_32

    const-string v0, "server_message"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "message"

    const-string v3, "invalid response"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "backup_server"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_32
    :try_start_32
    invoke-static {v4}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v0, "rsa_key"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v0, "server_message"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "message"

    const-string v3, "invalid response"

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v3

    :cond_55
    new-instance v1, Lcom/bsgamesdk/android/model/j;

    invoke-direct {v1}, Lcom/bsgamesdk/android/model/j;-><init>()V

    const-string v2, "-----BEGIN PUBLIC KEY-----"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-----END PUBLIC KEY-----"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bsgamesdk/android/model/j;->b:Ljava/lang/String;

    const-string v0, "hash"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bsgamesdk/android/model/j;->a:Ljava/lang/String;

    const-string v0, "timestamp"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bsgamesdk/android/model/j;->c:I

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_82} :catch_2b

    return-void
.end method

.method public parseRefreshTokenResponse(Ljava/lang/String;Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "access_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseExpires(Lorg/json/JSONObject;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseRegisterResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_key"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v3, p1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    iput-object v2, v3, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    new-instance v4, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v4, p1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/bsgamesdk/android/model/m;->a(Lcom/bsgamesdk/android/model/UserParcelable;)V

    const-string v3, "timestamp"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "requestId"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "h5_paid_download"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    const/4 v5, -0x1

    iput v5, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    const-string v5, "h5_paid_download_sign"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_82

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "requestId"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "uid"

    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "timestamp"

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "h5_paid_download"

    iget v4, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/bsgamesdk/android/utils/i;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a0

    const/4 v0, 0x1

    :goto_80
    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    :cond_82
    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-direct {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8f

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    :cond_8f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_97

    iput-object v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    :cond_97
    iget v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iput v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iget v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    iput v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9f} :catch_a2

    return-object v0

    :cond_a0
    const/4 v0, 0x0

    goto :goto_80

    :catch_a2
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseRegisterUnameResponse(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v1, p1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    new-instance v2, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v2, p1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/bsgamesdk/android/model/m;->a(Lcom/bsgamesdk/android/model/UserParcelable;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25

    return-object v0

    :catch_25
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseRenewResponse(Ljava/lang/String;Landroid/content/Context;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const v3, 0x7a121

    :try_start_3
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v0, "code"

    const/16 v2, -0xb

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2e

    if-eq v0, v3, :cond_2e

    const-string v2, "server_message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    const-string v4, "invalid response"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v4
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_27} :catch_27

    :catch_27
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2e
    if-eq v0, v3, :cond_4a

    const/4 v0, 0x1

    :goto_31
    :try_start_31
    iput-boolean v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z

    const-string v0, "uid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    const-string v0, "access_key"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseExpires(Lorg/json/JSONObject;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_49} :catch_27

    return-void

    :cond_4a
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public parseThridBindAcountResponse(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    const-string v1, "uname"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseThridConfigResponse(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkJSONResponse(Lorg/json/JSONObject;)V

    const-string v1, "apple_web_client_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->apple_web_client_id:Ljava/lang/String;

    const-string v1, "redirect_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->redirect_url:Ljava/lang/String;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseTouristLoginResponse(Ljava/lang/String;Landroid/content/Context;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const v3, 0x7a121

    :try_start_3
    invoke-static {p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    const-string v1, "access_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseExpires(Lorg/json/JSONObject;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    const-string v1, "code"

    const/16 v2, -0xb

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_44

    if-eq v1, v3, :cond_44

    const-string v2, "server_message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    const-string v4, "invalid response"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v4
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_44
    if-eq v1, v3, :cond_4a

    const/4 v0, 0x1

    :goto_47
    :try_start_47
    iput-boolean v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_49} :catch_3d

    return-void

    :cond_4a
    const/4 v0, 0x0

    goto :goto_47
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BSGameSdkAuth [mMid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccessKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAvatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBig_Avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActivate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRsa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoupon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mCoupon:Lcom/bsgamesdk/android/model/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mNotice:Lcom/bsgamesdk/android/model/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", need_captch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->need_captch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tour_limit_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tour_limit_message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->need_captch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mLongExpires:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z

    if-eqz v0, :cond_78

    const/4 v0, 0x1

    :goto_2d
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mCoupon:Lcom/bsgamesdk/android/model/e;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mNotice:Lcom/bsgamesdk/android/model/h;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->remind_status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->auth_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->open_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->apple_web_client_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->redirect_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->user_limit_status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->limit_alert_message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_78
    const/4 v0, 0x0

    goto :goto_2d
.end method
