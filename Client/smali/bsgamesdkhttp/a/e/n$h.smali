.class public Lbsgamesdkhttp/a/e/n$h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/e/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field a:Ljava/net/Socket;

.field b:Ljava/lang/String;

.field c:Lbsgamesdkio/e;

.field d:Lbsgamesdkio/d;

.field e:Lbsgamesdkhttp/a/e/n$i;

.field f:Lbsgamesdkhttp/a/e/h;

.field g:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lbsgamesdkhttp/a/e/n$i;->f:Lbsgamesdkhttp/a/e/n$i;

    iput-object v0, p0, Lbsgamesdkhttp/a/e/n$h;->e:Lbsgamesdkhttp/a/e/n$i;

    sget-object v0, Lbsgamesdkhttp/a/e/h;->a:Lbsgamesdkhttp/a/e/h;

    iput-object v0, p0, Lbsgamesdkhttp/a/e/n$h;->f:Lbsgamesdkhttp/a/e/h;

    iput-boolean p1, p0, Lbsgamesdkhttp/a/e/n$h;->g:Z

    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/a/e/n$i;)Lbsgamesdkhttp/a/e/n$h;
    .registers 2

    iput-object p1, p0, Lbsgamesdkhttp/a/e/n$h;->e:Lbsgamesdkhttp/a/e/n$i;

    return-object p0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Lbsgamesdkio/e;Lbsgamesdkio/d;)Lbsgamesdkhttp/a/e/n$h;
    .registers 5

    iput-object p1, p0, Lbsgamesdkhttp/a/e/n$h;->a:Ljava/net/Socket;

    iput-object p2, p0, Lbsgamesdkhttp/a/e/n$h;->b:Ljava/lang/String;

    iput-object p3, p0, Lbsgamesdkhttp/a/e/n$h;->c:Lbsgamesdkio/e;

    iput-object p4, p0, Lbsgamesdkhttp/a/e/n$h;->d:Lbsgamesdkio/d;

    return-object p0
.end method

.method public a()Lbsgamesdkhttp/a/e/n;
    .registers 2

    new-instance v0, Lbsgamesdkhttp/a/e/n;

    invoke-direct {v0, p0}, Lbsgamesdkhttp/a/e/n;-><init>(Lbsgamesdkhttp/a/e/n$h;)V

    return-object v0
.end method
