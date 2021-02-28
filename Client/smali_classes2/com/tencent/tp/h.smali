.class Lcom/tencent/tp/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tp/n$a;


# instance fields
.field final synthetic a:Lcom/tencent/tp/g;


# direct methods
.method constructor <init>(Lcom/tencent/tp/g;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/g;

    invoke-static {v0}, Lcom/tencent/tp/g;->a(Lcom/tencent/tp/g;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/g;

    invoke-static {v1}, Lcom/tencent/tp/g;->a(Lcom/tencent/tp/g;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/g;

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/tencent/tp/g;->a(Lcom/tencent/tp/g;Ljava/lang/String;)Ljava/lang/String;

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hnb_wjs_ydnhdnn:ntn:"

    invoke-static {v2}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|hnb_wjs_dy="

    invoke-static {v3}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|woi_dy="

    invoke-static {v2}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    return-void
.end method
