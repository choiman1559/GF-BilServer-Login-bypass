.class Lcom/tencent/tp/x;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZZLjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/tencent/tp/x;->a:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/tencent/tp/x;->b:Z

    iput-object p6, p0, Lcom/tencent/tp/x;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tp/x;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/e;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/tencent/tp/u;

    invoke-direct {v0}, Lcom/tencent/tp/u;-><init>()V

    iget-object v1, p0, Lcom/tencent/tp/x;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tp/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tp/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/tp/x;->b:Z

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/tencent/tp/m;->a()Lcom/tencent/tp/m;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tp/x;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tp/m;->a(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_28

    :cond_26
    :goto_26
    const/4 v0, 0x0

    return-object v0

    :catch_28
    move-exception v0

    goto :goto_26
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/tp/x;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
