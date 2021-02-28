.class Lcom/tencent/tp/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/tencent/tp/n;


# direct methods
.method constructor <init>(Lcom/tencent/tp/n;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/tp/o;->a:Lcom/tencent/tp/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/tp/o;->a:Lcom/tencent/tp/n;

    invoke-static {v0}, Lcom/tencent/tp/n;->a(Lcom/tencent/tp/n;)Lcom/tencent/tp/n$a;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tencent/tp/o;->a:Lcom/tencent/tp/n;

    invoke-static {v0}, Lcom/tencent/tp/n;->a(Lcom/tencent/tp/n;)Lcom/tencent/tp/n$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/tp/n$a;->a(I)V

    :cond_12
    return-void
.end method
