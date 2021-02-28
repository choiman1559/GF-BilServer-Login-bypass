.class Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;->b:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;

    iput-object p2, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;->b:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;

    invoke-static {v0}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;->b:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;

    invoke-static {v0}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_48

    :cond_14
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;->b:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->dismiss()V

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;->b:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;->b:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;

    invoke-static {v2}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->b(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;->b:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;

    invoke-static {v0}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;->b:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;

    invoke-static {v0}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;->b:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;

    invoke-static {v0}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :goto_47
    return-void

    :cond_48
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;->b:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;

    invoke-static {v0}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_47
.end method
