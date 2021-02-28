.class Lcom/android/data/sdk/api/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/android/data/sdk/api/a;


# direct methods
.method constructor <init>(Lcom/android/data/sdk/api/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/data/sdk/api/a$1;->b:Lcom/android/data/sdk/api/a;

    iput-object p2, p0, Lcom/android/data/sdk/api/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/data/sdk/api/a$1;->a:Landroid/content/Context;

    const-string v1, "CDN_CONFIG"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/data/sdk/utils/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/data/sdk/api/a$1;->b:Lcom/android/data/sdk/api/a;

    invoke-static {v0, v1}, Lcom/android/data/sdk/api/a;->a(Lcom/android/data/sdk/api/a;Lorg/json/JSONObject;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    const-string v0, "No network config!"

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_16
.end method
