.class public Lcom/unity3d/splash/services/core/request/WebRequestRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final _body:Ljava/lang/String;

.field private _canceled:Z

.field private final _connectTimeout:I

.field private _currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

.field private final _headers:Ljava/util/Map;

.field private final _listener:Lcom/unity3d/splash/services/core/request/IWebRequestListener;

.field private final _readTimeout:I

.field private final _type:Ljava/lang/String;

.field private final _url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Lcom/unity3d/splash/services/core/request/IWebRequestListener;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_canceled:Z

    iput-object p1, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_url:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_type:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_body:Ljava/lang/String;

    iput p4, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_connectTimeout:I

    iput p5, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_readTimeout:I

    iput-object p6, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_headers:Ljava/util/Map;

    iput-object p7, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_listener:Lcom/unity3d/splash/services/core/request/IWebRequestListener;

    return-void
.end method

.method private getResponseHeaders(Landroid/os/Bundle;)Ljava/util/Map;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_34

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_33
    move-object v0, v1

    :cond_34
    return-object v0
.end method

.method private makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;II)V
    .registers 14

    iget-boolean v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_canceled:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    new-instance v0, Lcom/unity3d/splash/services/core/request/WebRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/splash/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    iput-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz p4, :cond_18

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v0, p4}, Lcom/unity3d/splash/services/core/request/WebRequest;->setBody(Ljava/lang/String;)V

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->makeRequest()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_8e
    .catch Lcom/unity3d/splash/services/core/request/NetworkIOException; {:try_start_18 .. :try_end_1d} :catch_bc
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_1d} :catch_ea
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1d} :catch_118

    move-result-object v3

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_39
    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_39

    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v2, v0

    :goto_64
    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_146

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_64

    :catch_8e
    move-exception v0

    const-string v1, "Error completing request"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->onFailed(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_bc
    move-exception v0

    const-string v1, "Error completing request"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/NetworkIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->onFailed(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_ea
    move-exception v0

    const-string v1, "Error completing request"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->onFailed(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_118
    move-exception v0

    const-string v1, "Error completing request"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->onFailed(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_146
    invoke-virtual {v4, v1, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_14b
    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getResponseCode()I

    move-result v0

    invoke-direct {p0, v4}, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->getResponseHeaders(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->onSucceed(Ljava/lang/String;ILjava/util/Map;)V

    goto/16 :goto_4
.end method

.method private onFailed(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_listener:Lcom/unity3d/splash/services/core/request/IWebRequestListener;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_url:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/unity3d/splash/services/core/request/IWebRequestListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onSucceed(Ljava/lang/String;ILjava/util/Map;)V
    .registers 6

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_listener:Lcom/unity3d/splash/services/core/request/IWebRequestListener;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_url:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/unity3d/splash/services/core/request/IWebRequestListener;->onComplete(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handling request message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :try_start_20
    iget-object v1, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_type:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_headers:Ljava/util/Map;

    iget-object v4, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_body:Ljava/lang/String;

    iget v5, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_connectTimeout:I

    iget v6, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_readTimeout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;II)V
    :try_end_30
    .catch Ljava/net/MalformedURLException; {:try_start_20 .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v0

    const-string v1, "Malformed URL"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v0, "Malformed URL"

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->onFailed(Ljava/lang/String;)V

    goto :goto_30
.end method

.method public setCancelStatus(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_canceled:Z

    iget-boolean v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_canceled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->cancel()V

    :cond_f
    return-void
.end method
