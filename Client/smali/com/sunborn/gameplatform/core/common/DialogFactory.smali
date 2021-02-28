.class public Lcom/sunborn/gameplatform/core/common/DialogFactory;
.super Ljava/lang/Object;
.source "DialogFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;)Landroid/app/Dialog;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    .prologue
    .line 12
    sget-object v0, Lcom/sunborn/gameplatform/core/common/DialogFactory$1;->$SwitchMap$com$sunborn$gameplatform$core$common$DialogFactory$DialogType:[I

    invoke-virtual {p1}, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 18
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    :goto_10
    return-object v0

    .line 14
    :pswitch_11
    invoke-static {p0}, Lcom/sunborn/gameplatform/core/common/DialogFactory;->createLoadingDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_10

    .line 16
    :pswitch_16
    invoke-static {p0}, Lcom/sunborn/gameplatform/core/common/DialogFactory;->createMsgDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_10

    .line 12
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method private static createLoadingDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/sunborn/gameplatform/core/view/LoadingDialog;

    sget v1, Lcom/sunborn/sunbornplatformsdk/R$style;->SunbornPlatformDialog:I

    invoke-direct {v0, p0, v1}, Lcom/sunborn/gameplatform/core/view/LoadingDialog;-><init>(Landroid/content/Context;I)V

    .line 32
    .local v0, "mLoadingDialog":Lcom/sunborn/gameplatform/core/view/LoadingDialog;
    sget v1, Lcom/sunborn/sunbornplatformsdk/R$layout;->sunborn_platform_dialog_loading:I

    invoke-virtual {v0, v1}, Lcom/sunborn/gameplatform/core/view/LoadingDialog;->setContentView(I)V

    .line 33
    invoke-virtual {v0, v2}, Lcom/sunborn/gameplatform/core/view/LoadingDialog;->setCancelable(Z)V

    .line 34
    invoke-virtual {v0, v2}, Lcom/sunborn/gameplatform/core/view/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/view/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 36
    return-object v0
.end method

.method private static createMsgDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    new-instance v0, Lcom/sunborn/gameplatform/core/view/MsgDialog;

    sget v1, Lcom/sunborn/sunbornplatformsdk/R$style;->SunbornPlatformDialog:I

    invoke-direct {v0, p0, v1}, Lcom/sunborn/gameplatform/core/view/MsgDialog;-><init>(Landroid/content/Context;I)V

    .line 24
    .local v0, "mMsgDialog":Lcom/sunborn/gameplatform/core/view/MsgDialog;
    sget v1, Lcom/sunborn/sunbornplatformsdk/R$layout;->sunborn_platform_dailog_msg:I

    invoke-virtual {v0, v1}, Lcom/sunborn/gameplatform/core/view/MsgDialog;->setContentView(I)V

    .line 25
    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/view/MsgDialog;->buildView()V

    .line 26
    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/view/MsgDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 27
    return-object v0
.end method
