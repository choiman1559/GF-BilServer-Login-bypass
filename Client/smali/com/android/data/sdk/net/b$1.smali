.class Lcom/android/data/sdk/net/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/net/b;->a(Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsgamesdkhttp/u;

.field final synthetic b:Lbsgamesdkhttp/w;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/android/data/sdk/net/b;


# direct methods
.method constructor <init>(Lcom/android/data/sdk/net/b;Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;Landroid/os/Handler;)V
    .registers 5

    iput-object p1, p0, Lcom/android/data/sdk/net/b$1;->d:Lcom/android/data/sdk/net/b;

    iput-object p2, p0, Lcom/android/data/sdk/net/b$1;->a:Lbsgamesdkhttp/u;

    iput-object p3, p0, Lcom/android/data/sdk/net/b$1;->b:Lbsgamesdkhttp/w;

    iput-object p4, p0, Lcom/android/data/sdk/net/b$1;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/data/sdk/net/b$1;->d:Lcom/android/data/sdk/net/b;

    iget-object v1, p0, Lcom/android/data/sdk/net/b$1;->a:Lbsgamesdkhttp/u;

    iget-object v2, p0, Lcom/android/data/sdk/net/b$1;->b:Lbsgamesdkhttp/w;

    iget-object v3, p0, Lcom/android/data/sdk/net/b$1;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/android/data/sdk/net/b;->a(Lcom/android/data/sdk/net/b;Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;Landroid/os/Handler;)V

    return-void
.end method
