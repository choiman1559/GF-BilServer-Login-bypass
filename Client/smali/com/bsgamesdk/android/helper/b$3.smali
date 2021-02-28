.class Lcom/bsgamesdk/android/helper/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/helper/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/LinkedList;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bsgamesdk/android/helper/b;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/helper/b;Ljava/util/LinkedList;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/helper/b$3;->c:Lcom/bsgamesdk/android/helper/b;

    iput-object p2, p0, Lcom/bsgamesdk/android/helper/b$3;->a:Ljava/util/LinkedList;

    iput-object p3, p0, Lcom/bsgamesdk/android/helper/b$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b$3;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b$3;->b:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/bsgamesdk/android/utils/l;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_40

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_41

    :cond_40
    :goto_40
    return-void

    :cond_41
    move v1, v2

    :goto_42
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b$3;->b:Landroid/content/Context;

    invoke-static {v0, v6, v4}, Lcom/bsgamesdk/android/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "{"

    const-string v8, "{\""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "}"

    const-string v8, "\"}"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "="

    const-string v8, "\":\""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v7, ", "

    const-string v8, "\",\""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "}\",\"{"

    const-string v8, "},{"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_aa} :catch_bb

    move-result-object v0

    :try_start_ab
    sget-object v7, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v8, p0, Lcom/bsgamesdk/android/helper/b$3;->b:Landroid/content/Context;

    invoke-interface {v7, v8, v0, v6}, Lcom/bsgamesdk/android/api/k;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_ab .. :try_end_b2} :catch_b6
    .catch Lorg/apache/http/HttpException; {:try_start_ab .. :try_end_b2} :catch_c0
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b2} :catch_c5
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_b2} :catch_bb

    :goto_b2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_42

    :catch_b6
    move-exception v0

    :try_start_b7
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_b2

    :catch_bb
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_40

    :catch_c0
    move-exception v0

    :goto_c1
    :try_start_c1
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c4} :catch_bb

    goto :goto_b2

    :catch_c5
    move-exception v0

    goto :goto_c1
.end method
