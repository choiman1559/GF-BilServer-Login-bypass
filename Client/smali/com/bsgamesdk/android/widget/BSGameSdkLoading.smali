.class public Lcom/bsgamesdk/android/widget/BSGameSdkLoading;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->b:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 4

    new-instance v0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$1;-><init>(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$2;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading$2;-><init>(Lcom/bsgamesdk/android/widget/BSGameSdkLoading;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public show()V
    .registers 2

    const-string v0, "\u52a0\u8f7d\u4e2d"

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show(I)V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/widget/BSGameSdkLoading;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
