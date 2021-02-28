.class public Lcn/sharesdk/yixin/utils/YXVideoMessageData;
.super Ljava/lang/Object;
.source "YXVideoMessageData.java"

# interfaces
.implements Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;


# instance fields
.field public videoLowBandUrl:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataType()Lcn/sharesdk/yixin/utils/YXMessage$MessageType;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->VIDEO:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    return-object v0
.end method

.method public read(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 29
    const-string v0, "_yixinVideoMessageData_videoUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    .line 30
    const-string v0, "_yixinVideoMessageData_videoLowBandUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoLowBandUrl:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public verifyData()Z
    .registers 5

    .prologue
    const/16 v2, 0x2800

    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoLowBandUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 13
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "videoUrl videoLowBandUrl is all blank"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 25
    :goto_1e
    return v0

    .line 17
    :cond_1f
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_54

    .line 18
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoUrl.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">10240"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1e

    .line 21
    :cond_54
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoLowBandUrl:Ljava/lang/String;

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoLowBandUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_89

    .line 22
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoLowBandUrl.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoLowBandUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">10240"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1e

    .line 25
    :cond_89
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public write(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const-string v0, "_yixinVideoMessageData_videoUrl"

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "_yixinVideoMessageData_videoLowBandUrl"

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoLowBandUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method
