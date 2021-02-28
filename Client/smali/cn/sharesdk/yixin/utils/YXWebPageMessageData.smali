.class public Lcn/sharesdk/yixin/utils/YXWebPageMessageData;
.super Ljava/lang/Object;
.source "YXWebPageMessageData.java"

# interfaces
.implements Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;


# instance fields
.field public webPageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public dataType()Lcn/sharesdk/yixin/utils/YXMessage$MessageType;
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->WEB_PAGE:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    return-object v0
.end method

.method public read(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 32
    const-string v0, "_yxWebPageMessageData_webPageUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public verifyData()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 18
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 19
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "webPageUrl is blank"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 28
    :goto_14
    return v0

    .line 23
    :cond_15
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_48

    .line 24
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webPageUrl.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

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

    goto :goto_14

    .line 28
    :cond_48
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public write(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const-string v0, "_yxWebPageMessageData_webPageUrl"

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
