.class public Lcn/sharesdk/framework/ShareSDK;
.super Ljava/lang/Object;
.source "ShareSDK.java"


# static fields
.field private static a:Lcn/sharesdk/framework/f;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcn/sharesdk/framework/ShareSDK;->b:Z

    .line 14
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 216
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 217
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 255
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 256
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 250
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 243
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 244
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/sharesdk/framework/f;->a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(II)V
    .registers 3

    .prologue
    .line 204
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 205
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/f;->a(II)V

    .line 206
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 199
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 200
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method static a()Z
    .registers 1

    .prologue
    .line 226
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 227
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0}, Lcn/sharesdk/framework/f;->c()Z

    move-result v0

    return v0
.end method

.method static a(Ljava/util/HashMap;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 233
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->a(Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 210
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 211
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()V
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    if-nez v0, :cond_e

    .line 30
    new-instance v0, Lcn/sharesdk/framework/f;

    invoke-direct {v0}, Lcn/sharesdk/framework/f;-><init>()V

    .line 31
    invoke-virtual {v0}, Lcn/sharesdk/framework/f;->startThread()V

    .line 32
    sput-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    .line 34
    :cond_e
    return-void
.end method

.method static b(Ljava/util/HashMap;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 238
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->b(Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public static closeDebug()V
    .registers 1

    .prologue
    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Lcn/sharesdk/framework/ShareSDK;->b:Z

    .line 190
    return-void
.end method

.method public static deleteCache()V
    .registers 1

    .prologue
    .line 120
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 121
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0}, Lcn/sharesdk/framework/f;->d()V

    .line 122
    return-void
.end method

.method public static disableStatistics()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->enableStatistics(Z)V

    .line 21
    return-void
.end method

.method public static enableStatistics(Z)V
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 24
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 25
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->a(Z)V

    .line 26
    return-void
.end method

.method public static getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 145
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->a(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getPlatformList()[Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 133
    const-class v1, Lcn/sharesdk/framework/ShareSDK;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 134
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0}, Lcn/sharesdk/framework/f;->a()[Lcn/sharesdk/framework/Platform;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSDKVersionCode()I
    .registers 1

    .prologue
    .line 91
    const/16 v0, 0x4d

    return v0
.end method

.method public static getSDKVersionName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 86
    const-string v0, "3.1.1"

    return-object v0
.end method

.method public static getService(Ljava/lang/Class;)Lcn/sharesdk/framework/Service;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/sharesdk/framework/Service;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "name":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 60
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->c(Ljava/lang/Class;)Lcn/sharesdk/framework/Service;

    move-result-object v0

    return-object v0
.end method

.method public static isDebug()Z
    .registers 1

    .prologue
    .line 193
    sget-boolean v0, Lcn/sharesdk/framework/ShareSDK;->b:Z

    return v0
.end method

.method public static isRemoveCookieOnAuthorize()Z
    .registers 1

    .prologue
    .line 183
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 184
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0}, Lcn/sharesdk/framework/f;->b()Z

    move-result v0

    return v0
.end method

.method public static logApiEvent(Ljava/lang/String;I)V
    .registers 3
    .param p0, "api"    # Ljava/lang/String;
    .param p1, "platformId"    # I

    .prologue
    .line 154
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 155
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/f;->a(Ljava/lang/String;I)V

    .line 156
    return-void
.end method

.method public static logDemoEvent(ILcn/sharesdk/framework/Platform;)V
    .registers 3
    .param p0, "id"    # I
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 149
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 150
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/f;->a(ILcn/sharesdk/framework/Platform;)V

    .line 151
    return-void
.end method

.method public static platformIdToName(I)Ljava/lang/String;
    .registers 2
    .param p0, "platformId"    # I

    .prologue
    .line 172
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 173
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static platformNameToId(Ljava/lang/String;)I
    .registers 2
    .param p0, "platformName"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 179
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static registerPlatform(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "platform":Ljava/lang/Class;, "Ljava/lang/Class<+Lcn/sharesdk/framework/CustomPlatform;>;"
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 71
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->d(Ljava/lang/Class;)V

    .line 72
    return-void
.end method

.method public static registerService(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<+Lcn/sharesdk/framework/Service;>;"
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 44
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->a(Ljava/lang/Class;)V

    .line 45
    return-void
.end method

.method public static removeCookieOnAuthorize(Z)V
    .registers 2
    .param p0, "remove"    # Z

    .prologue
    .line 112
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 113
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->b(Z)V

    .line 114
    return-void
.end method

.method public static setConnTimeout(I)V
    .registers 2
    .param p0, "timeout"    # I

    .prologue
    .line 96
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 97
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->a(I)V

    .line 98
    return-void
.end method

.method public static setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 3
    .param p0, "platform"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "devInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 167
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/f;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 168
    return-void
.end method

.method public static setReadTimeout(I)V
    .registers 2
    .param p0, "timeout"    # I

    .prologue
    .line 102
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 103
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->b(I)V

    .line 104
    return-void
.end method

.method public static unregisterPlatform(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "platform":Ljava/lang/Class;, "Ljava/lang/Class<+Lcn/sharesdk/framework/CustomPlatform;>;"
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 81
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->e(Ljava/lang/Class;)V

    .line 82
    return-void
.end method

.method public static unregisterService(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<+Lcn/sharesdk/framework/Service;>;"
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    .line 54
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/f;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/f;->b(Ljava/lang/Class;)V

    .line 55
    return-void
.end method
