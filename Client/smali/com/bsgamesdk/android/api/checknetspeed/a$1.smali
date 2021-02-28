.class Lcom/bsgamesdk/android/api/checknetspeed/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/checknetspeed/a;->a(Landroid/os/Handler;Ljava/util/HashMap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "[",
        "Lcom/qiniu/android/dns/Record;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/bsgamesdk/android/api/checknetspeed/a;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/checknetspeed/a;Ljava/util/HashMap;Landroid/os/Handler;)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/api/checknetspeed/a$1;->c:Lcom/bsgamesdk/android/api/checknetspeed/a;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/checknetspeed/a$1;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/checknetspeed/a$1;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/qiniu/android/dns/Record;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/checknetspeed/a$1;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v3, "domain"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    iget-object v0, p0, Lcom/bsgamesdk/android/api/checknetspeed/a$1;->a:Ljava/util/HashMap;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/checknetspeed/a$1;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/api/checknetspeed/a$1;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bsgamesdk/android/api/checknetspeed/a$1;->a()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
