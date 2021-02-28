.class Lcom/onevcat/uniwebview/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field static final CRITICAL:I = 0x50

.field static final DEBUG:I = 0xa

.field static final INFO:I = 0x14

.field static final OFF:I = 0x63

.field static final VERBOSE:I

.field private static instance:Lcom/onevcat/uniwebview/Logger;


# instance fields
.field private level:I

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/onevcat/uniwebview/Logger;->instance:Lcom/onevcat/uniwebview/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/onevcat/uniwebview/Logger;->tag:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/onevcat/uniwebview/Logger;->level:I

    .line 25
    return-void
.end method

.method static getInstance()Lcom/onevcat/uniwebview/Logger;
    .registers 3

    .prologue
    .line 29
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->instance:Lcom/onevcat/uniwebview/Logger;

    if-nez v0, :cond_f

    .line 30
    new-instance v0, Lcom/onevcat/uniwebview/Logger;

    const-string v1, "UniWebView"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lcom/onevcat/uniwebview/Logger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onevcat/uniwebview/Logger;->instance:Lcom/onevcat/uniwebview/Logger;

    .line 32
    :cond_f
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->instance:Lcom/onevcat/uniwebview/Logger;

    return-object v0
.end method

.method private log(ILjava/lang/String;)V
    .registers 6
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/Logger;->getLevel()I

    move-result v0

    if-lt p1, v0, :cond_22

    .line 42
    const/16 v0, 0x50

    if-ne p1, v0, :cond_23

    .line 43
    iget-object v0, p0, Lcom/onevcat/uniwebview/Logger;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<UniWebView-Android> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_22
    :goto_22
    return-void

    .line 45
    :cond_23
    iget-object v0, p0, Lcom/onevcat/uniwebview/Logger;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<UniWebView-Android> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method


# virtual methods
.method critical(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    const/16 v0, 0x50

    invoke-direct {p0, v0, p1}, Lcom/onevcat/uniwebview/Logger;->log(ILjava/lang/String;)V

    return-void
.end method

.method debug(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 36
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/onevcat/uniwebview/Logger;->log(ILjava/lang/String;)V

    return-void
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/onevcat/uniwebview/Logger;->level:I

    return v0
.end method

.method info(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lcom/onevcat/uniwebview/Logger;->log(ILjava/lang/String;)V

    return-void
.end method

.method public setLevel(I)V
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/onevcat/uniwebview/Logger;->level:I

    .line 56
    const/16 v0, 0x63

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting logging level to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/onevcat/uniwebview/Logger;->log(ILjava/lang/String;)V

    .line 57
    return-void
.end method

.method verbose(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/onevcat/uniwebview/Logger;->log(ILjava/lang/String;)V

    return-void
.end method
