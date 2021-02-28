.class Lcom/tencent/wetest/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/wetest/Robot;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wetest/Robot;Landroid/widget/EditText;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/tencent/wetest/b;->a:Lcom/tencent/wetest/Robot;

    iput-object p2, p0, Lcom/tencent/wetest/b;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/tencent/wetest/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/wetest/b;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tencent/wetest/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
