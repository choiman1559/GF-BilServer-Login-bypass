.class public final Lbsgamesdkhttp/a/e/am;
.super Ljava/io/IOException;


# instance fields
.field public final a:Lbsgamesdkhttp/a/e/b;


# direct methods
.method public constructor <init>(Lbsgamesdkhttp/a/e/b;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stream was reset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lbsgamesdkhttp/a/e/am;->a:Lbsgamesdkhttp/a/e/b;

    return-void
.end method
