.class public Lcn/sharesdk/tencent/weibo/TencentWeibo;
.super Lcn/sharesdk/framework/Platform;
.source "TencentWeibo.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/weibo/TencentWeibo;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic k(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic l(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic m(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic n(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic o(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic p(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 9
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 116
    invoke-static {p0}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/weibo/f;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    .line 120
    invoke-virtual {v3}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v5, "openkey"

    invoke-virtual {v4, v5}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    .line 125
    :goto_36
    return v0

    .line 124
    :cond_37
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->innerAuthorize(ILjava/lang/Object;)V

    .line 125
    const/4 v0, 0x0

    goto :goto_36
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/weibo/f;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;-><init>(Lcn/sharesdk/tencent/weibo/TencentWeibo;Lcn/sharesdk/tencent/weibo/f;)V

    .line 111
    invoke-virtual {p0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->isSSODisable()Z

    move-result v2

    .line 76
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

    .line 112
    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "customerAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/weibo/f;

    move-result-object v0

    .line 468
    invoke-virtual {v0, p1, p2, p4, p5}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    .line 469
    if-nez v1, :cond_1b

    .line 470
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1a

    .line 471
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, p3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 491
    :cond_1a
    :goto_1a
    return-void

    .line 476
    :cond_1b
    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 477
    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 478
    if-eqz v0, :cond_49

    .line 480
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1a

    .line 481
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, p3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1a

    .line 488
    :cond_49
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1a

    .line 489
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_1a
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 22
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    .line 129
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 131
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ssdk_weibo_upload_content"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 132
    if-lez v3, :cond_23

    .line 133
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 138
    :cond_23
    invoke-static/range {p0 .. p0}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/weibo/f;

    move-result-object v9

    .line 140
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 141
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getLatitude()F

    move-result v11

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getLongitude()F

    move-result v12

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v13

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v2

    .line 147
    if-nez v2, :cond_4c

    .line 148
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 151
    :cond_4c
    const-string v7, ""

    .line 152
    const-string v3, ""

    .line 154
    const/4 v6, 0x0

    .line 155
    :try_start_51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 157
    array-length v0, v2

    move/from16 v16, v0
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_58} :catch_13d

    const/4 v4, 0x0

    move v8, v4

    move-object v4, v7

    move-object/from16 v19, v3

    move v3, v6

    move-object/from16 v6, v19

    :goto_60
    move/from16 v0, v16

    if-ge v8, v0, :cond_6a

    :try_start_64
    aget-object v17, v2, v8

    .line 158
    const/16 v7, 0x9

    if-lt v3, v7, :cond_bf

    .line 173
    :cond_6a
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v3, "upload pic use total time ===>>> %s "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v14, v16, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v7, v8

    invoke-virtual {v2, v3, v7}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 175
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_111

    .line 176
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {v9, v10, v4, v11, v12}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/lang/String;Ljava/lang/String;FF)Ljava/util/HashMap;
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_91} :catch_238

    move-result-object v2

    move-object v3, v2

    .line 192
    :goto_93
    if-nez v3, :cond_171

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_be

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " response is null\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 238
    :cond_be
    :goto_be
    return-void

    .line 161
    :cond_bf
    const/4 v7, 0x0

    .line 163
    :try_start_c0
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcn/sharesdk/tencent/weibo/f;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c5} :catch_ee

    move-result-object v7

    .line 167
    :goto_c6
    :try_start_c6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_e9

    .line 168
    add-int/lit8 v3, v3, 0x1

    .line 169
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    :cond_e9
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto/16 :goto_60

    .line 164
    :catch_ee
    move-exception v17

    .line 165
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_c6

    .line 178
    :cond_111
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11e

    .line 179
    invoke-virtual {v9, v10, v5, v11, v12}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/lang/String;Ljava/lang/String;FF)Ljava/util/HashMap;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_93

    .line 180
    :cond_11e
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12f

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_136

    .line 181
    :cond_12f
    invoke-virtual {v9, v10, v11, v12}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/lang/String;FF)Ljava/util/HashMap;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_93

    .line 183
    :cond_136
    invoke-virtual {v9, v10, v13, v11, v12}, Lcn/sharesdk/tencent/weibo/f;->b(Ljava/lang/String;Ljava/lang/String;FF)Ljava/util/HashMap;
    :try_end_139
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_139} :catch_238

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_93

    .line 185
    :catch_13d
    move-exception v2

    .line 186
    :goto_13e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v4, :cond_be

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v5, 0x9

    new-instance v6, Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-interface {v4, v0, v5, v6}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_be

    .line 199
    :cond_171
    const-string v2, "errcode"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1da

    .line 200
    const-string v2, "errcode"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 201
    if-eqz v2, :cond_1da

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    const-string v5, "tecent weibo error %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_be

    .line 205
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v4, 0x9

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v4, v5}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_be

    .line 214
    :cond_1da
    const-string v2, "imgurl"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 215
    if-nez v2, :cond_20a

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_20a

    .line 224
    :goto_1e8
    const-string v2, "data"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 225
    if-nez v2, :cond_219

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_be

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_be

    .line 217
    :cond_20a
    if-nez v2, :cond_214

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_214

    move-object v4, v5

    .line 218
    goto :goto_1e8

    .line 219
    :cond_214
    if-nez v2, :cond_23c

    .line 220
    const-string v4, ""

    goto :goto_1e8

    .line 231
    :cond_219
    const-string v3, "imgurl"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v3, "ShareParams"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v3, :cond_be

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v4, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_be

    .line 185
    :catch_238
    move-exception v2

    move-object v3, v6

    goto/16 :goto_13e

    :cond_23c
    move-object v4, v2

    goto :goto_1e8
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .registers 13
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 573
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 574
    sparse-switch p1, :sswitch_data_1a2

    .line 647
    :cond_a
    :goto_a
    return-object v2

    .line 576
    :sswitch_b
    const-string v0, "type"

    const-string v4, "FOLLOWING"

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :goto_12
    const-string v0, "snsplat"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->getPlatformId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v0, "snsuid"

    iget-object v4, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v0, "curnum"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    const-string v0, "curnum"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 592
    :goto_42
    const-string v4, "nextstartpos"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_157

    const-string v1, "nextstartpos"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v4, v1

    .line 593
    :goto_59
    if-eqz v0, :cond_a

    .line 598
    const-string v0, "info"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_a

    .line 602
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 603
    check-cast v0, Ljava/util/ArrayList;

    .line 604
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 607
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_74
    :goto_74
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_175

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 608
    if-eqz v0, :cond_74

    .line 611
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 612
    const-string v1, "snsuid"

    const-string v8, "name"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v1, "nickname"

    const-string v8, "nick"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v1, "head"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15a

    const-string v1, "head"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 615
    :goto_b7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d5

    .line 616
    const-string v8, "icon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "/100"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :cond_d5
    const-string v1, "isvip"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 619
    const-string v8, "secretType"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v1, "sex"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 622
    const-string v8, "1"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15d

    .line 623
    const-string v1, "gender"

    const-string v8, "0"

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :goto_fd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://t.qq.com/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "name"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 631
    const-string v8, "snsUserUrl"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v1, "followerCount"

    const-string v8, "fansnum"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v1, "favouriteCount"

    const-string v8, "idolnum"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_74

    .line 579
    :sswitch_142
    const-string v0, "type"

    const-string v4, "FOLLOWERS"

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12

    .line 582
    :sswitch_14b
    const-string v0, "type"

    const-string v4, "FRIENDS"

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12

    :cond_154
    move v0, v1

    .line 591
    goto/16 :goto_42

    :cond_157
    move v4, v1

    .line 592
    goto/16 :goto_59

    :cond_15a
    move-object v1, v2

    .line 614
    goto/16 :goto_b7

    .line 624
    :cond_15d
    const-string v8, "2"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16d

    .line 625
    const-string v1, "gender"

    const-string v8, "1"

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fd

    .line 627
    :cond_16d
    const-string v1, "gender"

    const-string v8, "2"

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fd

    .line 636
    :cond_175
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    if-nez v4, :cond_194

    .line 643
    const-string v0, "0_true"

    .line 645
    :cond_194
    const-string v1, "nextCursor"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string v0, "list"

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 647
    goto/16 :goto_a

    .line 574
    nop

    :sswitch_data_1a2
    .sparse-switch
        0x2 -> :sswitch_b
        0xa -> :sswitch_14b
        0xb -> :sswitch_142
    .end sparse-switch
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .registers 6
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform$ShareParams;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sharesdk/framework/b/b/f$a;"
        }
    .end annotation

    .prologue
    .line 494
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 495
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 496
    if-eqz p2, :cond_2c

    .line 497
    const-string v0, "imgurl"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 498
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 499
    iget-object v2, v1, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_20
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 503
    :cond_2c
    iput-object p2, v1, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 504
    return-object v1
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 7
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x6

    .line 241
    invoke-static {p0}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/weibo/f;

    move-result-object v0

    .line 243
    :try_start_5
    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/weibo/f;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 244
    if-nez v1, :cond_1d

    .line 245
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1c

    .line 246
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, " response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 277
    :cond_1c
    :goto_1c
    return-void

    .line 251
    :cond_1d
    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 252
    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 253
    if-eqz v0, :cond_57

    .line 255
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1c

    .line 257
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_4b} :catch_4c

    goto :goto_1c

    .line 272
    :catch_4c
    move-exception v0

    .line 273
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1c

    .line 274
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1c

    .line 264
    :cond_57
    :try_start_57
    const-string v0, "data"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 265
    if-eqz v0, :cond_6c

    .line 269
    :goto_61
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1c

    .line 270
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x6

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_6b} :catch_4c

    goto :goto_1c

    :cond_6c
    move-object v0, v1

    goto :goto_61
.end method

.method protected getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 5
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 538
    invoke-static {p0}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/weibo/f;

    move-result-object v0

    .line 540
    if-nez p3, :cond_f

    :try_start_7
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 541
    .end local p3    # "account":Ljava/lang/String;
    :cond_f
    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/tencent/weibo/f;->b(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 542
    if-nez v2, :cond_17

    move-object v0, v1

    .line 563
    :goto_16
    return-object v0

    .line 546
    :cond_17
    const-string v0, "errcode"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 547
    const-string v0, "errcode"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 548
    if-eqz v0, :cond_42

    .line 549
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v4}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v4, v2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 554
    :cond_42
    const-string v0, "data"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 555
    if-nez v0, :cond_4e

    move-object v0, v1

    .line 556
    goto :goto_16

    .line 559
    :cond_4e
    const-string v2, "current_cursor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_5c} :catch_5e

    move-result-object v0

    goto :goto_16

    .line 561
    :catch_5e
    move-exception v0

    .line 562
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 563
    goto :goto_16
.end method

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 508
    invoke-static {p0}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/weibo/f;

    move-result-object v0

    .line 510
    if-nez p3, :cond_f

    :try_start_7
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 511
    .end local p3    # "account":Ljava/lang/String;
    :cond_f
    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/tencent/weibo/f;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 512
    if-nez v2, :cond_17

    move-object v0, v1

    .line 533
    :goto_16
    return-object v0

    .line 516
    :cond_17
    const-string v0, "errcode"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 517
    const-string v0, "errcode"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 518
    if-eqz v0, :cond_42

    .line 519
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v4}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v4, v2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 524
    :cond_42
    const-string v0, "data"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 525
    if-nez v0, :cond_4e

    move-object v0, v1

    .line 526
    goto :goto_16

    .line 529
    :cond_4e
    const-string v2, "current_cursor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_5b} :catch_5d

    move-result-object v0

    goto :goto_16

    .line 531
    :catch_5d
    move-exception v0

    .line 532
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 533
    goto :goto_16
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 9
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 420
    invoke-static {p0}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/weibo/f;

    move-result-object v0

    .line 422
    if-nez p3, :cond_f

    :try_start_7
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 423
    .end local p3    # "account":Ljava/lang/String;
    :cond_f
    mul-int/2addr p2, p1

    .line 424
    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/tencent/weibo/f;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 425
    if-nez v1, :cond_28

    .line 426
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_27

    .line 427
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 462
    :cond_27
    :goto_27
    return-void

    .line 432
    :cond_28
    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 433
    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 434
    if-eqz v0, :cond_62

    .line 436
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_27

    .line 437
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_56} :catch_57

    goto :goto_27

    .line 457
    :catch_57
    move-exception v0

    .line 458
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_27

    .line 459
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_27

    .line 445
    :cond_62
    :try_start_62
    const-string v0, "data"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 446
    if-nez v0, :cond_7c

    .line 447
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_27

    .line 448
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_27

    .line 454
    :cond_7c
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_27

    .line 455
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_86} :catch_57

    goto :goto_27
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x2

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 651
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "AppKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->a:Ljava/lang/String;

    .line 38
    const-string v0, "AppSecret"

    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->b:Ljava/lang/String;

    .line 39
    const-string v0, "RedirectUri"

    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->c:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->c:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2c

    .line 41
    :cond_24
    const-string v0, "RedirectUrl"

    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->c:Ljava/lang/String;

    .line 43
    :cond_2c
    return-void
.end method

.method public isClientValid()Z
    .registers 2

    .prologue
    .line 68
    invoke-static {p0}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/weibo/f;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcn/sharesdk/tencent/weibo/f;->a()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 58
    const-string v0, "app_key"

    const-string v1, "AppKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->a:Ljava/lang/String;

    .line 59
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->b:Ljava/lang/String;

    .line 60
    const-string v0, "redirect_uri"

    const-string v1, "RedirectUri"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->c:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->c:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_32

    .line 62
    :cond_2a
    const-string v0, "RedirectUrl"

    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->c:Ljava/lang/String;

    .line 64
    :cond_32
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 281
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 283
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 12
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x0

    .line 287
    invoke-static {p0}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/weibo/f;

    move-result-object v0

    .line 289
    :try_start_7
    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/weibo/f;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 290
    if-nez v1, :cond_20

    .line 291
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1f

    .line 292
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, " response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 417
    :cond_1f
    :goto_1f
    return-void

    .line 297
    :cond_20
    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 298
    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 299
    if-eqz v0, :cond_5b

    .line 300
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1f

    .line 301
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4f} :catch_50

    goto :goto_1f

    .line 412
    :catch_50
    move-exception v0

    .line 413
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1f

    .line 414
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v9, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1f

    .line 308
    :cond_5b
    :try_start_5b
    const-string v0, "data"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 309
    if-nez v0, :cond_76

    .line 310
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1f

    .line 311
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1f

    .line 317
    :cond_76
    if-nez p1, :cond_341

    .line 318
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "nickname"

    const-string v4, "nick"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "icon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "head"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/100"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "isvip"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 322
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "secretType"

    invoke-virtual {v2, v4, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "secret"

    const-string v4, "verifyinfo"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v1, "sex"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 326
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23f

    .line 327
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "gender"

    const-string v4, "0"

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_ea
    const-string v1, "birth_year"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 335
    const-string v2, "birth_month"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 336
    const-string v4, "birth_day"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14a

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14a

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "birthday"

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->dateStrToLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_14a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://t.qq.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "snsUserUrl"

    invoke-virtual {v2, v4, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "resume"

    const-string v4, "introduction"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "followerCount"

    const-string v4, "fansnum"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "favouriteCount"

    const-string v4, "idolnum"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "shareCount"

    const-string v4, "tweetnum"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "snsregat"

    const-string v4, "regtime"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "snsUserLevel"

    const-string v4, "level"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v1, "edu"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 350
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 351
    if-eqz v1, :cond_286

    move v4, v3

    .line 352
    :goto_1e4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_275

    .line 353
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_1ef
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_1ef} :catch_50

    .line 355
    :try_start_1ef
    const-string v2, "school_type"

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 356
    const-string v7, "school"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v8, "schoolid"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    const-string v7, "classes"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v8, "departmentid"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v2, "background"

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_225
    .catch Lorg/json/JSONException; {:try_start_1ef .. :try_end_225} :catch_26c
    .catch Ljava/lang/Throwable; {:try_start_1ef .. :try_end_225} :catch_50

    .line 360
    :try_start_225
    const-string v7, "year"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v8, "year"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_238
    .catch Ljava/lang/Throwable; {:try_start_225 .. :try_end_238} :catch_25d
    .catch Lorg/json/JSONException; {:try_start_225 .. :try_end_238} :catch_26c

    .line 368
    :goto_238
    :try_start_238
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 352
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1e4

    .line 328
    :cond_23f
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_252

    .line 329
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "gender"

    const-string v4, "1"

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ea

    .line 331
    :cond_252
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "gender"

    const-string v4, "2"

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25b
    .catch Ljava/lang/Throwable; {:try_start_238 .. :try_end_25b} :catch_50

    goto/16 :goto_ea

    .line 361
    :catch_25d
    move-exception v2

    .line 362
    :try_start_25e
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 363
    const-string v2, "year"

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_26b
    .catch Lorg/json/JSONException; {:try_start_25e .. :try_end_26b} :catch_26c
    .catch Ljava/lang/Throwable; {:try_start_25e .. :try_end_26b} :catch_50

    goto :goto_238

    .line 365
    :catch_26c
    move-exception v2

    .line 366
    :try_start_26d
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_238

    .line 370
    :cond_275
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_286

    .line 371
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "educationJSONArrayStr"

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_286
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 376
    const-string v1, "comp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 377
    if-eqz v1, :cond_341

    move v4, v3

    .line 378
    :goto_296
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_330

    .line 379
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_2a1
    .catch Ljava/lang/Throwable; {:try_start_26d .. :try_end_2a1} :catch_50

    .line 381
    :try_start_2a1
    const-string v7, "company"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v8, "company_name"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    const-string v7, "dept"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v8, "department_name"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2cb
    .catch Lorg/json/JSONException; {:try_start_2a1 .. :try_end_2cb} :catch_318
    .catch Ljava/lang/Throwable; {:try_start_2a1 .. :try_end_2cb} :catch_50

    .line 384
    :try_start_2cb
    const-string v7, "start_date"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v8, "begin_year"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2e4
    .catch Ljava/lang/Throwable; {:try_start_2cb .. :try_end_2e4} :catch_309
    .catch Lorg/json/JSONException; {:try_start_2cb .. :try_end_2e4} :catch_318

    .line 390
    :goto_2e4
    :try_start_2e4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v7, "end_year"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 391
    const/16 v7, 0x270f

    if-lt v2, v7, :cond_2fb

    move v2, v3

    .line 394
    :cond_2fb
    const-string v7, "end_date"

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_302
    .catch Ljava/lang/Throwable; {:try_start_2e4 .. :try_end_302} :catch_321
    .catch Lorg/json/JSONException; {:try_start_2e4 .. :try_end_302} :catch_318

    .line 402
    :goto_302
    :try_start_302
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_305
    .catch Ljava/lang/Throwable; {:try_start_302 .. :try_end_305} :catch_50

    .line 378
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_296

    .line 385
    :catch_309
    move-exception v2

    .line 386
    :try_start_30a
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 387
    const-string v2, "start_date"

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_317
    .catch Lorg/json/JSONException; {:try_start_30a .. :try_end_317} :catch_318
    .catch Ljava/lang/Throwable; {:try_start_30a .. :try_end_317} :catch_50

    goto :goto_2e4

    .line 399
    :catch_318
    move-exception v2

    .line 400
    :try_start_319
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_320
    .catch Ljava/lang/Throwable; {:try_start_319 .. :try_end_320} :catch_50

    goto :goto_302

    .line 395
    :catch_321
    move-exception v2

    .line 396
    :try_start_322
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 397
    const-string v2, "end_date"

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_32f
    .catch Lorg/json/JSONException; {:try_start_322 .. :try_end_32f} :catch_318
    .catch Ljava/lang/Throwable; {:try_start_322 .. :try_end_32f} :catch_50

    goto :goto_302

    .line 404
    :cond_330
    :try_start_330
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_341

    .line 405
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "workJSONArrayStr"

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_341
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1f

    .line 410
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_34c
    .catch Ljava/lang/Throwable; {:try_start_330 .. :try_end_34c} :catch_50

    goto/16 :goto_1f
.end method
