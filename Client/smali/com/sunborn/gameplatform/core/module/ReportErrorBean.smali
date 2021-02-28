.class public Lcom/sunborn/gameplatform/core/module/ReportErrorBean;
.super Ljava/lang/Object;
.source "ReportErrorBean.java"


# instance fields
.field private error_msg:Ljava/lang/String;

.field private error_no:I

.field private protocol_id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError_msg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/module/ReportErrorBean;->error_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getError_no()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/sunborn/gameplatform/core/module/ReportErrorBean;->error_no:I

    return v0
.end method

.method public getProtocol_id()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/sunborn/gameplatform/core/module/ReportErrorBean;->protocol_id:I

    return v0
.end method

.method public setError_msg(Ljava/lang/String;)V
    .registers 2
    .param p1, "error_msg"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/sunborn/gameplatform/core/module/ReportErrorBean;->error_msg:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setError_no(I)V
    .registers 2
    .param p1, "error_no"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/sunborn/gameplatform/core/module/ReportErrorBean;->error_no:I

    .line 30
    return-void
.end method

.method public setProtocol_id(I)V
    .registers 2
    .param p1, "protocol_id"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/sunborn/gameplatform/core/module/ReportErrorBean;->protocol_id:I

    .line 22
    return-void
.end method
