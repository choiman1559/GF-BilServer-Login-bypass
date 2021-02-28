.class Lcom/bsgamesdk/android/api/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/p;->e(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/bsgamesdk/android/api/p;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/p;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/api/p$1;->b:Lcom/bsgamesdk/android/api/p;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/p$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x1

    move v1, v2

    :goto_3
    const/4 v3, 0x5

    if-ge v1, v3, :cond_3d

    if-eqz v0, :cond_3d

    :try_start_8
    iget-object v3, p0, Lcom/bsgamesdk/android/api/p$1;->b:Lcom/bsgamesdk/android/api/p;

    invoke-static {v3}, Lcom/bsgamesdk/android/api/p;->a(Lcom/bsgamesdk/android/api/p;)Z

    move-result v3

    if-nez v3, :cond_16

    const-wide/32 v4, 0xea60

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    :cond_16
    iget-object v3, p0, Lcom/bsgamesdk/android/api/p$1;->b:Lcom/bsgamesdk/android/api/p;

    iget-object v4, p0, Lcom/bsgamesdk/android/api/p$1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/bsgamesdk/android/api/p;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v3, p0, Lcom/bsgamesdk/android/api/p$1;->b:Lcom/bsgamesdk/android/api/p;

    iget-object v4, p0, Lcom/bsgamesdk/android/api/p$1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/bsgamesdk/android/api/p;->c(Ljava/lang/Object;)V
    :try_end_27
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_8 .. :try_end_27} :catch_3e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_27} :catch_40
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_27} :catch_2f
    .catchall {:try_start_8 .. :try_end_27} :catchall_36

    :cond_27
    iget-object v3, p0, Lcom/bsgamesdk/android/api/p$1;->b:Lcom/bsgamesdk/android/api/p;

    invoke-static {v3, v2}, Lcom/bsgamesdk/android/api/p;->a(Lcom/bsgamesdk/android/api/p;Z)Z

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_2f
    move-exception v3

    :goto_30
    iget-object v3, p0, Lcom/bsgamesdk/android/api/p$1;->b:Lcom/bsgamesdk/android/api/p;

    invoke-static {v3, v2}, Lcom/bsgamesdk/android/api/p;->a(Lcom/bsgamesdk/android/api/p;Z)Z

    goto :goto_2c

    :catchall_36
    move-exception v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/p$1;->b:Lcom/bsgamesdk/android/api/p;

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/api/p;->a(Lcom/bsgamesdk/android/api/p;Z)Z

    throw v0

    :cond_3d
    return-void

    :catch_3e
    move-exception v3

    goto :goto_30

    :catch_40
    move-exception v3

    goto :goto_30
.end method
