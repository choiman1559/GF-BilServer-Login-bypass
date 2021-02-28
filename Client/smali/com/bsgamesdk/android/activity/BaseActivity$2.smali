.class Lcom/bsgamesdk/android/activity/BaseActivity$2;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/BaseActivity;->a(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/BaseActivity;

.field private b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/BaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/BaseActivity$2;->a:Lcom/bsgamesdk/android/activity/BaseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v1, 0x0

    const/4 v5, 0x0

    aget-object v0, p1, v5

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BaseActivity$2;->b:Landroid/widget/ImageView;

    :try_start_8
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/BaseActivity$2;->a:Lcom/bsgamesdk/android/activity/BaseActivity;

    iget-object v2, v2, Lcom/bsgamesdk/android/activity/BaseActivity;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/bsgamesdk/android/api/k;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_12
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_8 .. :try_end_12} :catch_14

    move-result-object v0

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u83b7\u53d6\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/activity/BaseActivity$2;->publishProgress([Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_13
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BaseActivity$2;->b:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bsgamesdk/android/utils/g;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BaseActivity$2;->a:Lcom/bsgamesdk/android/activity/BaseActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/BaseActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity$2;->a([Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity$2;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity$2;->a([Ljava/lang/String;)V

    return-void
.end method
