.class Lcom/android/data/sdk/service/BaseService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/data/sdk/api/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/service/BaseService;->b(Lcom/android/data/sdk/domain/model/DataUpModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/data/sdk/service/BaseService;


# direct methods
.method constructor <init>(Lcom/android/data/sdk/service/BaseService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/service/BaseService$1;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$1;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0, p1}, Lcom/android/data/sdk/service/BaseService;->a(Lcom/android/data/sdk/service/BaseService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$1;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0}, Lcom/android/data/sdk/service/BaseService;->a(Lcom/android/data/sdk/service/BaseService;)V

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$1;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0}, Lcom/android/data/sdk/service/BaseService;->b(Lcom/android/data/sdk/service/BaseService;)V

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$1;->a:Lcom/android/data/sdk/service/BaseService;

    iget-object v1, p0, Lcom/android/data/sdk/service/BaseService$1;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0, v1}, Lcom/android/data/sdk/service/BaseService;->a(Lcom/android/data/sdk/service/BaseService;Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {p1}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$1;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0}, Lcom/android/data/sdk/service/BaseService;->a(Lcom/android/data/sdk/service/BaseService;)V

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$1;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0}, Lcom/android/data/sdk/service/BaseService;->b(Lcom/android/data/sdk/service/BaseService;)V

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$1;->a:Lcom/android/data/sdk/service/BaseService;

    iget-object v1, p0, Lcom/android/data/sdk/service/BaseService$1;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0, v1}, Lcom/android/data/sdk/service/BaseService;->a(Lcom/android/data/sdk/service/BaseService;Landroid/content/Context;)V

    return-void
.end method
