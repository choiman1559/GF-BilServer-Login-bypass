.class Lcom/tencent/tp/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/tencent/tp/n;


# direct methods
.method constructor <init>(Lcom/tencent/tp/n;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/tp/p;->a:Lcom/tencent/tp/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/tp/p;->a:Lcom/tencent/tp/n;

    iget-object v0, v0, Lcom/tencent/tp/n;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_11
    return-void
.end method
