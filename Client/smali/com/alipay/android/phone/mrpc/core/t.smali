.class public abstract Lcom/alipay/android/phone/mrpc/core/t;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/alipay/android/phone/mrpc/core/ac;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/t;->b:Z

    return-void
.end method


# virtual methods
.method public final f()Lcom/alipay/android/phone/mrpc/core/ac;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/t;->a:Lcom/alipay/android/phone/mrpc/core/ac;

    return-object v0
.end method

.method public final g()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/t;->b:Z

    return-void
.end method

.method public final h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/t;->b:Z

    return v0
.end method
