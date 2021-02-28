.class public Lcom/bsgamesdk/android/utils/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/app/ProgressDialog;

.field private static b:Landroid/app/Activity;


# direct methods
.method public static a()V
    .registers 1

    :try_start_0
    sget-object v0, Lcom/bsgamesdk/android/utils/k;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/bsgamesdk/android/utils/k;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/bsgamesdk/android/utils/k;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/bsgamesdk/android/utils/k;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/bsgamesdk/android/utils/k;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_1d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .registers 7

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    sget-object v0, Lcom/bsgamesdk/android/utils/k;->b:Landroid/app/Activity;

    if-eq v0, p0, :cond_12

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bsgamesdk/android/utils/k;->a:Landroid/app/ProgressDialog;

    check-cast p0, Landroid/app/Activity;

    sput-object p0, Lcom/bsgamesdk/android/utils/k;->b:Landroid/app/Activity;

    :cond_12
    sget-object v0, Lcom/bsgamesdk/android/utils/k;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/bsgamesdk/android/utils/k;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/bsgamesdk/android/utils/k;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    sget-object v0, Lcom/bsgamesdk/android/utils/k;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    sget-object v0, Lcom/bsgamesdk/android/utils/k;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v0, Lcom/bsgamesdk/android/utils/k;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    sget-object v0, Lcom/bsgamesdk/android/utils/k;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_36} :catch_37

    goto :goto_2

    :catch_37
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
