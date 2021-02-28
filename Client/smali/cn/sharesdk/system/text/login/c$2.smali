.class Lcn/sharesdk/system/text/login/c$2;
.super Lcom/mob/tools/RxMob$Subscriber;
.source "RequestCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/c;->a(Ljava/util/HashMap;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcn/sharesdk/system/text/login/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/c;Ljava/util/HashMap;)V
    .registers 3

    .prologue
    .line 80
    iput-object p1, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    iput-object p2, p0, Lcn/sharesdk/system/text/login/c$2;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 87
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->e(Lcn/sharesdk/system/text/login/c;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 89
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->f(Lcn/sharesdk/system/text/login/c;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->f(Lcn/sharesdk/system/text/login/c;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 90
    :cond_20
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->g(Lcn/sharesdk/system/text/login/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_sms_dialog_net_error"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 91
    if-lez v0, :cond_37

    .line 92
    iget-object v1, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v1}, Lcn/sharesdk/system/text/login/c;->h(Lcn/sharesdk/system/text/login/c;)Lcn/sharesdk/system/text/login/a;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcn/sharesdk/system/text/login/a;->a(II)Lcn/sharesdk/system/text/login/utils/a;

    .line 115
    :cond_37
    :goto_37
    return-void

    .line 96
    :cond_38
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->f(Lcn/sharesdk/system/text/login/c;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 97
    iget-object v2, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->f(Lcn/sharesdk/system/text/login/c;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "recordId"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    const-string v0, ""

    :goto_5c
    invoke-static {v2, v0}, Lcn/sharesdk/system/text/login/c;->e(Lcn/sharesdk/system/text/login/c;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    const/16 v0, 0xc8

    if-eq v1, v0, :cond_ab

    .line 101
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->g(Lcn/sharesdk/system/text/login/c;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssdk_sms_dialog_error_desc_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 102
    if-gez v0, :cond_92

    .line 103
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->g(Lcn/sharesdk/system/text/login/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_sms_dialog_system_error"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 105
    :cond_92
    iget-object v1, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v1}, Lcn/sharesdk/system/text/login/c;->h(Lcn/sharesdk/system/text/login/c;)Lcn/sharesdk/system/text/login/a;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcn/sharesdk/system/text/login/a;->a(II)Lcn/sharesdk/system/text/login/utils/a;

    goto :goto_37

    .line 97
    :cond_9c
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->f(Lcn/sharesdk/system/text/login/c;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "recordId"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5c

    .line 108
    :cond_ab
    if-eq v1, v4, :cond_b7

    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$2;->a:Ljava/util/HashMap;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 109
    :cond_b7
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->i(Lcn/sharesdk/system/text/login/c;)V

    .line 114
    :goto_bc
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$2;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_37

    .line 111
    :cond_c3
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->j(Lcn/sharesdk/system/text/login/c;)V

    goto :goto_bc
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 118
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 120
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$2;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->e(Lcn/sharesdk/system/text/login/c;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 84
    return-void
.end method
