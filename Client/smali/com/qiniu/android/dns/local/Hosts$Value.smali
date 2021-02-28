.class public Lcom/qiniu/android/dns/local/Hosts$Value;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/dns/local/Hosts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# instance fields
.field public final ip:Ljava/lang/String;

.field public final provider:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/dns/local/Hosts$Value;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/dns/local/Hosts$Value;->ip:Ljava/lang/String;

    iput p2, p0, Lcom/qiniu/android/dns/local/Hosts$Value;->provider:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_b

    instance-of v2, p1, Lcom/qiniu/android/dns/local/Hosts$Value;

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_d
    check-cast p1, Lcom/qiniu/android/dns/local/Hosts$Value;

    iget-object v2, p0, Lcom/qiniu/android/dns/local/Hosts$Value;->ip:Ljava/lang/String;

    iget-object v3, p1, Lcom/qiniu/android/dns/local/Hosts$Value;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget v2, p0, Lcom/qiniu/android/dns/local/Hosts$Value;->provider:I

    iget v3, p1, Lcom/qiniu/android/dns/local/Hosts$Value;->provider:I

    if-eq v2, v3, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
