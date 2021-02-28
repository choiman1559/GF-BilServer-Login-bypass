.class Lcom/bsgamesdk/android/helper/b$2;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/helper/b;->g()V
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
.field final synthetic a:Lcom/bsgamesdk/android/helper/b;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/helper/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/helper/b$2;->a:Lcom/bsgamesdk/android/helper/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b$2;->a:Lcom/bsgamesdk/android/helper/b;

    invoke-static {v1}, Lcom/bsgamesdk/android/helper/b;->a(Lcom/bsgamesdk/android/helper/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/api/k;->f(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    :goto_b
    const/4 v0, 0x0

    return-object v0

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_b
.end method

.method protected a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b$2;->a:Lcom/bsgamesdk/android/helper/b;

    invoke-static {v0}, Lcom/bsgamesdk/android/helper/b;->a(Lcom/bsgamesdk/android/helper/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/model/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b$2;->a:Lcom/bsgamesdk/android/helper/b;

    invoke-static {v0}, Lcom/bsgamesdk/android/helper/b;->a(Lcom/bsgamesdk/android/helper/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/model/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b$2;->a:Lcom/bsgamesdk/android/helper/b;

    invoke-static {v0}, Lcom/bsgamesdk/android/helper/b;->a(Lcom/bsgamesdk/android/helper/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/model/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->v:Ljava/lang/String;

    :try_start_24
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->al()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->getInstance()Lcom/qiniu/android/dns/util/RealTimeThreadPool;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/helper/b$2$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/helper/b$2$1;-><init>(Lcom/bsgamesdk/android/helper/b$2;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_3a} :catch_65

    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->am()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->getInstance()Lcom/qiniu/android/dns/util/RealTimeThreadPool;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/helper/b$2$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/helper/b$2$2;-><init>(Lcom/bsgamesdk/android/helper/b$2;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_50} :catch_6a

    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b$2;->a:Lcom/bsgamesdk/android/helper/b;

    invoke-static {v0}, Lcom/bsgamesdk/android/helper/b;->a(Lcom/bsgamesdk/android/helper/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/i;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b$2;->a:Lcom/bsgamesdk/android/helper/b;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b$2;->a:Lcom/bsgamesdk/android/helper/b;

    invoke-static {v1}, Lcom/bsgamesdk/android/helper/b;->a(Lcom/bsgamesdk/android/helper/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/helper/b;->a(Lcom/bsgamesdk/android/helper/b;Landroid/content/Context;)V

    return-void

    :catch_65
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3a

    :catch_6a
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_50
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/helper/b$2;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/helper/b$2;->a(Ljava/lang/String;)V

    return-void
.end method
