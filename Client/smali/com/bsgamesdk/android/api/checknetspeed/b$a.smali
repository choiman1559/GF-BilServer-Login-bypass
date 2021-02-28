.class Lcom/bsgamesdk/android/api/checknetspeed/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/api/checknetspeed/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/api/checknetspeed/b;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/checknetspeed/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/api/checknetspeed/b$a;->a:Lcom/bsgamesdk/android/api/checknetspeed/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/qiniu/android/dns/Record;

    iget-wide v0, p1, Lcom/qiniu/android/dns/Record;->requestime:J

    check-cast p2, Lcom/qiniu/android/dns/Record;

    iget-wide v2, p2, Lcom/qiniu/android/dns/Record;->requestime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
