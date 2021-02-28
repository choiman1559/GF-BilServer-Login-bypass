.class public interface abstract Lbsgamesdkhttp/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbsgamesdkhttp/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lbsgamesdkhttp/m$1;

    invoke-direct {v0}, Lbsgamesdkhttp/m$1;-><init>()V

    sput-object v0, Lbsgamesdkhttp/m;->a:Lbsgamesdkhttp/m;

    return-void
.end method


# virtual methods
.method public abstract a(Lbsgamesdkhttp/HttpUrl;)Ljava/util/List;
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
.end method

.method public abstract a(Lbsgamesdkhttp/HttpUrl;Ljava/util/List;)V
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
.end method
