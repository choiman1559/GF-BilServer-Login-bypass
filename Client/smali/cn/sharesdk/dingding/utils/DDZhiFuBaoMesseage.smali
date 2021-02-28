.class public Lcn/sharesdk/dingding/utils/DDZhiFuBaoMesseage;
.super Ljava/lang/Object;
.source "DDZhiFuBaoMesseage.java"

# interfaces
.implements Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;


# static fields
.field private static final MAX_WEBPAGE_URL_LENGTH:I = 0x2800


# instance fields
.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 23
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDZhiFuBaoMesseage;->url:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDZhiFuBaoMesseage;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDZhiFuBaoMesseage;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-gt v1, v2, :cond_19

    .line 24
    const/4 v0, 0x1

    .line 27
    :goto_18
    return v0

    .line 26
    :cond_19
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, url is invalid"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_18
.end method

.method public serialize(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 11
    const-string v0, "android.intent.ding.EXTRA_ZHIFUBAO_OBJECT_URL"

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDZhiFuBaoMesseage;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public type()I
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 15
    const-string v0, "android.intent.ding.EXTRA_ZHIFUBAO_OBJECT_URL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/utils/DDZhiFuBaoMesseage;->url:Ljava/lang/String;

    .line 16
    return-void
.end method
