.class public Lcn/sharesdk/wechat/utils/WXMiniProgramObject;
.super Ljava/lang/Object;
.source "WXMiniProgramObject.java"

# interfaces
.implements Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;


# instance fields
.field public path:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public webpageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 5

    .prologue
    const/16 v2, 0x2800

    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_23

    .line 33
    :cond_17
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, webpageUrl is invalid"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 41
    :goto_22
    return v0

    .line 36
    :cond_23
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_43

    .line 38
    :cond_37
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, webpageUrl is invalid"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_22

    .line 41
    :cond_43
    const/4 v0, 0x1

    goto :goto_22
.end method

.method public serialize(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 14
    const-string v0, "_wxminiprogram_webpageurl"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v0, "_wxminiprogram_username"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v0, "_wxminiprogram_path"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->path:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public type()I
    .registers 2

    .prologue
    .line 26
    const/16 v0, 0x24

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 20
    const-string v0, "_wxminiprogram_webpageurl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 21
    const-string v0, "_wxminiprogram_username"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    .line 22
    const-string v0, "_wxminiprogram_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->path:Ljava/lang/String;

    .line 23
    return-void
.end method
