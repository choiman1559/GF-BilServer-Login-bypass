.class public Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;
.super Ljava/lang/Object;
.source "Unity3dPlatformActionListener.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# instance fields
.field private reqID:I

.field private u3dCallback:Ljava/lang/String;

.field private u3dGameObject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "u3dGameObject"    # Ljava/lang/String;
    .param p2, "u3dCallback"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->u3dGameObject:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->u3dCallback:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private javaActionResToCS(Lcn/sharesdk/framework/Platform;I)Ljava/lang/String;
    .registers 8
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 73
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/sharesdk/framework/ShareSDK;->platformNameToId(Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, "platformId":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "reqID"

    iget v4, p0, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->reqID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v3, "platform"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v3, "action"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v3, "status"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 80
    .local v0, "hashon":Lcom/mob/tools/utils/Hashon;
    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private javaActionResToCS(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)Ljava/lang/String;
    .registers 9
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/sharesdk/framework/ShareSDK;->platformNameToId(Ljava/lang/String;)I

    move-result v2

    .line 49
    .local v2, "platformId":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "reqID"

    iget v4, p0, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->reqID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v3, "platform"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "action"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v3, "status"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v3, "res"

    invoke-direct {p0, p3}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->throwableToMap(Ljava/lang/Throwable;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 56
    .local v0, "hashon":Lcom/mob/tools/utils/Hashon;
    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private javaActionResToCS(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)Ljava/lang/String;
    .registers 9
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 61
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/sharesdk/framework/ShareSDK;->platformNameToId(Ljava/lang/String;)I

    move-result v2

    .line 62
    .local v2, "platformId":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "reqID"

    iget v4, p0, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->reqID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v3, "platform"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v3, "action"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v3, "status"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v3, "res"

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 69
    .local v0, "hashon":Lcom/mob/tools/utils/Hashon;
    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private throwableToMap(Ljava/lang/Throwable;)Ljava/util/HashMap;
    .registers 12
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "msg"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v4, "traces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_19
    if-lt v5, v7, :cond_30

    .line 95
    const-string v5, "stack"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 97
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_2f

    .line 98
    const-string v5, "cause"

    invoke-direct {p0, v0}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->throwableToMap(Ljava/lang/Throwable;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_2f
    return-object v2

    .line 87
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_30
    aget-object v3, v6, v5

    .line 88
    .local v3, "trace":Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v1, "element":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "cls"

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v8, "method"

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v8, "file"

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v8, "line"

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v5, v5, 0x1

    goto :goto_19
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 6
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->javaActionResToCS(Lcn/sharesdk/framework/Platform;I)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "resp":Ljava/lang/String;
    iget-object v1, p0, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->u3dGameObject:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->u3dCallback:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 7
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->javaActionResToCS(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "resp":Ljava/lang/String;
    iget-object v1, p0, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->u3dGameObject:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->u3dCallback:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 7
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->javaActionResToCS(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "resp":Ljava/lang/String;
    iget-object v1, p0, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->u3dGameObject:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->u3dCallback:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public setReqID(I)V
    .registers 2
    .param p1, "reqID"    # I

    .prologue
    .line 25
    iput p1, p0, Lcn/sharesdk/unity3d/Unity3dPlatformActionListener;->reqID:I

    .line 26
    return-void
.end method
