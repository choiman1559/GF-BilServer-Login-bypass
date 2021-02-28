.class Lcom/alipay/sdk/app/PayTask$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/app/PayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/PayTask;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/sdk/app/PayTask;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/app/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask$a;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->e:Ljava/lang/String;

    return-void
.end method
