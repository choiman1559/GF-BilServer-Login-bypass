.class public Lcom/alipay/android/phone/mrpc/core/u;
.super Ljava/lang/Object;


# instance fields
.field protected a:[B

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/u;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()[B
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/u;->a:[B

    return-object v0
.end method
