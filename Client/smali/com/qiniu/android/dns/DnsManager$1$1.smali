.class Lcom/qiniu/android/dns/DnsManager$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/dns/DnsManager$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/qiniu/android/dns/Record;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qiniu/android/dns/DnsManager$1;


# direct methods
.method constructor <init>(Lcom/qiniu/android/dns/DnsManager$1;)V
    .registers 2

    iput-object p1, p0, Lcom/qiniu/android/dns/DnsManager$1$1;->this$1:Lcom/qiniu/android/dns/DnsManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/qiniu/android/dns/Record;Lcom/qiniu/android/dns/Record;)I
    .registers 7

    iget-wide v0, p1, Lcom/qiniu/android/dns/Record;->requestime:J

    iget-wide v2, p2, Lcom/qiniu/android/dns/Record;->requestime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/qiniu/android/dns/Record;

    check-cast p2, Lcom/qiniu/android/dns/Record;

    invoke-virtual {p0, p1, p2}, Lcom/qiniu/android/dns/DnsManager$1$1;->compare(Lcom/qiniu/android/dns/Record;Lcom/qiniu/android/dns/Record;)I

    move-result v0

    return v0
.end method
