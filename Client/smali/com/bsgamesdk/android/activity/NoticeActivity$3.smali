.class Lcom/bsgamesdk/android/activity/NoticeActivity$3;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/NoticeActivity;->b()V
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
        "Ljava/lang/String;",
        "Lcom/bsgamesdk/android/model/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/NoticeActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/NoticeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/bsgamesdk/android/model/h;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/NoticeActivity;->a(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/api/k;->d(Landroid/content/Context;)Lcom/bsgamesdk/android/model/h;
    :try_end_b
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->b(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected a(Lcom/bsgamesdk/android/model/h;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/h;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/h;->a()I

    move-result v1

    if-ne v1, v2, :cond_3e

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/activity/NoticeActivity;->a(Lcom/bsgamesdk/android/activity/NoticeActivity;Z)Z

    :goto_16
    if-ne v0, v2, :cond_69

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/h;->c()I

    move-result v0

    if-ne v0, v2, :cond_44

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/h;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/NoticeActivity;->c(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->d(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->c(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-static {v1, v3}, Lcom/bsgamesdk/android/activity/NoticeActivity;->a(Lcom/bsgamesdk/android/activity/NoticeActivity;Z)Z

    goto :goto_16

    :cond_44
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/h;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/NoticeActivity;->e(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->a(Lcom/bsgamesdk/android/activity/NoticeActivity;Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->d(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->e(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3d

    :cond_69
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->onBackPressed()V

    goto :goto_3d
.end method

.method protected varargs b([Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->a(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a([Ljava/lang/String;)Lcom/bsgamesdk/android/model/h;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/bsgamesdk/android/model/h;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->a(Lcom/bsgamesdk/android/model/h;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/NoticeActivity$3;->b([Ljava/lang/String;)V

    return-void
.end method
