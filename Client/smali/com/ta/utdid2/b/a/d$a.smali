.class final Lcom/ta/utdid2/b/a/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ta/utdid2/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/b/a/d$a$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;

.field private a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/ta/utdid2/b/a/b$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/io/File;

.field private final c:I

.field private final c:Ljava/io/File;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/b/a/d$a;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;ILjava/util/Map;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/d$a;->j:Z

    iput-object p1, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    invoke-static {p1}, Lcom/ta/utdid2/b/a/d;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->c:Ljava/io/File;

    iput p2, p0, Lcom/ta/utdid2/b/a/d$a;->c:I

    if-eqz p3, :cond_1c

    :goto_12
    iput-object p3, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/WeakHashMap;

    return-void

    :cond_1c
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_12
.end method

.method private a(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_7

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_14

    move-object v0, v1

    goto :goto_6

    :cond_14
    :try_start_14
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_6

    :catch_1a
    move-exception v0

    move-object v0, v1

    goto :goto_6
.end method

.method static synthetic a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/WeakHashMap;
    .registers 2

    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/ta/utdid2/b/a/d$a;)Z
    .registers 2

    invoke-direct {p0}, Lcom/ta/utdid2/b/a/d$a;->e()Z

    move-result v0

    return v0
.end method

.method private e()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/ta/utdid2/b/a/d$a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/ta/utdid2/b/a/d$a;->c:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_21

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    iget-object v1, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/ta/utdid2/b/a/d$a;->a(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v2, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/ta/utdid2/b/a/e;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/ta/utdid2/b/a/d$a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_36} :catch_38

    const/4 v0, 0x1

    goto :goto_1b

    :catch_38
    move-exception v1

    iget-object v1, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_1b
.end method


# virtual methods
.method public a()Lcom/ta/utdid2/b/a/b$a;
    .registers 2

    new-instance v0, Lcom/ta/utdid2/b/a/d$a$a;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/b/a/d$a$a;-><init>(Lcom/ta/utdid2/b/a/d$a;)V

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .registers 3

    if-eqz p1, :cond_6

    monitor-enter p0

    :try_start_3
    iput-object p1, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/Map;

    monitor-exit p0

    :cond_6
    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public a(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/ta/utdid2/b/a/d$a;->j:Z

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public b()Z
    .registers 3

    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    if-eqz v0, :cond_17

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public d()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/ta/utdid2/b/a/d$a;->j:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_f
    monitor-exit p0

    return-wide p2

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    move-object v0, p2

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method
