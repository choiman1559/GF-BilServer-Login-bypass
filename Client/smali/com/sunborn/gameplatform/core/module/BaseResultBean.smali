.class public Lcom/sunborn/gameplatform/core/module/BaseResultBean;
.super Ljava/lang/Object;
.source "BaseResultBean.java"

# interfaces
.implements Lcom/lohanry/android/framework/model/BaseBean;


# instance fields
.field private errorReport:Lcom/sunborn/gameplatform/core/module/ReportErrorBean;

.field private mErrorCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/module/BaseResultBean;->mErrorCode:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/sunborn/gameplatform/core/module/BaseResultBean;->mErrorCode:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private getErrorReport()Lcom/sunborn/gameplatform/core/module/ReportErrorBean;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/module/BaseResultBean;->errorReport:Lcom/sunborn/gameplatform/core/module/ReportErrorBean;

    return-object v0
.end method


# virtual methods
.method public analyseData()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sunborn/gameplatform/core/module/BaseResultBean;->getErrorReport()Lcom/sunborn/gameplatform/core/module/ReportErrorBean;

    move-result-object v0

    if-nez v0, :cond_b

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/module/BaseResultBean;->mErrorCode:Ljava/lang/String;

    .line 31
    :goto_a
    return-void

    .line 29
    :cond_b
    invoke-direct {p0}, Lcom/sunborn/gameplatform/core/module/BaseResultBean;->getErrorReport()Lcom/sunborn/gameplatform/core/module/ReportErrorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/module/ReportErrorBean;->getError_msg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string v0, "0"

    :goto_17
    iput-object v0, p0, Lcom/sunborn/gameplatform/core/module/BaseResultBean;->mErrorCode:Ljava/lang/String;

    goto :goto_a

    :cond_1a
    invoke-direct {p0}, Lcom/sunborn/gameplatform/core/module/BaseResultBean;->getErrorReport()Lcom/sunborn/gameplatform/core/module/ReportErrorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/module/ReportErrorBean;->getError_msg()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public getErrorCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/module/BaseResultBean;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorReport(Lcom/sunborn/gameplatform/core/module/ReportErrorBean;)V
    .registers 2
    .param p1, "reportError"    # Lcom/sunborn/gameplatform/core/module/ReportErrorBean;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sunborn/gameplatform/core/module/BaseResultBean;->errorReport:Lcom/sunborn/gameplatform/core/module/ReportErrorBean;

    .line 49
    return-void
.end method
