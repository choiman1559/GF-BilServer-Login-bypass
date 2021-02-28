.class Lcom/bsgamesdk/android/utils/x$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/utils/x;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/utils/x;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/utils/x;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/utils/x$2;->a:Lcom/bsgamesdk/android/utils/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x$2;->a:Lcom/bsgamesdk/android/utils/x;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/x;->c(Lcom/bsgamesdk/android/utils/x;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x$2;->a:Lcom/bsgamesdk/android/utils/x;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/x;->c(Lcom/bsgamesdk/android/utils/x;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/utils/x$2;->a:Lcom/bsgamesdk/android/utils/x;

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/x;->d(Lcom/bsgamesdk/android/utils/x;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bsgamesdk_arrow_down"

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/utils/s;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    goto :goto_1d
.end method
