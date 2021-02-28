.class Lcom/bsgamesdk/android/helper/b$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/helper/b;->a(Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;Ljava/lang/String;)V
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

.field final synthetic b:Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;

.field final synthetic c:Lcom/bsgamesdk/android/helper/b;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/helper/b;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/helper/b$1;->c:Lcom/bsgamesdk/android/helper/b;

    iput-object p2, p0, Lcom/bsgamesdk/android/helper/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bsgamesdk/android/helper/b$1;->b:Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b$1;->c:Lcom/bsgamesdk/android/helper/b;

    invoke-static {v1}, Lcom/bsgamesdk/android/helper/b;->a(Lcom/bsgamesdk/android/helper/b;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/b$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_0 .. :try_end_d} :catch_f
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_d} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_24

    :goto_d
    const/4 v0, 0x0

    return-object v0

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_d

    :catch_14
    move-exception v0

    :goto_15
    new-instance v0, Lcom/bsgamesdk/android/api/m;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b$1;->c:Lcom/bsgamesdk/android/helper/b;

    invoke-static {v1}, Lcom/bsgamesdk/android/helper/b;->a(Lcom/bsgamesdk/android/helper/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/m;->start()V

    goto :goto_d

    :catch_24
    move-exception v0

    goto :goto_15
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b$1;->b:Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;

    invoke-interface {v0}, Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;->onSuccess()V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/helper/b$1;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/helper/b$1;->a(Ljava/lang/String;)V

    return-void
.end method
