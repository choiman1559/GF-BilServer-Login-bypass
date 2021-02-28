.class Lcom/bsgamesdk/android/buvid/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/buvid/b;->a(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/bsgamesdk/android/buvid/b;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/buvid/b;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/buvid/b$1;->b:Lcom/bsgamesdk/android/buvid/b;

    iput-object p2, p0, Lcom/bsgamesdk/android/buvid/b$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/buvid/b$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bsgamesdk/android/buvid/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/bsgamesdk/android/buvid/b;

    monitor-enter v1

    :try_start_d
    iget-object v2, p0, Lcom/bsgamesdk/android/buvid/b$1;->b:Lcom/bsgamesdk/android/buvid/b;

    invoke-static {v2, v0}, Lcom/bsgamesdk/android/buvid/b;->a(Lcom/bsgamesdk/android/buvid/b;Ljava/lang/String;)Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method
