.class Lcom/bsgamesdk/android/activity/NoticeActivity$4;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/NoticeActivity;->a(Landroid/view/View;Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bsgamesdk/android/activity/NoticeActivity;

.field private c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/NoticeActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$4;->b:Lcom/bsgamesdk/android/activity/NoticeActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v4, 0x0

    aget-object v0, p1, v4

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$4;->c:Landroid/widget/ImageView;

    :try_start_7
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$4;->b:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/NoticeActivity;->a(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bsgamesdk/android/api/k;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_14
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_7 .. :try_end_14} :catch_16

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/NoticeActivity$4;->publishProgress([Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$4;->c:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bsgamesdk/android/utils/g;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_7
    return-void
.end method

.method protected varargs a([Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$4;->b:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->a(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/NoticeActivity$4;->a([Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/NoticeActivity$4;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/NoticeActivity$4;->a([Ljava/lang/String;)V

    return-void
.end method
