.class public Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private _callbackId:Ljava/lang/String;

.field private _invocationId:I

.field private _invoked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback$1;

    invoke-direct {v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback$1;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_invoked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_invocationId:I

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    iput p2, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_invocationId:I

    return-void
.end method

.method private varargs invoke(Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;Ljava/lang/Enum;[Ljava/lang/Object;)V
    .registers 7

    iget-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_invoked:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_invoked:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v1, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_invocationId:I

    invoke-static {v1}, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->getInvocationById(I)Lcom/unity3d/splash/services/core/webview/bridge/Invocation;

    move-result-object v1

    if-nez v1, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t get batch with id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->getInvocationId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_10

    :cond_45
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->setInvocationResponse(Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_10
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const v0, 0xb26e

    return v0
.end method

.method public varargs error(Ljava/lang/Enum;[Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;->ERROR:Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    invoke-direct {p0, v0, p1, p2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke(Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;Ljava/lang/Enum;[Ljava/lang/Object;)V

    return-void
.end method

.method public getCallbackId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getInvocationId()I
    .registers 2

    iget v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_invocationId:I

    return v0
.end method

.method public varargs invoke([Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;->OK:Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke(Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;Ljava/lang/Enum;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_invoked:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_a
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_invocationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_a
.end method
