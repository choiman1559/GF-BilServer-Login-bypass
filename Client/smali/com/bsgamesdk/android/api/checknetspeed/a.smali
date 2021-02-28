.class public Lcom/bsgamesdk/android/api/checknetspeed/a;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/bsgamesdk/android/api/checknetspeed/a;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/qiniu/android/dns/Record;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Lcom/bsgamesdk/android/api/checknetspeed/b;

.field c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/bsgamesdk/android/api/checknetspeed/a;->d:Lcom/bsgamesdk/android/api/checknetspeed/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/checknetspeed/a;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/checknetspeed/a;->b:Lcom/bsgamesdk/android/api/checknetspeed/b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bsgamesdk/android/api/checknetspeed/a;->c:I

    invoke-direct {p0}, Lcom/bsgamesdk/android/api/checknetspeed/a;->c()V

    return-void
.end method

.method public static a()Lcom/bsgamesdk/android/api/checknetspeed/a;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/api/checknetspeed/a;->d:Lcom/bsgamesdk/android/api/checknetspeed/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bsgamesdk/android/api/checknetspeed/a;

    invoke-direct {v0}, Lcom/bsgamesdk/android/api/checknetspeed/a;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/api/checknetspeed/a;->d:Lcom/bsgamesdk/android/api/checknetspeed/a;

    :cond_b
    sget-object v0, Lcom/bsgamesdk/android/api/checknetspeed/a;->d:Lcom/bsgamesdk/android/api/checknetspeed/a;

    return-object v0
.end method

.method private c()V
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/api/checknetspeed/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/checknetspeed/b;-><init>(I)V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/checknetspeed/a;->b:Lcom/bsgamesdk/android/api/checknetspeed/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/checknetspeed/a;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/qiniu/android/dns/Record;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/checknetspeed/a$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/bsgamesdk/android/api/checknetspeed/a$1;-><init>(Lcom/bsgamesdk/android/api/checknetspeed/a;Ljava/util/HashMap;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/api/checknetspeed/a;->b:Lcom/bsgamesdk/android/api/checknetspeed/b;

    invoke-virtual {v1, p2, v0, p3}, Lcom/bsgamesdk/android/api/checknetspeed/b;->a(Ljava/util/HashMap;Ljava/util/concurrent/Callable;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
