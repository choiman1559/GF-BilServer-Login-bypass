.class Lcom/bsgamesdk/android/api/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bsgamesdk/android/model/l;

.field final synthetic e:Lcom/bsgamesdk/android/api/h;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/h;ILjava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/l;)V
    .registers 6

    iput-object p1, p0, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iput p2, p0, Lcom/bsgamesdk/android/api/h$1;->a:I

    iput-object p3, p0, Lcom/bsgamesdk/android/api/h$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/h$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/h$1;->d:Lcom/bsgamesdk/android/model/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    new-instance v0, Lcom/bsgamesdk/android/api/h$1$1;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/api/h$1$1;-><init>(Lcom/bsgamesdk/android/api/h$1;)V

    const/4 v1, 0x0

    :try_start_6
    sget-object v2, Lcom/bsgamesdk/android/api/h;->b:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->u()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "gameInfoc_freeFlow"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;
    :try_end_12
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_6 .. :try_end_12} :catch_25
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_27
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    :goto_14
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v2, v2, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/api/h;->b(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_12

    :catch_25
    move-exception v0

    goto :goto_14

    :catch_27
    move-exception v0

    goto :goto_14
.end method