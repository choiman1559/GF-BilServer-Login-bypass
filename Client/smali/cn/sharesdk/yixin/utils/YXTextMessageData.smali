.class public Lcn/sharesdk/yixin/utils/YXTextMessageData;
.super Ljava/lang/Object;
.source "YXTextMessageData.java"

# interfaces
.implements Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcn/sharesdk/yixin/utils/YXTextMessageData;->text:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public dataType()Lcn/sharesdk/yixin/utils/YXMessage$MessageType;
    .registers 2

    .prologue
    .line 34
    sget-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->TEXT:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    return-object v0
.end method

.method public read(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 26
    const-string v0, "_yixinTextMessageData_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/YXTextMessageData;->text:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public verifyData()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 18
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXTextMessageData;->text:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXTextMessageData;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXTextMessageData;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_40

    .line 19
    :cond_17
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/yixin/utils/YXTextMessageData;->text:Ljava/lang/String;

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

    .line 22
    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x1

    goto :goto_3f
.end method

.method public write(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 30
    const-string v0, "_yixinTextMessageData_text"

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXTextMessageData;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method
