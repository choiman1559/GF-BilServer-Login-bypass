.class Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MWebChromeClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/WebActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/WebActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/activity/WebActivity;->setProgress(I)V

    :try_start_7
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->e(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->e(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, v1, Lcom/bsgamesdk/android/activity/WebActivity;->h:Landroid/graphics/drawable/AnimationDrawable;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_25} :catch_5f

    :cond_25
    :goto_25
    const/16 v0, 0x64

    if-ne p2, v0, :cond_42

    :try_start_29
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/WebActivity;->h:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/WebActivity;->h:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_36
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->b(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_41
    return-void

    :cond_42
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/WebActivity;->h:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/WebActivity;->h:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_4f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->b(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_59} :catch_5a

    goto :goto_41

    :catch_5a
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_41

    :catch_5f
    move-exception v0

    goto :goto_25
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_26

    const-string v0, "404"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "500"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "Error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_21
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->f(Lcom/bsgamesdk/android/activity/WebActivity;)V

    :cond_26
    return-void
.end method
