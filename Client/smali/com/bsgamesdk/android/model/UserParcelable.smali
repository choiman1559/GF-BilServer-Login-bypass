.class public Lcom/bsgamesdk/android/model/UserParcelable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x40478d728b155972L


# instance fields
.field public access_token:Ljava/lang/String;

.field public activation:Ljava/lang/String;

.field public avatar:Ljava/lang/String;

.field public expire_in:J

.field public h5_paid_download:I

.field public h5_paid_download_sameSign:I

.field public is_fast_reg:Z

.field public is_original_password:Z

.field public last_login_time:J

.field public long_expire_in:J

.field public nickname:Ljava/lang/String;

.field public original_password:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public realname_verified:I

.field public refresh_token:Ljava/lang/String;

.field public remember_passwrod:Ljava/lang/String;

.field public s_avatar:Ljava/lang/String;

.field public uid_long:J

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    iput v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download:I

    iput v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download_sameSign:I

    return-void
.end method


# virtual methods
.method public copy()Lcom/bsgamesdk/android/model/UserParcelable;
    .registers 5

    new-instance v0, Lcom/bsgamesdk/android/model/UserParcelable;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/UserParcelable;-><init>()V

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->password:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->original_password:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->original_password:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->refresh_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->refresh_token:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->activation:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->activation:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/UserParcelable;->last_login_time:J

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->last_login_time:J

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/UserParcelable;->long_expire_in:J

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->long_expire_in:J

    iget-boolean v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->is_fast_reg:Z

    iput-boolean v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->is_fast_reg:Z

    iget-boolean v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->is_original_password:Z

    iput-boolean v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->is_original_password:Z

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->remember_passwrod:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->remember_passwrod:Ljava/lang/String;

    iget v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    iput v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    iget v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download:I

    iput v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download:I

    iget v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download_sameSign:I

    iput v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download_sameSign:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserParcelable [uid_long="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", original_password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->original_password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", s_avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refresh_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->refresh_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->activation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", last_login_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/UserParcelable;->last_login_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expire_in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is_fast_reg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->is_fast_reg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is_original_password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->is_original_password:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download_sameSign:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
