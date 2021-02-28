.class final Lbsgamesdkhttp/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkhttp/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/HttpUrl;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbsgamesdkhttp/HttpUrl;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/l;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbsgamesdkhttp/HttpUrl;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbsgamesdkhttp/HttpUrl;",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/l;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
