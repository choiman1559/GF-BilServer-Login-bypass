.class public interface abstract Lbsgamesdkhttp/o;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbsgamesdkhttp/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lbsgamesdkhttp/o$1;

    invoke-direct {v0}, Lbsgamesdkhttp/o$1;-><init>()V

    sput-object v0, Lbsgamesdkhttp/o;->a:Lbsgamesdkhttp/o;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method
