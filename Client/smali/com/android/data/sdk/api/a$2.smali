.class Lcom/android/data/sdk/api/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/data/sdk/api/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/api/a;->b(Landroid/content/Context;Lcom/android/data/sdk/api/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/android/data/sdk/api/d;

.field final synthetic c:Lcom/android/data/sdk/api/a;


# direct methods
.method constructor <init>(Lcom/android/data/sdk/api/a;Landroid/content/Context;Lcom/android/data/sdk/api/d;)V
    .registers 4

    iput-object p1, p0, Lcom/android/data/sdk/api/a$2;->c:Lcom/android/data/sdk/api/a;

    iput-object p2, p0, Lcom/android/data/sdk/api/a$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/data/sdk/api/a$2;->b:Lcom/android/data/sdk/api/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/data/sdk/api/a$2;->c:Lcom/android/data/sdk/api/a;

    invoke-static {v1, v0}, Lcom/android/data/sdk/api/a;->a(Lcom/android/data/sdk/api/a;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/android/data/sdk/api/a$2;->c:Lcom/android/data/sdk/api/a;

    iget-object v1, p0, Lcom/android/data/sdk/api/a$2;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/android/data/sdk/api/a;->a(Lcom/android/data/sdk/api/a;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_17

    :goto_11
    iget-object v0, p0, Lcom/android/data/sdk/api/a$2;->b:Lcom/android/data/sdk/api/d;

    invoke-interface {v0}, Lcom/android/data/sdk/api/d;->a()V

    return-void

    :catch_17
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting network config fail, due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/data/sdk/api/a$2;->b:Lcom/android/data/sdk/api/d;

    invoke-interface {v0}, Lcom/android/data/sdk/api/d;->a()V

    return-void
.end method
