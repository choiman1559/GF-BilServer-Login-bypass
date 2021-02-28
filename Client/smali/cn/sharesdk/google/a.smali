.class public Lcn/sharesdk/google/a;
.super Lcn/sharesdk/framework/b;
.source "GoogleHelper.java"


# static fields
.field private static b:Lcn/sharesdk/google/a;


# instance fields
.field private c:Lcn/sharesdk/framework/a/a;

.field private d:Lcn/sharesdk/google/e;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 5

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://www.googleapis.com/auth/plus.me"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://www.googleapis.com/auth/plus.login"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/sharesdk/google/a;->h:[Ljava/lang/String;

    .line 50
    new-instance v0, Lcn/sharesdk/google/e;

    invoke-direct {v0}, Lcn/sharesdk/google/e;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/google/a;->d:Lcn/sharesdk/google/e;

    .line 51
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/google/a;->c:Lcn/sharesdk/framework/a/a;

    .line 52
    return-void
.end method

.method public static declared-synchronized a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/google/a;
    .registers 3

    .prologue
    .line 42
    const-class v1, Lcn/sharesdk/google/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn/sharesdk/google/a;->b:Lcn/sharesdk/google/a;

    if-nez v0, :cond_e

    .line 43
    new-instance v0, Lcn/sharesdk/google/a;

    invoke-direct {v0, p0}, Lcn/sharesdk/google/a;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/google/a;->b:Lcn/sharesdk/google/a;

    .line 45
    :cond_e
    sget-object v0, Lcn/sharesdk/google/a;->b:Lcn/sharesdk/google/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcn/sharesdk/google/a;->d:Lcn/sharesdk/google/e;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/google/e;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/a;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 91
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcn/sharesdk/google/a;->e:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcn/sharesdk/google/b;->a()I

    move-result v0

    .line 155
    if-eqz v0, :cond_c

    .line 156
    new-instance v0, Lcn/sharesdk/google/GooglePlusClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/google/GooglePlusClientNotExistException;-><init>()V

    throw v0

    .line 159
    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v1, "filePath"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v1, "action"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcn/sharesdk/google/a;->d:Lcn/sharesdk/google/e;

    iget-object v2, p0, Lcn/sharesdk/google/a;->a:Lcn/sharesdk/framework/Platform;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Lcn/sharesdk/google/e;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/PlatformDb;)V

    .line 165
    iget-object v1, p0, Lcn/sharesdk/google/a;->d:Lcn/sharesdk/google/e;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/google/e;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lcn/sharesdk/google/b;->a()I

    move-result v0

    .line 138
    if-eqz v0, :cond_c

    .line 139
    new-instance v0, Lcn/sharesdk/google/GooglePlusClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/google/GooglePlusClientNotExistException;-><init>()V

    throw v0

    .line 142
    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "imageUrl"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, "imagePath"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, "action"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcn/sharesdk/google/a;->d:Lcn/sharesdk/google/e;

    iget-object v2, p0, Lcn/sharesdk/google/a;->a:Lcn/sharesdk/framework/Platform;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p4, v3}, Lcn/sharesdk/google/e;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/PlatformDb;)V

    .line 149
    iget-object v1, p0, Lcn/sharesdk/google/a;->d:Lcn/sharesdk/google/e;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/google/e;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 63
    if-eqz p1, :cond_7

    array-length v0, p1

    if-lez v0, :cond_7

    .line 64
    iput-object p1, p0, Lcn/sharesdk/google/a;->h:[Ljava/lang/String;

    .line 66
    :cond_7
    return-void
.end method

.method public a([Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/PlatformDb;)V
    .registers 7

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    const-string v1, "action"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcn/sharesdk/google/a;->d:Lcn/sharesdk/google/e;

    iget-object v2, p0, Lcn/sharesdk/google/a;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v2, p2, p3}, Lcn/sharesdk/google/e;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/PlatformDb;)V

    .line 192
    iget-object v1, p0, Lcn/sharesdk/google/a;->d:Lcn/sharesdk/google/e;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/google/e;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 193
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcn/sharesdk/google/a;->d:Lcn/sharesdk/google/e;

    if-eqz v0, :cond_9

    .line 203
    iget-object v0, p0, Lcn/sharesdk/google/a;->d:Lcn/sharesdk/google/e;

    invoke-virtual {v0}, Lcn/sharesdk/google/e;->finish()V

    .line 205
    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcn/sharesdk/google/a;->f:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 7

    .prologue
    .line 171
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    const-string v1, "https://plus.google.com/share?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {p1, v2}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 175
    const-string v1, "&url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {p2, v2}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_2e
    new-instance v1, Lcn/sharesdk/google/WebShareActivity;

    invoke-direct {v1}, Lcn/sharesdk/google/WebShareActivity;-><init>()V

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/sharesdk/google/WebShareActivity;->setScheme(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, p3}, Lcn/sharesdk/google/WebShareActivity;->setSharedCallback(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 180
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/google/WebShareActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_45} :catch_46

    .line 186
    :cond_45
    :goto_45
    return-void

    .line 181
    :catch_46
    move-exception v0

    .line 182
    if-eqz p3, :cond_45

    .line 183
    iget-object v1, p0, Lcn/sharesdk/google/a;->a:Lcn/sharesdk/framework/Platform;

    const/16 v2, 0x9

    invoke-interface {p3, v1, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_45
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "code"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_id"

    iget-object v3, p0, Lcn/sharesdk/google/a;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcn/sharesdk/google/a;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v1, "https://www.googleapis.com/oauth2/v4/token"

    .line 100
    iget-object v2, p0, Lcn/sharesdk/google/a;->c:Lcn/sharesdk/framework/a/a;

    const-string v3, "/oauth2/v4/token"

    invoke-virtual {p0}, Lcn/sharesdk/google/a;->c()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 101
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcn/sharesdk/google/a;->g:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v1, p0, Lcn/sharesdk/google/a;->g:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 111
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "access_token"

    iget-object v3, p0, Lcn/sharesdk/google/a;->g:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.googleapis.com/plus/v1/people/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcn/sharesdk/google/a;->c:Lcn/sharesdk/framework/a/a;

    const-string v3, "/plus/v1/people/"

    invoke-virtual {p0}, Lcn/sharesdk/google/a;->c()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_40

    .line 116
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 118
    :goto_3f
    return-object v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public f(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v1, p0, Lcn/sharesdk/google/a;->g:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 124
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "access_token"

    iget-object v3, p0, Lcn/sharesdk/google/a;->g:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.googleapis.com/plus/v1/people/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/people/visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcn/sharesdk/google/a;->c:Lcn/sharesdk/framework/a/a;

    const-string v3, "/people/visible"

    invoke-virtual {p0}, Lcn/sharesdk/google/a;->c()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_46

    .line 129
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 131
    :goto_45
    return-object v0

    :cond_46
    const/4 v0, 0x0

    goto :goto_45
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "response_type"

    const-string v3, "code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_id"

    iget-object v3, p0, Lcn/sharesdk/google/a;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcn/sharesdk/google/a;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcn/sharesdk/google/a;->h:[Ljava/lang/String;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcn/sharesdk/google/a;->h:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_44

    .line 74
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "scope"

    const-string v3, " "

    iget-object v4, p0, Lcn/sharesdk/google/a;->h:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_44
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

    .line 77
    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 82
    new-instance v0, Lcn/sharesdk/google/GooglePlusAuthorizeWebviewClient;

    invoke-direct {v0, p1}, Lcn/sharesdk/google/GooglePlusAuthorizeWebviewClient;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcn/sharesdk/google/a;->f:Ljava/lang/String;

    return-object v0
.end method
