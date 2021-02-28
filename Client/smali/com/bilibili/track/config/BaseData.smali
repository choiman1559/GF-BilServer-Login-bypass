.class public Lcom/bilibili/track/config/BaseData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private code:I

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    iget v0, p0, Lcom/bilibili/track/config/BaseData;->code:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bilibili/track/config/BaseData;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/config/BaseData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .registers 2

    iput p1, p0, Lcom/bilibili/track/config/BaseData;->code:I

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bilibili/track/config/BaseData;->data:Ljava/lang/Object;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/config/BaseData;->message:Ljava/lang/String;

    return-void
.end method
