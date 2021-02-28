.class Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->setProgress(I)V

    :try_start_7
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->d(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->d(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, v1, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a:Landroid/graphics/drawable/AnimationDrawable;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_25} :catch_b3

    :cond_25
    :goto_25
    const/16 v0, 0x64

    if-ne p2, v0, :cond_96

    :try_start_29
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_36
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->e(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->c(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->c(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "404"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->c(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->c(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_95

    :cond_8a
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->e(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_95
    :goto_95
    return-void

    :cond_96
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_a3
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_ad} :catch_ae

    goto :goto_95

    :catch_ae
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_95

    :catch_b3
    move-exception v0

    goto/16 :goto_25
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :try_start_3
    const-string v0, "404"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "500"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_1b
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->b(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->e(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3b} :catch_3c

    :cond_3b
    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    goto :goto_3b
.end method
