.class public Lcom/smali/tools/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic lambda$null$0(Ljava/lang/String;)Z
    .registers 2
    .param p0, "platform"    # Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public synthetic lambda$onCreate$1$MainActivity(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 19
    sget-object v0, Lcom/smali/tools/-$$Lambda$MainActivity$gRh5hsokTi6kB10FZZsTR6_fiXc;->INSTANCE:Lcom/smali/tools/-$$Lambda$MainActivity$gRh5hsokTi6kB10FZZsTR6_fiXc;

    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/smali/tools/SmaliTools;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 14
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/smali/tools/MainActivity;->setContentView(I)V

    .line 16
    invoke-static {p0}, Lcom/smali/tools/SmaliTools;->checkOverlayPermissionAndRequest(Landroid/content/Context;)V

    .line 17
    invoke-static {p0}, Lcom/smali/tools/SmaliTools;->showTechnicalDemoOverlay(Landroid/content/Context;)V

    .line 18
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/smali/tools/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 19
    .local v0, "textView":Landroid/widget/TextView;
    new-instance v1, Lcom/smali/tools/-$$Lambda$MainActivity$hn8-jRgxiRkTU18Rk4T6mM4mxdk;

    invoke-direct {v1, p0}, Lcom/smali/tools/-$$Lambda$MainActivity$hn8-jRgxiRkTU18Rk4T6mM4mxdk;-><init>(Lcom/smali/tools/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 24
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 25
    invoke-static {p0}, Lcom/smali/tools/SmaliTools;->closeTechnicalDemoOverlay(Landroid/content/Context;)V

    .line 26
    return-void
.end method
