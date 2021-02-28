.class Lcom/tencent/wetest/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/tencent/wetest/d;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lorg/w3c/dom/Element;

.field final synthetic e:Lcom/tencent/wetest/Robot;


# direct methods
.method constructor <init>(Lcom/tencent/wetest/Robot;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/wetest/c;->e:Lcom/tencent/wetest/Robot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/wetest/d;

    invoke-direct {v0, p1}, Lcom/tencent/wetest/d;-><init>(Lcom/tencent/wetest/Robot;)V

    iput-object v0, p0, Lcom/tencent/wetest/c;->a:Lcom/tencent/wetest/d;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/wetest/c;->a:Lcom/tencent/wetest/d;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/wetest/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/wetest/c;->a:Lcom/tencent/wetest/d;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/wetest/d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/wetest/c;->a:Lcom/tencent/wetest/d;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/wetest/d;->c:I

    iput-object v2, p0, Lcom/tencent/wetest/c;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/wetest/c;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/wetest/c;->d:Lorg/w3c/dom/Element;

    return-void
.end method

.method public b()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/wetest/c;->b:Ljava/lang/String;

    if-nez v1, :cond_d

    const-string v1, "wetest"

    const-string v2, "action is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return v0

    :cond_d
    iget-object v1, p0, Lcom/tencent/wetest/c;->a:Lcom/tencent/wetest/d;

    if-nez v1, :cond_19

    const-string v1, "wetest"

    const-string v2, "findexpr is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_19
    iget-object v1, p0, Lcom/tencent/wetest/c;->a:Lcom/tencent/wetest/d;

    iget-object v1, v1, Lcom/tencent/wetest/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/tencent/wetest/c;->a:Lcom/tencent/wetest/d;

    iget-object v1, v1, Lcom/tencent/wetest/d;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "wetest"

    const-string v2, "containText and classType can\'t both be NULL or empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_35
    iget-object v1, p0, Lcom/tencent/wetest/c;->c:Ljava/lang/String;

    if-nez v1, :cond_41

    const-string v1, "wetest"

    const-string v2, "sequence is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_41
    iget-object v1, p0, Lcom/tencent/wetest/c;->d:Lorg/w3c/dom/Element;

    if-nez v1, :cond_4d

    const-string v1, "wetest"

    const-string v2, "param is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_4d
    const/4 v0, 0x1

    goto :goto_c
.end method
