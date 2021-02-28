.class public abstract Lcom/bsgamesdk/android/task/d;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field protected b:Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;

.field protected c:Landroid/content/Context;

.field protected d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/task/d;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/bsgamesdk/android/task/d;->b:Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;

    iput-object p3, p0, Lcom/bsgamesdk/android/task/d;->d:Landroid/os/Bundle;

    return-void
.end method

.method public static varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask;",
            "[TT;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_b
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/bsgamesdk/android/task/d;->d:Landroid/os/Bundle;

    const-string v1, "code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/d;->d:Landroid/os/Bundle;

    const-string v1, "e_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/d;->d:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_28

    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/bsgamesdk/android/task/d;->b:Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bsgamesdk/android/task/d;->b:Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;

    invoke-interface {v0}, Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;->onFinish()V

    :cond_12
    return-void

    :pswitch_13
    iget-object v0, p0, Lcom/bsgamesdk/android/task/d;->b:Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bsgamesdk/android/task/d;->b:Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;

    invoke-interface {v0, p1}, Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_9

    :pswitch_1d
    iget-object v0, p0, Lcom/bsgamesdk/android/task/d;->b:Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bsgamesdk/android/task/d;->b:Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;

    invoke-interface {v0, p1}, Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;->onFailed(Landroid/os/Bundle;)V

    goto :goto_9

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_13
    .end packed-switch
.end method

.method protected varargs b([Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/bsgamesdk/android/task/d;->c:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public varargs c([Ljava/lang/String;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/bsgamesdk/android/task/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_b
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/d;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/task/d;->b:Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bsgamesdk/android/task/d;->b:Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;

    invoke-interface {v0}, Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;->onStart()V

    :cond_9
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/d;->b([Ljava/lang/String;)V

    return-void
.end method
