.class final Lcom/bsgamesdk/android/api/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/api/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :cond_0
    const-wide/32 v0, 0x927c0

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_55

    :goto_6
    const-string v0, "collectApi_params_cache"

    invoke-static {}, Lcom/bsgamesdk/android/api/i;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "collectApi_params_cache"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bsgamesdk/android/api/i;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "collectApi_params_cache"

    invoke-static {v2, v3, v1}, Lcom/bsgamesdk/android/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_35
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v3, Lcom/bsgamesdk/android/api/h;

    invoke-static {}, Lcom/bsgamesdk/android/api/i;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/bsgamesdk/android/api/i;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/bsgamesdk/android/api/h;->a(Landroid/content/Context;Ljava/util/Map;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_35

    :catch_55
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_6
.end method
