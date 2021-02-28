.class Lbsgamesdkhttp/a/e/n$j$a;
.super Lbsgamesdkhttp/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkhttp/a/e/n$j;->a(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsgamesdkhttp/a/e/d;

.field final synthetic c:Lbsgamesdkhttp/a/e/n$j;


# direct methods
.method varargs constructor <init>(Lbsgamesdkhttp/a/e/n$j;Ljava/lang/String;[Ljava/lang/Object;Lbsgamesdkhttp/a/e/d;)V
    .registers 5

    iput-object p1, p0, Lbsgamesdkhttp/a/e/n$j$a;->c:Lbsgamesdkhttp/a/e/n$j;

    iput-object p4, p0, Lbsgamesdkhttp/a/e/n$j$a;->a:Lbsgamesdkhttp/a/e/d;

    invoke-direct {p0, p2, p3}, Lbsgamesdkhttp/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j$a;->c:Lbsgamesdkhttp/a/e/n$j;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->c:Lbsgamesdkhttp/a/e/n$i;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$j$a;->a:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/e/n$i;->a(Lbsgamesdkhttp/a/e/d;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-static {}, Lbsgamesdkhttp/a/g/e;->b()Lbsgamesdkhttp/a/g/e;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http2Connection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n$j$a;->c:Lbsgamesdkhttp/a/e/n$j;

    iget-object v4, v4, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v4, v4, Lbsgamesdkhttp/a/e/n;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lbsgamesdkhttp/a/g/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_2e
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j$a;->a:Lbsgamesdkhttp/a/e/d;

    sget-object v1, Lbsgamesdkhttp/a/e/b;->b:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/e/d;->a(Lbsgamesdkhttp/a/e/b;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_b

    :catch_36
    move-exception v0

    goto :goto_b
.end method
