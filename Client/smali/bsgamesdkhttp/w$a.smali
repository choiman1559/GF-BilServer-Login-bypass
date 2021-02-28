.class public Lbsgamesdkhttp/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lbsgamesdkhttp/HttpUrl;

.field b:Ljava/lang/String;

.field c:Lbsgamesdkhttp/r$a;

.field d:Lbsgamesdkhttp/x;

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lbsgamesdkhttp/w$a;->b:Ljava/lang/String;

    new-instance v0, Lbsgamesdkhttp/r$a;

    invoke-direct {v0}, Lbsgamesdkhttp/r$a;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/w$a;->c:Lbsgamesdkhttp/r$a;

    return-void
.end method

.method constructor <init>(Lbsgamesdkhttp/w;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lbsgamesdkhttp/w;->a:Lbsgamesdkhttp/HttpUrl;

    iput-object v0, p0, Lbsgamesdkhttp/w$a;->a:Lbsgamesdkhttp/HttpUrl;

    iget-object v0, p1, Lbsgamesdkhttp/w;->b:Ljava/lang/String;

    iput-object v0, p0, Lbsgamesdkhttp/w$a;->b:Ljava/lang/String;

    iget-object v0, p1, Lbsgamesdkhttp/w;->d:Lbsgamesdkhttp/x;

    iput-object v0, p0, Lbsgamesdkhttp/w$a;->d:Lbsgamesdkhttp/x;

    iget-object v0, p1, Lbsgamesdkhttp/w;->e:Ljava/lang/Object;

    iput-object v0, p0, Lbsgamesdkhttp/w$a;->e:Ljava/lang/Object;

    iget-object v0, p1, Lbsgamesdkhttp/w;->c:Lbsgamesdkhttp/r;

    invoke-virtual {v0}, Lbsgamesdkhttp/r;->b()Lbsgamesdkhttp/r$a;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/w$a;->c:Lbsgamesdkhttp/r$a;

    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/HttpUrl;)Lbsgamesdkhttp/w$a;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lbsgamesdkhttp/w$a;->a:Lbsgamesdkhttp/HttpUrl;

    return-object p0
.end method

.method public a(Lbsgamesdkhttp/r;)Lbsgamesdkhttp/w$a;
    .registers 3

    invoke-virtual {p1}, Lbsgamesdkhttp/r;->b()Lbsgamesdkhttp/r$a;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/w$a;->c:Lbsgamesdkhttp/r$a;

    return-object p0
.end method

.method public a(Lbsgamesdkhttp/x;)Lbsgamesdkhttp/w$a;
    .registers 3

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;Lbsgamesdkhttp/x;)Lbsgamesdkhttp/w$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lbsgamesdkhttp/w$a;
    .registers 9

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2f
    :goto_2f
    invoke-static {p1}, Lbsgamesdkhttp/HttpUrl;->e(Ljava/lang/String;)Lbsgamesdkhttp/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_71

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    const-string v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2f

    :cond_71
    invoke-virtual {p0, v0}, Lbsgamesdkhttp/w$a;->a(Lbsgamesdkhttp/HttpUrl;)Lbsgamesdkhttp/w$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lbsgamesdkhttp/x;)Lbsgamesdkhttp/w$a;
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    if-eqz p2, :cond_3f

    invoke-static {p1}, Lbsgamesdkhttp/a/c/k;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    if-nez p2, :cond_66

    invoke-static {p1}, Lbsgamesdkhttp/a/c/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    iput-object p1, p0, Lbsgamesdkhttp/w$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lbsgamesdkhttp/w$a;->d:Lbsgamesdkhttp/x;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/w$a;
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/w$a;->c:Lbsgamesdkhttp/r$a;

    invoke-virtual {v0, p1, p2}, Lbsgamesdkhttp/r$a;->c(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/r$a;

    return-object p0
.end method

.method public a()Lbsgamesdkhttp/w;
    .registers 3

    iget-object v0, p0, Lbsgamesdkhttp/w$a;->a:Lbsgamesdkhttp/HttpUrl;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lbsgamesdkhttp/w;

    invoke-direct {v0, p0}, Lbsgamesdkhttp/w;-><init>(Lbsgamesdkhttp/w$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lbsgamesdkhttp/w$a;
    .registers 3

    iget-object v0, p0, Lbsgamesdkhttp/w$a;->c:Lbsgamesdkhttp/r$a;

    invoke-virtual {v0, p1}, Lbsgamesdkhttp/r$a;->b(Ljava/lang/String;)Lbsgamesdkhttp/r$a;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/w$a;
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/w$a;->c:Lbsgamesdkhttp/r$a;

    invoke-virtual {v0, p1, p2}, Lbsgamesdkhttp/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/r$a;

    return-object p0
.end method
