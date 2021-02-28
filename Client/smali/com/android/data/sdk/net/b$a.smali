.class public Lcom/android/data/sdk/net/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/data/sdk/net/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/android/data/sdk/api/b;

.field private c:Lcom/android/data/sdk/domain/model/RuntimeThread;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/data/sdk/net/b$a;->a:Z

    sget-object v0, Lcom/android/data/sdk/domain/model/RuntimeThread;->MAIN:Lcom/android/data/sdk/domain/model/RuntimeThread;

    iput-object v0, p0, Lcom/android/data/sdk/net/b$a;->c:Lcom/android/data/sdk/domain/model/RuntimeThread;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/data/sdk/domain/model/RuntimeThread;Lcom/android/data/sdk/api/b;)Lcom/android/data/sdk/net/b$a;
    .registers 3

    iput-object p1, p0, Lcom/android/data/sdk/net/b$a;->c:Lcom/android/data/sdk/domain/model/RuntimeThread;

    iput-object p2, p0, Lcom/android/data/sdk/net/b$a;->b:Lcom/android/data/sdk/api/b;

    return-object p0
.end method

.method public a(Z)Lcom/android/data/sdk/net/b$a;
    .registers 2

    iput-boolean p1, p0, Lcom/android/data/sdk/net/b$a;->a:Z

    return-object p0
.end method

.method public a()Lcom/android/data/sdk/net/b;
    .registers 6

    new-instance v0, Lcom/android/data/sdk/net/b;

    iget-boolean v1, p0, Lcom/android/data/sdk/net/b$a;->a:Z

    iget-object v2, p0, Lcom/android/data/sdk/net/b$a;->c:Lcom/android/data/sdk/domain/model/RuntimeThread;

    iget-object v3, p0, Lcom/android/data/sdk/net/b$a;->b:Lcom/android/data/sdk/api/b;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/data/sdk/net/b;-><init>(ZLcom/android/data/sdk/domain/model/RuntimeThread;Lcom/android/data/sdk/api/b;Lcom/android/data/sdk/net/b$1;)V

    return-object v0
.end method
