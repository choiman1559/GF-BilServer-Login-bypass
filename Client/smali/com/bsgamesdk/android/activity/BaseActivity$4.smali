.class Lcom/bsgamesdk/android/activity/BaseActivity$4;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/BaseActivity;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V
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

.field final synthetic b:I

.field final synthetic c:Lcom/bsgamesdk/android/activity/BaseActivity;

.field private d:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/BaseActivity;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/BaseActivity$4;->c:Lcom/bsgamesdk/android/activity/BaseActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/BaseActivity$4;->a:Ljava/lang/String;

    iput p3, p0, Lcom/bsgamesdk/android/activity/BaseActivity$4;->b:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BaseActivity$4;->d:Landroid/widget/ImageView;

    :try_start_7
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BaseActivity$4;->c:Lcom/bsgamesdk/android/activity/BaseActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/BaseActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/BaseActivity$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bsgamesdk/android/api/k;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_14

    move-result-object v0

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BaseActivity$4;->d:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bsgamesdk/android/utils/g;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget v0, p0, Lcom/bsgamesdk/android/activity/BaseActivity$4;->b:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BaseActivity$4;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/bsgamesdk/android/activity/BaseActivity$4;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7
.end method

.method protected varargs a([Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BaseActivity$4;->c:Lcom/bsgamesdk/android/activity/BaseActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/BaseActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity$4;->a([Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity$4;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity$4;->a([Ljava/lang/String;)V

    return-void
.end method
