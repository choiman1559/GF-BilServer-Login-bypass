.class Lcn/sharesdk/system/text/login/gui/c$4;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/gui/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/text/login/gui/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/gui/c;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/gui/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_sms_send_again"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 166
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v1}, Lcn/sharesdk/system/text/login/gui/c;->d(Lcn/sharesdk/system/text/login/gui/c;)I

    .line 167
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v1}, Lcn/sharesdk/system/text/login/gui/c;->e(Lcn/sharesdk/system/text/login/gui/c;)I

    move-result v1

    if-nez v1, :cond_43

    .line 168
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v1}, Lcn/sharesdk/system/text/login/gui/c;->f(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/sharesdk/system/text/login/utils/b;->setEnabled(Z)V

    .line 169
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v1}, Lcn/sharesdk/system/text/login/gui/c;->f(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v1

    const v2, -0xd68a02

    invoke-virtual {v1, v2}, Lcn/sharesdk/system/text/login/utils/b;->setTextColor(I)V

    .line 170
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lcn/sharesdk/system/text/login/gui/c;->a(Lcn/sharesdk/system/text/login/gui/c;I)I

    .line 171
    if-lez v0, :cond_42

    .line 172
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v1}, Lcn/sharesdk/system/text/login/gui/c;->f(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/b;->setText(I)V

    .line 186
    :cond_42
    :goto_42
    return-void

    .line 175
    :cond_43
    if-lez v0, :cond_9d

    .line 176
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v1}, Lcn/sharesdk/system/text/login/gui/c;->f(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/b;->setText(I)V

    .line 177
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/c;->f(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v0

    const v1, -0x777778

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/utils/b;->setTextColor(I)V

    .line 178
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/c;->f(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/sharesdk/system/text/login/utils/b;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/c;->f(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v2}, Lcn/sharesdk/system/text/login/gui/c;->f(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/system/text/login/utils/b;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v2}, Lcn/sharesdk/system/text/login/gui/c;->e(Lcn/sharesdk/system/text/login/gui/c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/utils/b;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_9d
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/c;->e(Lcn/sharesdk/system/text/login/gui/c;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_b0

    .line 182
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/c;->g(Lcn/sharesdk/system/text/login/gui/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    :cond_b0
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c$4;->a:Lcn/sharesdk/system/text/login/gui/c;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Lcn/sharesdk/system/text/login/gui/c;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_42
.end method
