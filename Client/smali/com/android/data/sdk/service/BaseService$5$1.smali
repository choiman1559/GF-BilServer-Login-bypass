.class Lcom/android/data/sdk/service/BaseService$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/data/sdk/api/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/service/BaseService$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/android/data/sdk/service/BaseService$5;


# direct methods
.method constructor <init>(Lcom/android/data/sdk/service/BaseService$5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/data/sdk/service/BaseService$5$1;->d:Lcom/android/data/sdk/service/BaseService$5;

    iput-object p2, p0, Lcom/android/data/sdk/service/BaseService$5$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/data/sdk/service/BaseService$5$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/data/sdk/service/BaseService$5$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$5$1;->d:Lcom/android/data/sdk/service/BaseService$5;

    iget-object v0, v0, Lcom/android/data/sdk/service/BaseService$5;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/data/sdk/service/BaseService$5$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/data/sdk/service/BaseService$5$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/data/sdk/service/BaseService$5$1;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_29} :catch_2a

    :cond_29
    :goto_29
    return-void

    :catch_2a
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_29
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {p1}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    return-void
.end method
