.class public Lcom/tencent/wetest/f;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/wetest/f;->a:I

    iput v0, p0, Lcom/tencent/wetest/f;->b:I

    iput v0, p0, Lcom/tencent/wetest/f;->a:I

    iput v0, p0, Lcom/tencent/wetest/f;->b:I

    return-void
.end method

.method constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/wetest/f;->a:I

    iput v0, p0, Lcom/tencent/wetest/f;->b:I

    iput p1, p0, Lcom/tencent/wetest/f;->a:I

    iput p2, p0, Lcom/tencent/wetest/f;->b:I

    return-void
.end method
