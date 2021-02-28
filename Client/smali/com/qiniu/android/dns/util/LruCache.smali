.class public final Lcom/qiniu/android/dns/util/LruCache;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/qiniu/android/dns/util/LruCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput p1, p0, Lcom/qiniu/android/dns/util/LruCache;->size:I

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/qiniu/android/dns/util/LruCache;->size()I

    move-result v0

    iget v1, p0, Lcom/qiniu/android/dns/util/LruCache;->size:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
