.class Lcom/tencent/tp/MainThreadDispatcher2$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tp/MainThreadDispatcher2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tp/MainThreadDispatcher2$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/tp/MainThreadDispatcher2$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tp/MainThreadDispatcher2;->access$000(Ljava/lang/String;)V

    return-void
.end method
