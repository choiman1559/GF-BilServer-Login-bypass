.class public Lcom/bsgamesdk/android/model/TouristUserParceable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x691cda19e9cd53a2L


# instance fields
.field public access_token:Ljava/lang/String;

.field public activation:Ljava/lang/String;

.field public avatar:Ljava/lang/String;

.field public expire_in:J

.field public is_fast_reg:Z

.field public is_login:Z

.field public last_login_time:J

.field public long_expire_in:J

.field public nickname:Ljava/lang/String;

.field public original_password:Ljava/lang/String;

.field public realname_verified:I

.field public refresh_token:Ljava/lang/String;

.field public s_avatar:Ljava/lang/String;

.field public uid_long:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->realname_verified:I

    return-void
.end method


# virtual methods
.method public copy()Lcom/bsgamesdk/android/model/TouristUserParceable;
    .registers 5

    new-instance v0, Lcom/bsgamesdk/android/model/TouristUserParceable;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/TouristUserParceable;-><init>()V

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->original_password:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->original_password:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->avatar:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->s_avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->s_avatar:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->refresh_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->refresh_token:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->activation:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->activation:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->last_login_time:J

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->last_login_time:J

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->expire_in:J

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->expire_in:J

    iget-boolean v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->is_fast_reg:Z

    iput-boolean v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->is_fast_reg:Z

    iget-boolean v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->is_login:Z

    iput-boolean v1, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->is_login:Z

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->long_expire_in:J

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->long_expire_in:J

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouristUserParceable [uid_long="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", original_password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->original_password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", s_avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->s_avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refresh_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->refresh_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->activation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", last_login_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->last_login_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expire_in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->expire_in:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is_fast_reg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->is_fast_reg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is_login="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bsgamesdk/android/model/TouristUserParceable;->is_login:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
