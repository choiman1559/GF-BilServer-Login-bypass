.class Lcom/android/data/sdk/Main$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/data/sdk/api/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/Main$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/data/sdk/Main$2;


# direct methods
.method constructor <init>(Lcom/android/data/sdk/Main$2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/Main$2$1;->a:Lcom/android/data/sdk/Main$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/android/data/sdk/Main$2$1;->a:Lcom/android/data/sdk/Main$2;

    iget-object v0, v0, Lcom/android/data/sdk/Main$2;->d:Lcom/android/data/sdk/Main;

    iget-object v1, p0, Lcom/android/data/sdk/Main$2$1;->a:Lcom/android/data/sdk/Main$2;

    iget-object v1, v1, Lcom/android/data/sdk/Main$2;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/Main;->appOnline(Landroid/app/Activity;)V

    return-void
.end method
