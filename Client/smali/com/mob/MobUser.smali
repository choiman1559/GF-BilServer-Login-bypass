.class public final Lcom/mob/MobUser;
.super Ljava/lang/Object;
.source "MobUser.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/MobUser$UserWatcher;,
        Lcom/mob/MobUser$OnUserGotListener;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/MobCommunicator;

.field private static b:Landroid/os/Handler;

.field private static c:Ljava/lang/String;

.field private static d:Lcom/mob/MobUser;


# instance fields
.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/mob/MobUser$UserWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 47
    const-string v0, "009cbd92ccef123be840deec0c6ed0547194c1e471d11b6f375e56038458fb18833e5bab2e1206b261495d7e2d1d9e5aa859e6d4b671a8ca5d78efede48e291a3f"

    .line 50
    const-string v1, "1dfd1d615cb891ce9a76f42d036af7fce5f8b8efaa11b2f42590ecc4ea4cff28f5f6b0726aeb76254ab5b02a58c1d5b486c39d9da1a58fa6ba2f22196493b3a4cbc283dcf749bf63679ee24d185de70c8dfe05605886c9b53e9f569082eabdf98c4fb0dcf07eb9bb3e647903489ff0b5d933bd004af5be4a1022fdda41f347f1"

    .line 55
    new-instance v2, Lcom/mob/MobCommunicator;

    const/16 v3, 0x400

    invoke-direct {v2, v3, v0, v1}, Lcom/mob/MobCommunicator;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/mob/MobUser;->a:Lcom/mob/MobCommunicator;

    .line 56
    new-instance v0, Lcom/mob/tools/MobHandlerThread;

    invoke-direct {v0}, Lcom/mob/tools/MobHandlerThread;-><init>()V

    .line 57
    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->start()V

    .line 58
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/mob/MobUser$1;

    invoke-direct {v2}, Lcom/mob/MobUser$1;-><init>()V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v1, Lcom/mob/MobUser;->b:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/mob/MobUser;

    invoke-direct {v0}, Lcom/mob/MobUser;-><init>()V

    sput-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    .line 91
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mob/MobUser;->m:Ljava/util/HashSet;

    .line 232
    return-void
.end method

.method static a()V
    .registers 2

    .prologue
    .line 115
    sget-object v0, Lcom/mob/MobUser;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    return-void
.end method

.method static a(Lcom/mob/MobUser$OnUserGotListener;)V
    .registers 3

    .prologue
    .line 108
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 109
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 110
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    sget-object v1, Lcom/mob/MobUser;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 94
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 95
    iput v3, v0, Landroid/os/Message;->what:I

    .line 96
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/mob/MobUser;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 101
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 102
    iput v3, v0, Landroid/os/Message;->what:I

    .line 103
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    sget-object v1, Lcom/mob/MobUser;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method

.method static synthetic b()V
    .registers 0

    .prologue
    .line 22
    invoke-static {}, Lcom/mob/MobUser;->e()V

    return-void
.end method

.method static synthetic b(Lcom/mob/MobUser$OnUserGotListener;)V
    .registers 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/mob/MobUser;->c(Lcom/mob/MobUser$OnUserGotListener;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 22
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mob/MobUser;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 3

    .prologue
    .line 22
    invoke-static {p0, p1, p2}, Lcom/mob/MobUser;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic c()Lcom/mob/MobUser;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    return-object v0
.end method

.method private static c(Lcom/mob/MobUser$OnUserGotListener;)V
    .registers 6

    .prologue
    .line 199
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v0, v0, Lcom/mob/MobUser;->k:Ljava/lang/String;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    invoke-direct {v0}, Lcom/mob/MobUser;->f()Z

    move-result v0

    if-nez v0, :cond_25

    .line 200
    :cond_e
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v0, v0, Lcom/mob/MobUser;->f:Ljava/lang/String;

    sget-object v1, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v1, v1, Lcom/mob/MobUser;->g:Ljava/lang/String;

    sget-object v2, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v2, v2, Lcom/mob/MobUser;->h:Ljava/lang/String;

    sget-object v3, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v3, v3, Lcom/mob/MobUser;->i:Ljava/util/HashMap;

    sget-object v4, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v4, v4, Lcom/mob/MobUser;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mob/MobUser;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 202
    :cond_25
    const/4 v0, 0x0

    new-instance v1, Lcom/mob/MobUser$2;

    invoke-direct {v1, p0}, Lcom/mob/MobUser$2;-><init>(Lcom/mob/MobUser$OnUserGotListener;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 208
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v0, v0, Lcom/mob/MobUser;->k:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 130
    invoke-static {}, Lcom/mob/MobUser;->e()V

    .line 133
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 134
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getProducts()Ljava/util/ArrayList;

    move-result-object v0

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/commons/MobProduct;

    .line 137
    invoke-interface {v0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 139
    :cond_2f
    const-string v0, "sdks"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 141
    const-string v0, "appUserId"

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_3f
    const-string v0, "appkey"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v2, "nickname"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ed

    const-string v0, ""

    :goto_52
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v2, "avatar"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f0

    const-string v0, ""

    :goto_5f
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v2, "appUserMap"

    if-nez p3, :cond_f3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_6b
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "duid"

    invoke-static {}, Lcom/mob/MobUser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 149
    const-string v0, "sign"

    invoke-virtual {v1, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_82
    :try_start_82
    sget-object v0, Lcom/mob/MobUser;->a:Lcom/mob/MobCommunicator;

    const-string v2, "http://api.u.mob.com/login"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/MobCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 153
    const-string v1, "mobUserId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    const-string v2, "loginExpireAt"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 155
    invoke-static {}, Lcom/mob/commons/a;->a()J

    .line 157
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iput-object p0, v0, Lcom/mob/MobUser;->f:Ljava/lang/String;

    .line 158
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/mob/MobUser;->e:Z

    .line 159
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iput-object p1, v0, Lcom/mob/MobUser;->g:Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iput-object p2, v0, Lcom/mob/MobUser;->h:Ljava/lang/String;

    .line 161
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iput-object p3, v0, Lcom/mob/MobUser;->i:Ljava/util/HashMap;

    .line 162
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iput-object p4, v0, Lcom/mob/MobUser;->j:Ljava/lang/String;

    .line 163
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iput-object v1, v0, Lcom/mob/MobUser;->k:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iput-wide v2, v0, Lcom/mob/MobUser;->l:J

    .line 166
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v0, v0, Lcom/mob/MobUser;->m:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/MobUser$UserWatcher;

    .line 167
    sget-object v2, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    invoke-interface {v0, v2}, Lcom/mob/MobUser$UserWatcher;->onUserStateChange(Lcom/mob/MobUser;)V
    :try_end_e3
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_e3} :catch_e4

    goto :goto_d2

    .line 169
    :catch_e4
    move-exception v0

    .line 170
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 172
    :cond_ec
    return-void

    :cond_ed
    move-object v0, p1

    .line 144
    goto/16 :goto_52

    :cond_f0
    move-object v0, p2

    .line 145
    goto/16 :goto_5f

    :cond_f3
    move-object v0, p3

    .line 146
    goto/16 :goto_6b
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v0, v0, Lcom/mob/MobUser;->k:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 176
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iput-object p0, v0, Lcom/mob/MobUser;->g:Ljava/lang/String;

    .line 177
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iput-object p1, v0, Lcom/mob/MobUser;->h:Ljava/lang/String;

    .line 178
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iput-object p2, v0, Lcom/mob/MobUser;->i:Ljava/util/HashMap;

    .line 196
    :goto_12
    return-void

    .line 179
    :cond_13
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    invoke-direct {v0}, Lcom/mob/MobUser;->f()Z

    move-result v0

    if-nez v0, :cond_27

    .line 180
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v0, v0, Lcom/mob/MobUser;->f:Ljava/lang/String;

    sget-object v1, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v1, v1, Lcom/mob/MobUser;->j:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2, v1}, Lcom/mob/MobUser;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_12

    .line 182
    :cond_27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 183
    const-string v0, "mobUserId"

    sget-object v2, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v2, v2, Lcom/mob/MobUser;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v2, "nickname"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, ""

    :goto_3f
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v2, "avatar"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string v0, ""

    :goto_4c
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v2, "appUserMap"

    if-eqz p2, :cond_7d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_58
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :try_start_5b
    sget-object v0, Lcom/mob/MobUser;->a:Lcom/mob/MobCommunicator;

    const-string v2, "http://api.u.mob.com/modify"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/MobCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iput-object p0, v0, Lcom/mob/MobUser;->g:Ljava/lang/String;

    .line 190
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iput-object p1, v0, Lcom/mob/MobUser;->h:Ljava/lang/String;

    .line 191
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iput-object p2, v0, Lcom/mob/MobUser;->i:Ljava/util/HashMap;
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_6f} :catch_70

    goto :goto_12

    .line 192
    :catch_70
    move-exception v0

    .line 193
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_12

    :cond_79
    move-object v0, p0

    .line 184
    goto :goto_3f

    :cond_7b
    move-object v0, p1

    .line 185
    goto :goto_4c

    :cond_7d
    move-object v0, p2

    .line 186
    goto :goto_58
.end method

.method private static d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    sget-object v0, Lcom/mob/MobUser;->c:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 122
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getProducts()Ljava/util/ArrayList;

    move-result-object v0

    .line 123
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/commons/MobProduct;

    invoke-static {v0}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/MobUser;->c:Ljava/lang/String;

    .line 125
    :cond_15
    sget-object v0, Lcom/mob/MobUser;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static e()V
    .registers 4

    .prologue
    .line 212
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v0, v0, Lcom/mob/MobUser;->k:Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    const-string v1, "mobUserId"

    sget-object v2, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v2, v2, Lcom/mob/MobUser;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :try_start_14
    sget-object v1, Lcom/mob/MobUser;->a:Lcom/mob/MobCommunicator;

    const-string v2, "http://api.u.mob.com/logout"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/mob/MobCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1c} :catch_3b

    .line 220
    :goto_1c
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mob/MobUser;->k:Ljava/lang/String;

    .line 222
    sget-object v0, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    iget-object v0, v0, Lcom/mob/MobUser;->m:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/MobUser$UserWatcher;

    .line 223
    sget-object v2, Lcom/mob/MobUser;->d:Lcom/mob/MobUser;

    invoke-interface {v0, v2}, Lcom/mob/MobUser$UserWatcher;->onUserStateChange(Lcom/mob/MobUser;)V

    goto :goto_29

    .line 217
    :catch_3b
    move-exception v0

    .line 218
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 226
    :cond_44
    return-void
.end method

.method private f()Z
    .registers 5

    .prologue
    .line 235
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v0

    .line 236
    iget-wide v2, p0, Lcom/mob/MobUser;->l:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public addUserWatcher(Lcom/mob/MobUser$UserWatcher;)V
    .registers 4

    .prologue
    .line 272
    iget-object v1, p0, Lcom/mob/MobUser;->m:Ljava/util/HashSet;

    monitor-enter v1

    .line 273
    :try_start_3
    iget-object v0, p0, Lcom/mob/MobUser;->m:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 274
    monitor-exit v1

    .line 275
    return-void

    .line 274
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getAvatar()Ljava/lang/String;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mob/MobUser;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mob/MobUser;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mob/MobUser;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMobUserId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/mob/MobUser;->f()Z

    move-result v0

    if-nez v0, :cond_13

    .line 246
    iget-object v0, p0, Lcom/mob/MobUser;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/MobUser;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/MobUser;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/mob/MobUser;->i:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/mob/MobUser;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mob/MobUser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 248
    :cond_13
    iget-object v0, p0, Lcom/mob/MobUser;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mob/MobUser;->g:Ljava/lang/String;

    return-object v0
.end method

.method public isAnonymous()Z
    .registers 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/mob/MobUser;->e:Z

    return v0
.end method

.method public removeUserWatcher(Lcom/mob/MobUser$UserWatcher;)V
    .registers 4

    .prologue
    .line 278
    iget-object v1, p0, Lcom/mob/MobUser;->m:Ljava/util/HashSet;

    monitor-enter v1

    .line 279
    :try_start_3
    iget-object v0, p0, Lcom/mob/MobUser;->m:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 280
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
