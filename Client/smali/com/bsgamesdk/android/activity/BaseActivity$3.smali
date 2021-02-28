.class Lcom/bsgamesdk/android/activity/BaseActivity$3;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/bsgamesdk/android/activity/BaseActivity;


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .registers 5

    :try_start_0
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BaseActivity$3;->c:Lcom/bsgamesdk/android/activity/BaseActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/BaseActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/BaseActivity$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bsgamesdk/android/api/k;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_b
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_0 .. :try_end_b} :catch_d

    :goto_b
    const/4 v0, 0x0

    return-object v0

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_b
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bsgamesdk/android/activity/BaseActivity;->isFirstTimeGetCaptcha:Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BaseActivity$3;->c:Lcom/bsgamesdk/android/activity/BaseActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BaseActivity$3;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/BaseActivity;->a(Lcom/bsgamesdk/android/activity/BaseActivity;Landroid/widget/ImageView;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity$3;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity$3;->a(Ljava/lang/Void;)V

    return-void
.end method
