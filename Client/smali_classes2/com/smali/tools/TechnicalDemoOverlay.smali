.class public Lcom/smali/tools/TechnicalDemoOverlay;
.super Landroid/app/Service;
.source "TechnicalDemoOverlay.java"


# instance fields
.field mManager:Landroid/view/WindowManager;

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 9

    .line 29
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smali/tools/TechnicalDemoOverlay;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smali/tools/TechnicalDemoOverlay;->textView:Landroid/widget/TextView;

    .line 31
    const-string v1, "  Technical demo.\n   non-commercial use only."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/smali/tools/TechnicalDemoOverlay;->textView:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    iget-object v0, p0, Lcom/smali/tools/TechnicalDemoOverlay;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 35
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_2d

    const/16 v1, 0x7f6

    goto :goto_2f

    :cond_2d
    const/16 v1, 0x7d3

    :goto_2f
    move v5, v1

    const/16 v6, 0x8

    const/4 v7, -0x3

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 43
    .local v0, "mParams":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 45
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/smali/tools/TechnicalDemoOverlay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/smali/tools/TechnicalDemoOverlay;->mManager:Landroid/view/WindowManager;

    .line 46
    iget-object v2, p0, Lcom/smali/tools/TechnicalDemoOverlay;->textView:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 52
    iget-object v0, p0, Lcom/smali/tools/TechnicalDemoOverlay;->mManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/smali/tools/TechnicalDemoOverlay;->textView:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 53
    :cond_e
    return-void
.end method
