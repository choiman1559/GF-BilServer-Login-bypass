.class Lcom/tencent/wetest/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/wetest/Robot;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tencent/wetest/Robot;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/wetest/a;->a:Lcom/tencent/wetest/Robot;

    iput-object p2, p0, Lcom/tencent/wetest/a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/wetest/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method
