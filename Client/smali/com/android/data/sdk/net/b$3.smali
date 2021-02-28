.class Lcom/android/data/sdk/net/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/net/b;->a(Ljava/lang/Throwable;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/android/data/sdk/net/b;


# direct methods
.method constructor <init>(Lcom/android/data/sdk/net/b;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/data/sdk/net/b$3;->b:Lcom/android/data/sdk/net/b;

    iput-object p2, p0, Lcom/android/data/sdk/net/b$3;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/data/sdk/net/b$3;->b:Lcom/android/data/sdk/net/b;

    invoke-static {v0}, Lcom/android/data/sdk/net/b;->a(Lcom/android/data/sdk/net/b;)Lcom/android/data/sdk/api/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/data/sdk/net/b$3;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/android/data/sdk/api/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method
