.class public abstract Lcom/lohanry/android/framework/action/BaseHttpAction;
.super Lcom/lohanry/android/framework/action/BaseAction;
.source "BaseHttpAction.java"

# interfaces
.implements Lcom/lohanry/android/framework/network/callback/BaseRequestResultCallBack;


# instance fields
.field private mBaseHttpFrameworkServiceImp:Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lohanry/android/framework/action/BaseAction;-><init>()V

    .line 21
    sget-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->BASE_HTTP_SERVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->getService(Ljava/lang/String;)Lcom/lohanry/android/framework/service/FrameworkService;

    move-result-object v0

    check-cast v0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

    iput-object v0, p0, Lcom/lohanry/android/framework/action/BaseHttpAction;->mBaseHttpFrameworkServiceImp:Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

    .line 22
    return-void
.end method


# virtual methods
.method protected requestHttp(Lcom/lohanry/android/framework/network/httprequest/BaseRequest;)V
    .registers 3
    .param p1, "request"    # Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    .prologue
    .line 29
    invoke-virtual {p1, p0}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->setBaseRequestResultCallBack(Lcom/lohanry/android/framework/network/callback/BaseRequestResultCallBack;)V

    .line 30
    iget-object v0, p0, Lcom/lohanry/android/framework/action/BaseHttpAction;->mBaseHttpFrameworkServiceImp:Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

    invoke-virtual {v0, p1}, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->requestHttp(Lcom/lohanry/android/framework/network/httprequest/BaseRequest;)V

    .line 31
    return-void
.end method
