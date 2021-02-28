.class Lcom/bsgamesdk/android/widget/BSGameSdkLoading$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$2;->a:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$2;->a:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$2;->a:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;

    invoke-static {v0}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$2;->a:Lcom/bsgamesdk/android/widget/BSGameSdkLoading;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method
