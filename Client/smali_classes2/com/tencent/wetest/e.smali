.class Lcom/tencent/wetest/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/view/MotionEvent;

.field b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wetest/e;->b:Landroid/view/View;

    iput-object p1, p0, Lcom/tencent/wetest/e;->a:Landroid/view/MotionEvent;

    iput-object p2, p0, Lcom/tencent/wetest/e;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x1

    :goto_1
    sget-boolean v0, Lcom/tencent/wetest/U3DAutomation;->c:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/wetest/U3DAutomation;->a(Z)V

    iget-object v0, p0, Lcom/tencent/wetest/e;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/wetest/e;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v1, "touch fail."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    invoke-static {v4}, Lcom/tencent/wetest/U3DAutomation;->a(Z)V

    :cond_1d
    iget-object v0, p0, Lcom/tencent/wetest/e;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_23
    iget-object v0, p0, Lcom/tencent/wetest/e;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/wetest/e;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->a()Z

    move-result v0

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getForward = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1d

    sput-boolean v4, Lcom/tencent/wetest/U3DAutomation;->c:Z

    goto :goto_1
.end method
