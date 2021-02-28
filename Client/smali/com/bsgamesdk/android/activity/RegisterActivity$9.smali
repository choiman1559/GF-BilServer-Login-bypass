.class Lcom/bsgamesdk/android/activity/RegisterActivity$9;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/RegisterActivity;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bsgamesdk/android/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->e:Lcom/bsgamesdk/android/activity/RegisterActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->d:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_3
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->e:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/RegisterActivity;->h(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->d:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5df2\u53d1\u9001\u9a8c\u8bc1\u7801"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->e:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->k(Lcom/bsgamesdk/android/activity/RegisterActivity;)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_40

    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->e:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/RegisterActivity;->l(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_40
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->e:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->k(Lcom/bsgamesdk/android/activity/RegisterActivity;)I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_5f

    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->e:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/RegisterActivity;->l(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5f
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_3 .. :try_end_5f} :catch_60

    :cond_5f
    :goto_5f
    return-object v8

    :catch_60
    move-exception v0

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const/16 v2, -0x69

    if-ne v1, v2, :cond_7a

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->e:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/RegisterActivity;->l(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5f

    :cond_7a
    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->publishProgress([Ljava/lang/Object;)V

    goto :goto_5f
.end method

.method protected varargs b([Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->e:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->h(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/RegisterActivity$9;->b([Ljava/lang/String;)V

    return-void
.end method
