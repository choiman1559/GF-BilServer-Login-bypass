.class public Lcn/sharesdk/evernote/Evernote;
.super Lcn/sharesdk/framework/Platform;
.source "Evernote.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcn/sharesdk/evernote/Evernote;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/evernote/Evernote;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/evernote/Evernote;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/evernote/Evernote;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic k(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic l(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic m(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic n(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic o(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic p(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic q(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-static {p0}, Lcn/sharesdk/evernote/d;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/evernote/d;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcn/sharesdk/evernote/Evernote;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1, v2}, Lcn/sharesdk/evernote/d;->a(Lcn/sharesdk/framework/PlatformDb;)V

    .line 99
    iget-object v2, p0, Lcn/sharesdk/evernote/Evernote;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/evernote/d;->a(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcn/sharesdk/evernote/Evernote;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/evernote/Evernote;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/evernote/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/16 v2, 0x9

    if-ne p1, v2, :cond_25

    iget-boolean v2, p0, Lcn/sharesdk/evernote/Evernote;->d:Z

    if-eqz v2, :cond_25

    .line 103
    invoke-virtual {v1}, Lcn/sharesdk/evernote/d;->b()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 113
    :cond_24
    :goto_24
    return v0

    .line 108
    :cond_25
    invoke-virtual {p0}, Lcn/sharesdk/evernote/Evernote;->isAuthValid()Z

    move-result v1

    if-nez v1, :cond_24

    .line 112
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/evernote/Evernote;->innerAuthorize(ILjava/lang/Object;)V

    .line 113
    const/4 v0, 0x0

    goto :goto_24
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Lcn/sharesdk/evernote/d;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/evernote/d;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0, v1}, Lcn/sharesdk/evernote/d;->a(Lcn/sharesdk/framework/PlatformDb;)V

    .line 64
    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/evernote/d;->a(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/evernote/Evernote;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/evernote/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcn/sharesdk/evernote/Evernote$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/evernote/Evernote$1;-><init>(Lcn/sharesdk/evernote/Evernote;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/evernote/d;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

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
    .line 259
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 262
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 20
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    .line 141
    invoke-static/range {p0 .. p0}, Lcn/sharesdk/evernote/d;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/evernote/d;

    move-result-object v3

    .line 143
    :try_start_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_29

    .line 146
    new-instance v2, Lcn/sharesdk/evernote/e;

    invoke-direct {v2}, Lcn/sharesdk/evernote/e;-><init>()V

    .line 147
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Lcn/sharesdk/evernote/Evernote;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    .line 148
    iget-object v1, v2, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v5

    .line 155
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_99

    const/4 v6, 0x6

    if-ne v5, v6, :cond_99

    .line 156
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 157
    new-instance v1, Lcn/sharesdk/evernote/e;

    invoke-direct {v1}, Lcn/sharesdk/evernote/e;-><init>()V

    .line 158
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    .line 159
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_62
    :goto_62
    const-string v1, "resource"

    const-class v2, [Lcn/sharesdk/evernote/e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcn/sharesdk/evernote/e;

    .line 176
    if-eqz v1, :cond_f4

    array-length v2, v1

    if-lez v2, :cond_f4

    .line 177
    array-length v4, v1

    const/4 v2, 0x0

    :goto_75
    if-ge v2, v4, :cond_f4

    aget-object v5, v1, v2

    .line 178
    iget-object v6, v5, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_f0

    .line 179
    new-instance v6, Lcn/sharesdk/evernote/e;

    invoke-direct {v6}, Lcn/sharesdk/evernote/e;-><init>()V

    .line 180
    iget-object v5, v5, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lcn/sharesdk/evernote/Evernote;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    .line 181
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :goto_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    .line 162
    :cond_99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_bc

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_bc

    .line 163
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 166
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 169
    :cond_bc
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_62

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 170
    new-instance v2, Lcn/sharesdk/evernote/e;

    invoke-direct {v2}, Lcn/sharesdk/evernote/e;-><init>()V

    .line 171
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, v2, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    .line 172
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_dc} :catch_dd

    goto :goto_62

    .line 231
    :catch_dd
    move-exception v1

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_ef

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v3, 0x9

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 236
    :cond_ef
    :goto_ef
    return-void

    .line 183
    :cond_f0
    :try_start_f0
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 188
    :cond_f4
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getStack()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getNotebook()Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTags()[Ljava/lang/String;

    move-result-object v8

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->isPublic()Z

    move-result v9

    .line 193
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcn/sharesdk/evernote/Evernote;->d:Z

    if-eqz v1, :cond_12b

    invoke-virtual {v3}, Lcn/sharesdk/evernote/d;->b()Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 194
    new-instance v1, Lcn/sharesdk/evernote/Evernote$2;

    move-object/from16 v2, p0

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcn/sharesdk/evernote/Evernote$2;-><init>(Lcn/sharesdk/evernote/Evernote;Lcn/sharesdk/evernote/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/String;ZLcn/sharesdk/framework/Platform$ShareParams;)V

    move-object v10, v3

    move-object v11, v1

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move/from16 v17, v9

    .line 222
    invoke-virtual/range {v10 .. v17}, Lcn/sharesdk/evernote/d;->a(Lcn/sharesdk/framework/PlatformActionListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/String;Z)V

    goto :goto_ef

    .line 224
    :cond_12b
    invoke-virtual/range {v3 .. v9}, Lcn/sharesdk/evernote/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v1

    .line 226
    const-string v2, "ShareParams"

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_ef

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v3, 0x9

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_147
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_147} :catch_dd

    goto :goto_ef
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
    .line 295
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .registers 8
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
    .line 265
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 266
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 267
    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 268
    if-eqz p2, :cond_19

    .line 269
    const-string v2, "guid"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 271
    :cond_19
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 274
    const-string v3, "notebook"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getNotebook()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v3, "title"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v3, "text"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v1, "images"

    iget-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iput-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 279
    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 240
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 242
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
    .line 291
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
    .line 287
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
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 252
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 254
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcn/sharesdk/evernote/Evernote;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 35
    const/16 v0, 0xc

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
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "ConsumerKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/Evernote;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/evernote/Evernote;->a:Ljava/lang/String;

    .line 29
    const-string v0, "ConsumerSecret"

    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/Evernote;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/evernote/Evernote;->b:Ljava/lang/String;

    .line 30
    const-string v0, "HostType"

    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/Evernote;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/evernote/Evernote;->c:Ljava/lang/String;

    .line 31
    const-string v0, "true"

    const-string v1, "ShareByAppClient"

    invoke-virtual {p0, v1}, Lcn/sharesdk/evernote/Evernote;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/evernote/Evernote;->d:Z

    .line 32
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 4

    .prologue
    .line 47
    const-string v0, "host_type"

    const-string v1, "HostType"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/evernote/Evernote;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "0"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 49
    :cond_1a
    const-string v0, "sandbox"

    iput-object v0, p0, Lcn/sharesdk/evernote/Evernote;->c:Ljava/lang/String;

    .line 57
    :goto_1e
    const-string v0, "consumer_key"

    const-string v1, "ConsumerKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/evernote/Evernote;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/evernote/Evernote;->a:Ljava/lang/String;

    .line 58
    const-string v0, "consumer_secret"

    const-string v1, "ConsumerSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/evernote/Evernote;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/evernote/Evernote;->b:Ljava/lang/String;

    .line 59
    return-void

    .line 50
    :cond_33
    const-string v1, "1"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 51
    const-string v0, "china"

    iput-object v0, p0, Lcn/sharesdk/evernote/Evernote;->c:Ljava/lang/String;

    goto :goto_1e

    .line 52
    :cond_44
    const-string v1, "2"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 53
    const-string v0, "product"

    iput-object v0, p0, Lcn/sharesdk/evernote/Evernote;->c:Ljava/lang/String;

    goto :goto_1e

    .line 55
    :cond_55
    iput-object v0, p0, Lcn/sharesdk/evernote/Evernote;->c:Ljava/lang/String;

    goto :goto_1e
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 246
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 248
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 7
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    .line 117
    invoke-static {p0}, Lcn/sharesdk/evernote/d;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/evernote/d;

    move-result-object v0

    .line 119
    :try_start_6
    invoke-virtual {v0, p1}, Lcn/sharesdk/evernote/d;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 120
    if-nez v0, :cond_1d

    .line 121
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1c

    .line 122
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 138
    :cond_1c
    :goto_1c
    return-void

    .line 126
    :cond_1d
    if-nez p1, :cond_30

    .line 127
    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "nickname"

    const-string v3, "username"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_30
    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1c

    .line 131
    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_3b} :catch_3c

    goto :goto_1c

    .line 133
    :catch_3c
    move-exception v0

    .line 134
    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1c

    .line 135
    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1c
.end method
