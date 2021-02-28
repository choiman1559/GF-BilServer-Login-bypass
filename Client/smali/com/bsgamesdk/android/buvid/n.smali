.class public final Lcom/bsgamesdk/android/buvid/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "012345678912345"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "812345678912345"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bsgamesdk/android/buvid/n;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    sget-object v2, Lcom/bsgamesdk/android/buvid/n;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_13

    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_f
    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    const/4 v0, 0x1

    goto :goto_f
.end method
