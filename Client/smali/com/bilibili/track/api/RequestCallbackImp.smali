.class public abstract Lcom/bilibili/track/api/RequestCallbackImp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bilibili/track/api/RequestCallback;


# static fields
.field protected static final ON_FAILED:I = 0x3

.field protected static final ON_FINISHED:I = 0x4

.field protected static final ON_START:I = 0x1

.field protected static final ON_SUCCESS:I = 0x2


# instance fields
.field private mHandler:Lcom/bilibili/track/api/HttpRequestHandler;


# direct methods
.method public constructor <init>(Lcom/bilibili/track/api/HttpRequestHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bilibili/track/api/RequestCallbackImp;->mHandler:Lcom/bilibili/track/api/HttpRequestHandler;

    iget-object v0, p0, Lcom/bilibili/track/api/RequestCallbackImp;->mHandler:Lcom/bilibili/track/api/HttpRequestHandler;

    invoke-virtual {v0, p0}, Lcom/bilibili/track/api/HttpRequestHandler;->setCallback(Lcom/bilibili/track/api/RequestCallback;)V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/api/RequestCallbackImp;->mHandler:Lcom/bilibili/track/api/HttpRequestHandler;

    return-object v0
.end method

.method public abstract onFailed(Ljava/lang/String;)V
.end method

.method public onFinished()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
.end method
