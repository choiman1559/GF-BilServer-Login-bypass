.class public Lcn/sharesdk/line/Line;
.super Lcn/sharesdk/framework/Platform;
.source "Line.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Lcn/sharesdk/line/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcn/sharesdk/line/Line;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/line/Line;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    .line 29
    invoke-static {p0}, Lcn/sharesdk/line/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/line/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/b;

    .line 30
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/line/Line;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/line/Line;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method private c()Z
    .registers 4

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0}, Lcn/sharesdk/line/Line;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v2, "refresh_token"

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 99
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/b;

    iget-object v1, p0, Lcn/sharesdk/line/Line;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/line/Line;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/line/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/b;

    iget-object v1, p0, Lcn/sharesdk/line/Line;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/line/b;->a(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/b;

    invoke-virtual {v0}, Lcn/sharesdk/line/b;->a()Z

    move-result v0

    .line 103
    :cond_27
    return v0
.end method

.method static synthetic d(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/line/Line;)Lcn/sharesdk/line/b;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/b;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0x9

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0}, Lcn/sharesdk/line/Line;->isClientValid()Z

    move-result v2

    if-nez v2, :cond_1b

    if-ne p1, v3, :cond_1b

    .line 108
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1a

    .line 109
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Lcn/sharesdk/line/LineClientNotExistException;

    invoke-direct {v2}, Lcn/sharesdk/line/LineClientNotExistException;-><init>()V

    invoke-interface {v1, p0, p1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 131
    :cond_1a
    :goto_1a
    return v0

    .line 114
    :cond_1b
    if-ne p1, v3, :cond_1f

    move v0, v1

    .line 115
    goto :goto_1a

    .line 118
    :cond_1f
    iget-object v2, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    iget-object v2, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/b;

    iget-object v3, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v3}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/sharesdk/line/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 119
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/line/Line;->innerAuthorize(ILjava/lang/Object;)V

    goto :goto_1a

    .line 123
    :cond_3d
    invoke-virtual {p0}, Lcn/sharesdk/line/Line;->isAuthValid()Z

    move-result v2

    if-nez v2, :cond_49

    invoke-direct {p0}, Lcn/sharesdk/line/Line;->c()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 124
    :cond_49
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/b;

    iget-object v2, p0, Lcn/sharesdk/line/Line;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/line/Line;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/line/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/b;

    iget-object v2, p0, Lcn/sharesdk/line/Line;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/sharesdk/line/b;->a(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/b;

    iget-object v2, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/sharesdk/line/b;->d(Ljava/lang/String;)V

    move v0, v1

    .line 127
    goto :goto_1a

    .line 130
    :cond_66
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/line/Line;->innerAuthorize(ILjava/lang/Object;)V

    goto :goto_1a
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/b;

    iget-object v1, p0, Lcn/sharesdk/line/Line;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/line/Line;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/line/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/b;

    iget-object v1, p0, Lcn/sharesdk/line/Line;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/line/b;->a(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/b;

    new-instance v1, Lcn/sharesdk/line/Line$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/line/Line$1;-><init>(Lcn/sharesdk/line/Line;)V

    .line 93
    invoke-virtual {p0}, Lcn/sharesdk/line/Line;->isSSODisable()Z

    move-result v2

    .line 57
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/line/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

    .line 94
    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .registers 7
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
    .line 251
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 252
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 254
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 6
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v3, 0x9

    .line 140
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 143
    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/line/Line;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 145
    invoke-static {p0}, Lcn/sharesdk/line/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/line/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/line/b;->e(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_30

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_30} :catch_31

    .line 203
    :cond_30
    :goto_30
    return-void

    .line 151
    :catch_31
    move-exception v0

    .line 152
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_30

    .line 153
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_30

    .line 157
    :cond_3c
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_79

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 160
    :try_start_51
    invoke-static {p0}, Lcn/sharesdk/line/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/line/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/line/b;->f(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_30

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_6d} :catch_6e

    goto :goto_30

    .line 166
    :catch_6e
    move-exception v0

    .line 167
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_30

    .line 168
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_30

    .line 172
    :cond_79
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 175
    :try_start_7d
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_84} :catch_c0

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cc

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 185
    :try_start_96
    invoke-static {p0}, Lcn/sharesdk/line/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/line/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/line/b;->f(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_30

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_b2} :catch_b4

    goto/16 :goto_30

    .line 191
    :catch_b4
    move-exception v0

    .line 192
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_30

    .line 193
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_30

    .line 176
    :catch_c0
    move-exception v0

    .line 177
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_30

    .line 178
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_30

    .line 197
    :cond_cc
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_30

    .line 198
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "both text and image are null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_30
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
    .line 284
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
    .line 257
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 258
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_17

    .line 261
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_16
    :goto_16
    return-object v0

    .line 263
    :cond_17
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 264
    if-eqz v1, :cond_16

    .line 265
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 207
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 209
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
    .line 280
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
    .line 276
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
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 244
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 246
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcn/sharesdk/line/Line;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 47
    const/16 v0, 0x2a

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "ChannelID"

    invoke-virtual {p0, v0}, Lcn/sharesdk/line/Line;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/line/Line;->b:Ljava/lang/String;

    .line 34
    const-string v0, "ChannelSecret"

    invoke-virtual {p0, v0}, Lcn/sharesdk/line/Line;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/line/Line;->c:Ljava/lang/String;

    .line 35
    const-string v0, "lineconnect://success"

    iput-object v0, p0, Lcn/sharesdk/line/Line;->d:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public isClientValid()Z
    .registers 2

    .prologue
    .line 136
    invoke-static {p0}, Lcn/sharesdk/line/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/line/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/line/b;->d()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 213
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 215
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 7
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    .line 219
    :try_start_2
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/b;

    invoke-virtual {v0}, Lcn/sharesdk/line/b;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 220
    if-nez v0, :cond_1b

    .line 221
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1a

    .line 222
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 240
    :cond_1a
    :goto_1a
    return-void

    .line 227
    :cond_1b
    iget-object v1, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "mid"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "nickname"

    const-string v3, "displayName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "icon"

    const-string v3, "pictureUrl"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1a

    .line 232
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_57} :catch_58

    goto :goto_1a

    .line 234
    :catch_58
    move-exception v0

    .line 235
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 236
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1a

    .line 237
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1a
.end method
