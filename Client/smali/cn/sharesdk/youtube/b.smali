.class public Lcn/sharesdk/youtube/b;
.super Lcn/sharesdk/framework/b;
.source "YoutubeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/youtube/b$a;
    }
.end annotation


# static fields
.field private static volatile g:Lcn/sharesdk/youtube/b;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private h:Lcn/sharesdk/framework/a/a;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcn/sharesdk/framework/PlatformActionListener;

.field private l:Lcom/mob/tools/network/OnReadListener;

.field private m:Lcn/sharesdk/youtube/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcn/sharesdk/youtube/b;->g:Lcn/sharesdk/youtube/b;

    return-void
.end method

.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 5

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://www.googleapis.com/auth/youtube"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://www.googleapis.com/auth/youtube.upload"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "https://www.googleapis.com/auth/youtube.readonly"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "https://www.googleapis.com/auth/youtubepartner-channel-audit"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "https://www.googleapis.com/auth/plus.me"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/sharesdk/youtube/b;->e:[Ljava/lang/String;

    .line 83
    new-instance v0, Lcn/sharesdk/youtube/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/youtube/b$a;-><init>(Lcn/sharesdk/youtube/b;Lcn/sharesdk/youtube/b$1;)V

    iput-object v0, p0, Lcn/sharesdk/youtube/b;->m:Lcn/sharesdk/youtube/b$a;

    .line 84
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/youtube/b;->h:Lcn/sharesdk/framework/a/a;

    .line 85
    new-instance v0, Lcn/sharesdk/youtube/b$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/youtube/b$1;-><init>(Lcn/sharesdk/youtube/b;)V

    iput-object v0, p0, Lcn/sharesdk/youtube/b;->l:Lcom/mob/tools/network/OnReadListener;

    .line 91
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/youtube/b;
    .registers 4

    .prologue
    .line 94
    const-class v1, Lcn/sharesdk/youtube/b;

    monitor-enter v1

    .line 95
    :try_start_3
    sget-object v0, Lcn/sharesdk/youtube/b;->g:Lcn/sharesdk/youtube/b;

    if-nez v0, :cond_16

    .line 96
    const-class v2, Lcn/sharesdk/youtube/b;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    .line 97
    :try_start_a
    sget-object v0, Lcn/sharesdk/youtube/b;->g:Lcn/sharesdk/youtube/b;

    if-nez v0, :cond_15

    .line 98
    new-instance v0, Lcn/sharesdk/youtube/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/youtube/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/youtube/b;->g:Lcn/sharesdk/youtube/b;

    .line 100
    :cond_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1a

    .line 102
    :cond_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_1d

    .line 103
    sget-object v0, Lcn/sharesdk/youtube/b;->g:Lcn/sharesdk/youtube/b;

    return-object v0

    .line 100
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v0

    .line 102
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method static synthetic a(Lcn/sharesdk/youtube/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/sharesdk/youtube/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/youtube/b;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/sharesdk/youtube/b;->k:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 263
    if-nez p2, :cond_4

    .line 285
    :cond_3
    :goto_3
    return-void

    .line 266
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    const-string v0, "video/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 269
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 274
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 276
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "youtube"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 277
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 278
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 280
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 281
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcn/sharesdk/youtube/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 143
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcn/sharesdk/youtube/b;->i:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 213
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 214
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bearer "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcn/sharesdk/youtube/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "Content-Type"

    const-string v3, "application/json;charset=UTF-8"

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "X-Upload-Content-Length"

    invoke-static {p2}, Lcom/mob/tools/utils/ResHelper;->getFileSize(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "file"

    invoke-direct {v3, v0, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcn/sharesdk/youtube/b;->h:Lcn/sharesdk/framework/a/a;

    iget-object v6, p0, Lcn/sharesdk/youtube/b;->l:Lcom/mob/tools/network/OnReadListener;

    move-object v1, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->httpPut(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/OnReadListener;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 220
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 221
    if-nez v0, :cond_6a

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    :cond_6a
    iget-object v1, p0, Lcn/sharesdk/youtube/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 v2, 0x9

    invoke-interface {p3, v1, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 227
    :cond_71
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 8

    .prologue
    .line 158
    :try_start_0
    invoke-virtual {p0, p3, p1, p2, p4}, Lcn/sharesdk/youtube/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 164
    :cond_3
    :goto_3
    return-void

    .line 159
    :catch_4
    move-exception v0

    .line 160
    if-eqz p4, :cond_3

    .line 161
    iget-object v1, p0, Lcn/sharesdk/youtube/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 v2, 0x9

    invoke-interface {p4, v1, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 181
    const-string v6, "public"

    const/4 v7, 0x1

    const-string v8, "youtube"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v8}, Lcn/sharesdk/youtube/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 182
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcn/sharesdk/youtube/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=UTF-8"

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "X-Upload-Content-Length"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "X-Upload-Content-Type"

    const-string v2, "video/*"

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "description"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 196
    const-string v1, "tags"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_60
    const-string v1, "categoryId"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 200
    const-string v2, "privacyStatus"

    invoke-virtual {v1, v2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v2, "embeddable"

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v2, "license"

    invoke-virtual {v1, v2, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 205
    const-string v4, "snippet"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "status"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "https://www.googleapis.com/upload/youtube/v3/videos?uploadType=resumable&part=snippet,status"

    .line 209
    iget-object v0, p0, Lcn/sharesdk/youtube/b;->h:Lcn/sharesdk/framework/a/a;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/sharesdk/youtube/b;->m:Lcn/sharesdk/youtube/b$a;

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->jsonPost(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/HttpResponseCallback;)V

    .line 210
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 127
    if-eqz p1, :cond_7

    array-length v0, p1

    if-lez v0, :cond_7

    .line 128
    iput-object p1, p0, Lcn/sharesdk/youtube/b;->e:[Ljava/lang/String;

    .line 130
    :cond_7
    return-void
.end method

.method public a()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 248
    .line 250
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 251
    const-string v2, "com.google.android.youtube"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 252
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_1b

    .line 256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 259
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18

    .line 253
    :catch_1b
    move-exception v1

    goto :goto_18
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcn/sharesdk/youtube/b;->c:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 169
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    .line 170
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_17

    move-result-object v1

    .line 174
    :goto_8
    iput-object p1, p0, Lcn/sharesdk/youtube/b;->j:Ljava/lang/String;

    .line 175
    iput-object p4, p0, Lcn/sharesdk/youtube/b;->k:Lcn/sharesdk/framework/PlatformActionListener;

    .line 176
    const-string v4, ""

    const/16 v5, 0x16

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/youtube/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    return-void

    .line 171
    :catch_17
    move-exception v0

    .line 172
    const-string v1, "10000"

    goto :goto_8
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcn/sharesdk/youtube/b;->d:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcn/sharesdk/youtube/b;->b:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcn/sharesdk/youtube/b;->f:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "code"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_id"

    iget-object v3, p0, Lcn/sharesdk/youtube/b;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcn/sharesdk/youtube/b;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v1, "https://accounts.google.com/o/oauth2/token"

    .line 152
    iget-object v2, p0, Lcn/sharesdk/youtube/b;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "o/oauth2/token"

    invoke-virtual {p0}, Lcn/sharesdk/youtube/b;->c()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 153
    return-object v0
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_id"

    iget-object v3, p0, Lcn/sharesdk/youtube/b;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcn/sharesdk/youtube/b;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v1, p0, Lcn/sharesdk/youtube/b;->e:[Ljava/lang/String;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcn/sharesdk/youtube/b;->e:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_38

    .line 235
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "scope"

    const-string v3, " "

    iget-object v4, p0, Lcn/sharesdk/youtube/b;->e:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_38
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "response_type"

    const-string v3, "code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "access_type"

    const-string v3, "offline"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://accounts.google.com/o/oauth2/v2/auth?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 138
    new-instance v0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;

    invoke-direct {v0, p1}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcn/sharesdk/youtube/b;->c:Ljava/lang/String;

    return-object v0
.end method
