.class Lcom/ta/utdid2/a/a/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public d:[I

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ta/utdid2/a/a/f$a;->d:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ta/utdid2/a/a/f$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/ta/utdid2/a/a/f$a;-><init>()V

    return-void
.end method
