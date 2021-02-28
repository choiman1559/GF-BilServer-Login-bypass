.class Lcom/android/data/sdk/api/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/data/sdk/api/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;Lcom/android/data/sdk/domain/model/DataUpModel;Lcom/android/data/sdk/api/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/data/sdk/api/b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/android/data/sdk/api/a;


# direct methods
.method constructor <init>(Lcom/android/data/sdk/api/a;Lcom/android/data/sdk/api/b;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/android/data/sdk/api/a$3;->c:Lcom/android/data/sdk/api/a;

    iput-object p2, p0, Lcom/android/data/sdk/api/a$3;->a:Lcom/android/data/sdk/api/b;

    iput-object p3, p0, Lcom/android/data/sdk/api/a$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/data/sdk/api/a$3;->c:Lcom/android/data/sdk/api/a;

    iget-object v2, p0, Lcom/android/data/sdk/api/a$3;->a:Lcom/android/data/sdk/api/b;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/android/data/sdk/api/a;->a(Lcom/android/data/sdk/api/a;Lorg/json/JSONObject;Lcom/android/data/sdk/api/b;I)V

    iget-object v1, p0, Lcom/android/data/sdk/api/a$3;->c:Lcom/android/data/sdk/api/a;

    iget-object v2, p0, Lcom/android/data/sdk/api/a$3;->b:Landroid/content/Context;

    invoke-static {v1, v2, p1}, Lcom/android/data/sdk/api/a;->b(Lcom/android/data/sdk/api/a;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1d
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/data/sdk/api/c;->c(Lorg/json/JSONObject;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    :goto_24
    return-void

    :catch_25
    move-exception v0

    iget-object v0, p0, Lcom/android/data/sdk/api/a$3;->c:Lcom/android/data/sdk/api/a;

    iget-object v1, p0, Lcom/android/data/sdk/api/a$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/data/sdk/api/a$3;->a:Lcom/android/data/sdk/api/b;

    invoke-static {v0, v1, v2}, Lcom/android/data/sdk/api/a;->a(Lcom/android/data/sdk/api/a;Landroid/content/Context;Lcom/android/data/sdk/api/b;)V

    goto :goto_24
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lcom/android/data/sdk/api/a$3;->c:Lcom/android/data/sdk/api/a;

    iget-object v1, p0, Lcom/android/data/sdk/api/a$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/data/sdk/api/a$3;->a:Lcom/android/data/sdk/api/b;

    invoke-static {v0, v1, v2}, Lcom/android/data/sdk/api/a;->a(Lcom/android/data/sdk/api/a;Landroid/content/Context;Lcom/android/data/sdk/api/b;)V

    return-void
.end method
