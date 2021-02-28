.class Lcom/bsgamesdk/android/activity/BaseActivity$1;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/BaseActivity;->a(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/bsgamesdk/android/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/BaseActivity;Landroid/content/Context;Landroid/widget/ImageView;)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/BaseActivity$1;->b:Lcom/bsgamesdk/android/activity/BaseActivity;

    iput-object p3, p0, Lcom/bsgamesdk/android/activity/BaseActivity$1;->a:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "e_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BaseActivity$1;->b:Lcom/bsgamesdk/android/activity/BaseActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/BaseActivity;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "bitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BaseActivity$1;->a:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/utils/g;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BaseActivity$1;->b:Lcom/bsgamesdk/android/activity/BaseActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/BaseActivity;->mContext:Landroid/content/Context;

    const-string v1, "\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f
.end method
