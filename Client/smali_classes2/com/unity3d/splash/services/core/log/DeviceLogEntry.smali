.class Lcom/unity3d/splash/services/core/log/DeviceLogEntry;
.super Ljava/lang/Object;


# instance fields
.field private _logLevel:Lcom/unity3d/splash/services/core/log/DeviceLogLevel;

.field private _originalMessage:Ljava/lang/String;

.field private _stackTraceElement:Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/unity3d/splash/services/core/log/DeviceLogLevel;Ljava/lang/String;Ljava/lang/StackTraceElement;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->_logLevel:Lcom/unity3d/splash/services/core/log/DeviceLogLevel;

    iput-object v0, p0, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->_originalMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    iput-object p1, p0, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->_logLevel:Lcom/unity3d/splash/services/core/log/DeviceLogLevel;

    iput-object p2, p0, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->_originalMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public getLogLevel()Lcom/unity3d/splash/services/core/log/DeviceLogLevel;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->_logLevel:Lcom/unity3d/splash/services/core/log/DeviceLogLevel;

    return-object v0
.end method

.method public getParsedMessage()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->_originalMessage:Ljava/lang/String;

    const-string v3, "UnknownClass"

    const-string v2, "unknownMethod"

    const/4 v1, -0x1

    iget-object v4, p0, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    if-eqz v4, :cond_1d

    iget-object v1, p0, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    :cond_1d
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " :: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_34
    if-nez v0, :cond_38

    const-string v0, ""

    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " (line:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
