.class Lcom/bsgamesdk/android/api/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lcom/bsgamesdk/android/api/h;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/h;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    iput-object p1, p0, Lcom/bsgamesdk/android/api/h$2;->j:Lcom/bsgamesdk/android/api/h;

    iput p2, p0, Lcom/bsgamesdk/android/api/h$2;->a:I

    iput-object p3, p0, Lcom/bsgamesdk/android/api/h$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/h$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/h$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/bsgamesdk/android/api/h$2;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/bsgamesdk/android/api/h$2;->f:Ljava/lang/String;

    iput p8, p0, Lcom/bsgamesdk/android/api/h$2;->g:I

    iput-object p9, p0, Lcom/bsgamesdk/android/api/h$2;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/bsgamesdk/android/api/h$2;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    new-instance v0, Lcom/bsgamesdk/android/api/h$2$1;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/api/h$2$1;-><init>(Lcom/bsgamesdk/android/api/h$2;)V

    const/4 v1, 0x0

    :try_start_6
    sget-object v2, Lcom/bsgamesdk/android/api/h;->b:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->u()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "gameInfoc_pay"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;
    :try_end_12
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_6 .. :try_end_12} :catch_25
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_12} :catch_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_27

    :goto_12
    return-void

    :catch_13
    move-exception v0

    :goto_14
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h$2;->j:Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$2;->j:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/h$2;->j:Lcom/bsgamesdk/android/api/h;

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
