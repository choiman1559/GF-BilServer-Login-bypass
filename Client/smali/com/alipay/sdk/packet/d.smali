.class final Lcom/alipay/sdk/packet/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:[B


# direct methods
.method constructor <init>(Z[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/alipay/sdk/packet/d;->a:Z

    iput-object p2, p0, Lcom/alipay/sdk/packet/d;->b:[B

    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/sdk/packet/d;->a:Z

    return v0
.end method

.method b()[B
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/packet/d;->b:[B

    return-object v0
.end method
