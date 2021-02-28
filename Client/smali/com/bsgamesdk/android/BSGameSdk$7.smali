.class Lcom/bsgamesdk/android/BSGameSdk$7;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk;->reportLog(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/bsgamesdk/android/BSGameSdk;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/BSGameSdk;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$7;->c:Lcom/bsgamesdk/android/BSGameSdk;

    iput-object p2, p0, Lcom/bsgamesdk/android/BSGameSdk$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bsgamesdk/android/BSGameSdk$7;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$7;->c:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$7;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/api/h;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_14
.end method
