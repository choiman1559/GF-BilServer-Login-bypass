.class public Lcom/ta/utdid2/device/a;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/a;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/a;->g:Ljava/lang/String;

    iput-wide v2, p0, Lcom/ta/utdid2/device/a;->a:J

    iput-wide v2, p0, Lcom/ta/utdid2/device/a;->b:J

    return-void
.end method


# virtual methods
.method a()J
    .registers 3

    iget-wide v0, p0, Lcom/ta/utdid2/device/a;->a:J

    return-wide v0
.end method

.method a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/ta/utdid2/device/a;->b:J

    return-void
.end method

.method b(J)V
    .registers 4

    iput-wide p1, p0, Lcom/ta/utdid2/device/a;->a:J

    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    return-void
.end method

.method c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ta/utdid2/device/a;->e:Ljava/lang/String;

    return-void
.end method

.method d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ta/utdid2/device/a;->f:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ta/utdid2/device/a;->g:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ta/utdid2/device/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ta/utdid2/device/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ta/utdid2/device/a;->e:Ljava/lang/String;

    return-object v0
.end method
