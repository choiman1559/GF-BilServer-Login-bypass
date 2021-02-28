.class public Lcom/sunborn/gameplatform/core/view/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 14
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasFocus"    # Z

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 17
    sget v2, Lcom/sunborn/sunbornplatformsdk/R$id;->imageView_sunborn_platform_dialog_loading:I

    invoke-virtual {p0, v2}, Lcom/sunborn/gameplatform/core/view/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 18
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 19
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 20
    return-void
.end method
