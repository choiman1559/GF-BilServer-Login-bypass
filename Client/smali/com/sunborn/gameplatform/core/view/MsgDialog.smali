.class public Lcom/sunborn/gameplatform/core/view/MsgDialog;
.super Landroid/app/Dialog;
.source "MsgDialog.java"


# instance fields
.field private infoRelativeLayout:Landroid/widget/RelativeLayout;

.field private mInfo:Landroid/widget/TextView;

.field private mMsg:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public buildView()V
    .registers 2

    .prologue
    .line 35
    sget v0, Lcom/sunborn/sunbornplatformsdk/R$id;->textView_sunborn_platform_dialog_msg_msg:I

    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/core/view/MsgDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mMsg:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/sunborn/sunbornplatformsdk/R$id;->relativeLayout_unuse_sunborn_platform_dialog_info:I

    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/core/view/MsgDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->infoRelativeLayout:Landroid/widget/RelativeLayout;

    .line 37
    sget v0, Lcom/sunborn/sunbornplatformsdk/R$id;->textView_sunborn_platform_dialog_msg_title:I

    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/core/view/MsgDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mTitle:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/sunborn/sunbornplatformsdk/R$id;->textView_sunborn_platform_dialog_msg_info:I

    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/core/view/MsgDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mInfo:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/view/MsgDialog;->set2DefaultMsg()V

    .line 40
    return-void
.end method

.method public set2DefaultMsg()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 47
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->infoRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    return-void
.end method

.method public setFullMsg()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->infoRelativeLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 58
    return-void
.end method

.method public setInfo(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 80
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    :cond_f
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 86
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_f
    return-void
.end method

.method public setMsg(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mMsg:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 33
    :goto_4
    return-void

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mMsg:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 26
    :goto_4
    return-void

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public setTitle(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 67
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    :cond_f
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 73
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/view/MsgDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_f
    return-void
.end method
