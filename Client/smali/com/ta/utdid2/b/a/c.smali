.class public Lcom/ta/utdid2/b/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Lcom/ta/utdid2/b/a/b$a;

.field private a:Lcom/ta/utdid2/b/a/b;

.field private a:Lcom/ta/utdid2/b/a/d;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->i:Z

    iput-boolean p4, p0, Lcom/ta/utdid2/b/a/c;->f:Z

    iput-boolean p5, p0, Lcom/ta/utdid2/b/a/c;->i:Z

    iput-object p3, p0, Lcom/ta/utdid2/b/a/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/ta/utdid2/b/a/c;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/ta/utdid2/b/a/c;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_4a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "t"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_4a
    const/4 v2, 0x0

    :try_start_4b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_ef

    move-result-object v2

    :goto_4f
    invoke-static {v2}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f5

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ta/utdid2/b/a/c;->h:Z

    iput-boolean v2, p0, Lcom/ta/utdid2/b/a/c;->g:Z

    :goto_5a
    iget-boolean v2, p0, Lcom/ta/utdid2/b/a/c;->g:Z

    if-nez v2, :cond_62

    iget-boolean v2, p0, Lcom/ta/utdid2/b/a/c;->h:Z

    if-eqz v2, :cond_a2

    :cond_62
    if-eqz p1, :cond_a2

    invoke-static {p2}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a2

    invoke-direct {p0, p2}, Lcom/ta/utdid2/b/a/c;->a(Ljava/lang/String;)Lcom/ta/utdid2/b/a/d;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    if-eqz v2, :cond_a2

    :try_start_74
    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    const-string v3, "t"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v6, v7}, Lcom/ta/utdid2/b/a/b;->getLong(Ljava/lang/String;J)J
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_86} :catch_1ea

    move-result-wide v2

    if-nez p5, :cond_14b

    cmp-long v4, v0, v2

    if-lez v4, :cond_11b

    :try_start_8d
    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/b/a/b;)V

    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9d} :catch_1f6

    move-wide v8, v2

    move-wide v2, v0

    move-wide v0, v8

    :goto_a0
    move-wide v4, v0

    move-wide v0, v2

    :cond_a2
    :goto_a2
    cmp-long v2, v0, v4

    if-nez v2, :cond_b2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_ee

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_ee

    :cond_b2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v6, p0, Lcom/ta/utdid2/b/a/c;->i:Z

    if-eqz v6, :cond_ca

    iget-boolean v6, p0, Lcom/ta/utdid2/b/a/c;->i:Z

    if-eqz v6, :cond_ee

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_ee

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_ee

    :cond_ca
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "t2"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_dc
    :try_start_dc
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-interface {v0}, Lcom/ta/utdid2/b/a/b;->a()Lcom/ta/utdid2/b/a/b$a;

    move-result-object v0

    const-string v1, "t2"

    invoke-interface {v0, v1, v2, v3}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;J)Lcom/ta/utdid2/b/a/b$a;

    invoke-interface {v0}, Lcom/ta/utdid2/b/a/b$a;->commit()Z
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_ee} :catch_1f3

    :cond_ee
    :goto_ee
    return-void

    :catch_ef
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4f

    :cond_f5
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_104

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ta/utdid2/b/a/c;->h:Z

    iput-boolean v2, p0, Lcom/ta/utdid2/b/a/c;->g:Z

    goto/16 :goto_5a

    :cond_104
    const-string v3, "mounted_ro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_114

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ta/utdid2/b/a/c;->g:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ta/utdid2/b/a/c;->h:Z

    goto/16 :goto_5a

    :cond_114
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ta/utdid2/b/a/c;->h:Z

    iput-boolean v2, p0, Lcom/ta/utdid2/b/a/c;->g:Z

    goto/16 :goto_5a

    :cond_11b
    cmp-long v4, v0, v2

    if-gez v4, :cond_132

    :try_start_11f
    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    iget-object v5, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/b/a/c;->a(Lcom/ta/utdid2/b/a/b;Landroid/content/SharedPreferences;)V

    const/4 v4, 0x0

    invoke-virtual {p1, p3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    move-wide v8, v2

    move-wide v2, v0

    move-wide v0, v8

    goto/16 :goto_a0

    :cond_132
    cmp-long v4, v0, v2

    if-nez v4, :cond_1ff

    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/b/a/b;)V

    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    move-wide v8, v2

    move-wide v2, v0

    move-wide v0, v8

    goto/16 :goto_a0

    :cond_14b
    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    const-string v5, "t2"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_154} :catch_1f6

    move-result-wide v4

    :try_start_155
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    const-string v1, "t2"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Lcom/ta/utdid2/b/a/b;->getLong(Ljava/lang/String;J)J
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_15e} :catch_1fa

    move-result-wide v0

    cmp-long v2, v4, v0

    if-gez v2, :cond_17c

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_17c

    :try_start_169
    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/b/a/b;)V

    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    move-wide v2, v4

    goto/16 :goto_a0

    :cond_17c
    cmp-long v2, v4, v0

    if-lez v2, :cond_197

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_197

    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    iget-object v3, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/b/a/c;->a(Lcom/ta/utdid2/b/a/b;Landroid/content/SharedPreferences;)V

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    move-wide v2, v4

    goto/16 :goto_a0

    :cond_197
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_1b4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1b4

    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    iget-object v3, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/b/a/c;->a(Lcom/ta/utdid2/b/a/b;Landroid/content/SharedPreferences;)V

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    move-wide v2, v4

    goto/16 :goto_a0

    :cond_1b4
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1d3

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1d3

    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/b/a/b;)V

    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    move-wide v2, v4

    goto/16 :goto_a0

    :cond_1d3
    cmp-long v2, v4, v0

    if-nez v2, :cond_1e7

    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/b/a/b;)V

    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_1e7} :catch_1fd

    :cond_1e7
    move-wide v2, v4

    goto/16 :goto_a0

    :catch_1ea
    move-exception v2

    move-wide v8, v4

    move-wide v4, v0

    move-wide v0, v8

    :goto_1ee
    move-wide v8, v0

    move-wide v0, v4

    move-wide v4, v8

    goto/16 :goto_a2

    :catch_1f3
    move-exception v0

    goto/16 :goto_ee

    :catch_1f6
    move-exception v4

    move-wide v4, v0

    move-wide v0, v2

    goto :goto_1ee

    :catch_1fa
    move-exception v0

    move-wide v0, v2

    goto :goto_1ee

    :catch_1fd
    move-exception v2

    goto :goto_1ee

    :cond_1ff
    move-wide v8, v2

    move-wide v2, v0

    move-wide v0, v8

    goto/16 :goto_a0
.end method

.method private a(Ljava/lang/String;)Lcom/ta/utdid2/b/a/d;
    .registers 4

    invoke-direct {p0, p1}, Lcom/ta/utdid2/b/a/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v1, Lcom/ta/utdid2/b/a/d;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ta/utdid2/b/a/d;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .registers 7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2f

    new-instance v0, Ljava/io/File;

    const-string v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2e
    :goto_2e
    return-object v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/b/a/b;)V
    .registers 9

    if-eqz p1, :cond_74

    if-eqz p2, :cond_74

    invoke-interface {p2}, Lcom/ta/utdid2/b/a/b;->a()Lcom/ta/utdid2/b/a/b$a;

    move-result-object v2

    if-eqz v2, :cond_74

    invoke-interface {v2}, Lcom/ta/utdid2/b/a/b$a;->b()Lcom/ta/utdid2/b/a/b$a;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_39

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/b/a/b$a;

    goto :goto_19

    :cond_39
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_47

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b$a;

    goto :goto_19

    :cond_47
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_55

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;J)Lcom/ta/utdid2/b/a/b$a;

    goto :goto_19

    :cond_55
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_63

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;F)Lcom/ta/utdid2/b/a/b$a;

    goto :goto_19

    :cond_63
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_19

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;Z)Lcom/ta/utdid2/b/a/b$a;

    goto :goto_19

    :cond_71
    :try_start_71
    invoke-interface {v2}, Lcom/ta/utdid2/b/a/b$a;->commit()Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    :cond_74
    :goto_74
    return-void

    :catch_75
    move-exception v0

    goto :goto_74
.end method

.method private a(Lcom/ta/utdid2/b/a/b;Landroid/content/SharedPreferences;)V
    .registers 9

    if-eqz p1, :cond_74

    if-eqz p2, :cond_74

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_74

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/ta/utdid2/b/a/b;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_39

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    :cond_39
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_47

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    :cond_47
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_55

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    :cond_55
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_63

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    :cond_63
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_19

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    :cond_71
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_74
    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    :cond_10
    iget-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->h:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-interface {v0}, Lcom/ta/utdid2/b/a/b;->a()Lcom/ta/utdid2/b/a/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    :cond_24
    invoke-direct {p0}, Lcom/ta/utdid2/b/a/c;->c()Z

    return-void
.end method

.method private c()Z
    .registers 2

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-interface {v0}, Lcom/ta/utdid2/b/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/ta/utdid2/b/a/c;->commit()Z

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public commit()Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v4, :cond_22

    iget-boolean v4, p0, Lcom/ta/utdid2/b/a/c;->i:Z

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    const-string v5, "t"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_19
    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_22

    move v0, v1

    :cond_22
    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ta/utdid2/b/a/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    :cond_34
    const/4 v2, 0x0

    :try_start_35
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_92

    move-result-object v2

    :goto_39
    invoke-static {v2}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_91

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    if-nez v3, :cond_9f

    iget-object v3, p0, Lcom/ta/utdid2/b/a/c;->c:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ta/utdid2/b/a/c;->a(Ljava/lang/String;)Lcom/ta/utdid2/b/a/d;

    move-result-object v3

    if-eqz v3, :cond_6e

    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    iget-boolean v1, p0, Lcom/ta/utdid2/b/a/c;->i:Z

    if-nez v1, :cond_97

    iget-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-direct {p0, v1, v3}, Lcom/ta/utdid2/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/b/a/b;)V

    :goto_66
    iget-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-interface {v1}, Lcom/ta/utdid2/b/a/b;->a()Lcom/ta/utdid2/b/a/b$a;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    :cond_6e
    :goto_6e
    const-string v1, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    const-string v1, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    if-eqz v1, :cond_91

    :cond_82
    :try_start_82
    iget-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_91} :catch_b0

    :cond_91
    :goto_91
    return v0

    :catch_92
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39

    :cond_97
    iget-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    iget-object v3, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, v1, v3}, Lcom/ta/utdid2/b/a/c;->a(Lcom/ta/utdid2/b/a/b;Landroid/content/SharedPreferences;)V

    goto :goto_66

    :cond_9f
    :try_start_9f
    iget-object v3, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    invoke-interface {v3}, Lcom/ta/utdid2/b/a/b$a;->commit()Z
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a8} :catch_ad

    move-result v3

    if-nez v3, :cond_6e

    move v0, v1

    goto :goto_6e

    :catch_ad
    move-exception v0

    move v0, v1

    goto :goto_6e

    :catch_b0
    move-exception v1

    goto :goto_91
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/ta/utdid2/b/a/c;->c()Z

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/b/a/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_23
    const-string v0, ""

    goto :goto_15
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/ta/utdid2/b/a/c;->b()V

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1a
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/b/a/b$a;

    :cond_23
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/ta/utdid2/b/a/c;->b()V

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1a
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    invoke-interface {v0, p1}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;)Lcom/ta/utdid2/b/a/b$a;

    :cond_23
    return-void
.end method
