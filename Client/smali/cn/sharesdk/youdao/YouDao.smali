.class public Lcn/sharesdk/youdao/YouDao;
.super Lcn/sharesdk/framework/Platform;
.source "YouDao.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcn/sharesdk/youdao/YouDao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/youdao/YouDao;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/youdao/YouDao;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/youdao/YouDao;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/youdao/YouDao;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/youdao/YouDao;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/youdao/YouDao;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/youdao/YouDao;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/youdao/YouDao;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcn/sharesdk/youdao/YouDao;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 96
    invoke-static {p0}, Lcn/sharesdk/youdao/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/youdao/a;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youdao/a;->a(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/youdao/YouDao;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/youdao/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youdao/a;->b(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/youdao/a;->c(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    .line 105
    :goto_25
    return v0

    .line 104
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/youdao/YouDao;->innerAuthorize(ILjava/lang/Object;)V

    .line 105
    const/4 v0, 0x0

    goto :goto_25
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0}, Lcn/sharesdk/youdao/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/youdao/a;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youdao/a;->a(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/youdao/YouDao;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/youdao/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youdao/a;->b(Ljava/lang/String;)V

    .line 67
    new-instance v1, Lcn/sharesdk/youdao/YouDao$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/youdao/YouDao$1;-><init>(Lcn/sharesdk/youdao/YouDao;Lcn/sharesdk/youdao/a;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/youdao/a;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 92
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
    .line 232
    .line 233
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcn/sharesdk/youdao/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/youdao/a;

    move-result-object v0

    .line 235
    :try_start_4
    invoke-virtual {v0, p1, p2, p4, p5}, Lcn/sharesdk/youdao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_21

    move-result-object v0

    .line 243
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_2c

    .line 244
    :cond_10
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_20

    .line 245
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, " response is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, p3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 261
    :cond_20
    :goto_20
    return-void

    .line 236
    :catch_21
    move-exception v0

    .line 237
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_20

    .line 238
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, p3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_20

    .line 250
    :cond_2c
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 251
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_20

    .line 252
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, p3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_20

    .line 258
    :cond_4c
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_20

    .line 259
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, p3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_20
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 11
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v8, 0x9

    .line 109
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 111
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1c

    .line 112
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Share content is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v8, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 171
    :cond_1c
    :goto_1c
    return-void

    .line 117
    :cond_1d
    invoke-static {p0}, Lcn/sharesdk/youdao/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/youdao/a;

    move-result-object v0

    .line 118
    const-string v1, ""

    .line 120
    const/4 v3, 0x0

    :try_start_24
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/youdao/YouDao;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-virtual {p1, v6}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " <img src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 139
    :goto_57
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v3, " upload img path == %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 140
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getNotebook()Ljava/lang/String;

    move-result-object v5

    .line 144
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/youdao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 146
    if-nez v1, :cond_ec

    .line 147
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1c

    .line 148
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, " response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_9f} :catch_a1

    goto/16 :goto_1c

    .line 168
    :catch_a1
    move-exception v0

    .line 169
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v8, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 127
    :cond_a9
    :try_start_a9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_147

    .line 128
    invoke-virtual {v0, v2}, Lcn/sharesdk/youdao/a;->h(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 129
    if-eqz v2, :cond_e9

    const-string v3, "url"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 130
    const-string v3, "url"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e9

    .line 132
    invoke-virtual {p1, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " <img src=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_e9
    move-object v2, v1

    .line 136
    goto/16 :goto_57

    .line 153
    :cond_ec
    const-string v0, "error"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 154
    const-string v0, "message"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_1c

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,error code ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 164
    :cond_135
    const-string v0, "ShareParams"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1c

    .line 166
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_145
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_145} :catch_a1

    goto/16 :goto_1c

    :cond_147
    move-object v2, v1

    goto/16 :goto_57
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .registers 4
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
    .line 287
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return-object v0
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
    .line 264
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 265
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 266
    if-eqz p2, :cond_24

    .line 267
    const-string v1, "path"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 268
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iput-object p2, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 271
    :cond_24
    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 175
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 177
    :cond_a
    return-void
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
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
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
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 5
    .param p1, "count"    # I
    .param p2, "page"    # I
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
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 225
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 227
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcn/sharesdk/youdao/YouDao;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 37
    const/16 v0, 0x1b

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "ConsumerKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/youdao/YouDao;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/youdao/YouDao;->a:Ljava/lang/String;

    .line 31
    const-string v0, "ConsumerSecret"

    invoke-virtual {p0, v0}, Lcn/sharesdk/youdao/YouDao;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/youdao/YouDao;->b:Ljava/lang/String;

    .line 32
    const-string v0, "RedirectUri"

    invoke-virtual {p0, v0}, Lcn/sharesdk/youdao/YouDao;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/youdao/YouDao;->c:Ljava/lang/String;

    .line 33
    const-string v0, "HostType"

    invoke-virtual {p0, v0}, Lcn/sharesdk/youdao/YouDao;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/youdao/YouDao;->d:Ljava/lang/String;

    .line 34
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 4

    .prologue
    .line 49
    const-string v0, "host_type"

    const-string v1, "HostType"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/youdao/YouDao;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "0"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 51
    :cond_1a
    const-string v0, "sandbox"

    iput-object v0, p0, Lcn/sharesdk/youdao/YouDao;->d:Ljava/lang/String;

    .line 57
    :goto_1e
    const-string v0, "consumer_key"

    const-string v1, "ConsumerKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/youdao/YouDao;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/youdao/YouDao;->a:Ljava/lang/String;

    .line 58
    const-string v0, "consumer_secret"

    const-string v1, "ConsumerSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/youdao/YouDao;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/youdao/YouDao;->b:Ljava/lang/String;

    .line 59
    const-string v0, "oauth_callback"

    const-string v1, "RedirectUri"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/youdao/YouDao;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/youdao/YouDao;->c:Ljava/lang/String;

    .line 60
    return-void

    .line 52
    :cond_3d
    const-string v1, "1"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "2"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 53
    :cond_55
    const-string v0, "product"

    iput-object v0, p0, Lcn/sharesdk/youdao/YouDao;->d:Ljava/lang/String;

    goto :goto_1e

    .line 55
    :cond_5a
    iput-object v0, p0, Lcn/sharesdk/youdao/YouDao;->d:Ljava/lang/String;

    goto :goto_1e
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 181
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 183
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 7
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    .line 187
    :try_start_2
    invoke-static {p0}, Lcn/sharesdk/youdao/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/youdao/a;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p1}, Lcn/sharesdk/youdao/a;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 190
    if-nez v1, :cond_1f

    .line 191
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1e

    .line 192
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, " response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 221
    :cond_1e
    :goto_1e
    return-void

    .line 197
    :cond_1f
    const-string v0, "error"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 198
    const-string v0, "message"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 201
    iget-object v2, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_1e

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",error code ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_66} :catch_67

    goto :goto_1e

    .line 216
    :catch_67
    move-exception v0

    .line 217
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1e

    .line 218
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1e

    .line 208
    :cond_72
    if-nez p1, :cond_a5

    .line 209
    :try_start_74
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "nickname"

    const-string v3, "user"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "snsregat"

    const-string v3, "register_time"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_a5
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1e

    .line 214
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_b0} :catch_67

    goto/16 :goto_1e
.end method
