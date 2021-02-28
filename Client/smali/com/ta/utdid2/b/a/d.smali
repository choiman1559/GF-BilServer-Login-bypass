.class public Lcom/ta/utdid2/b/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/b/a/d$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;

.field private final a:Ljava/lang/Object;

.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Lcom/ta/utdid2/b/a/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/b/a/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/util/HashMap;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/io/File;

    return-void

    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Directory can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()Ljava/io/File;
    .registers 3

    iget-object v1, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/io/File;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/ta/utdid2/b/a/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Ljava/io/File;)Ljava/io/File;
    .registers 2

    invoke-static {p0}, Lcom/ta/utdid2/b/a/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    invoke-direct {p0}, Lcom/ta/utdid2/b/a/d;->a()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ta/utdid2/b/a/d;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/ta/utdid2/b/a/d;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    sget-object v2, Lcom/ta/utdid2/b/a/d;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/utdid2/b/a/d$a;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/ta/utdid2/b/a/d$a;->d()Z

    move-result v3

    if-nez v3, :cond_1a

    monitor-exit v2

    :goto_19
    return-object v0

    :cond_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_55

    invoke-static {v4}, Lcom/ta/utdid2/b/a/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2b
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_48

    :try_start_37
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_3c} :catch_58
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_90
    .catchall {:try_start_37 .. :try_end_3c} :catchall_b7

    :try_start_3c
    invoke-static {v2}, Lcom/ta/utdid2/b/a/e;->a(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3c .. :try_end_43} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_43} :catch_bf
    .catchall {:try_start_3c .. :try_end_43} :catchall_ba

    if-eqz v2, :cond_48

    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_48} :catch_af

    :cond_48
    :goto_48
    sget-object v2, Lcom/ta/utdid2/b/a/d;->b:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v0, :cond_9a

    :try_start_4d
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/b/a/d$a;->a(Ljava/util/Map;)V

    :cond_50
    :goto_50
    monitor-exit v2

    goto :goto_19

    :catchall_52
    move-exception v0

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_52

    throw v0

    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0

    :catch_58
    move-exception v2

    move-object v2, v1

    :goto_5a
    :try_start_5a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_75
    .catchall {:try_start_5a .. :try_end_5f} :catchall_80

    :try_start_5f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_68} :catch_c3
    .catchall {:try_start_5f .. :try_end_68} :catchall_c1

    if-eqz v3, :cond_6d

    :try_start_6a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6d} :catch_b1
    .catchall {:try_start_6a .. :try_end_6d} :catchall_bc

    :cond_6d
    :goto_6d
    if-eqz v3, :cond_48

    :try_start_6f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_48

    :catch_73
    move-exception v2

    goto :goto_48

    :catch_75
    move-exception v3

    :goto_76
    if-eqz v2, :cond_c8

    :try_start_78
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_7d
    .catchall {:try_start_78 .. :try_end_7b} :catchall_ba

    move-object v3, v2

    goto :goto_6d

    :catch_7d
    move-exception v3

    move-object v3, v2

    goto :goto_6d

    :catchall_80
    move-exception v0

    move-object v3, v2

    :goto_82
    if-eqz v3, :cond_87

    :try_start_84
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_87} :catch_b3
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    :cond_87
    :goto_87
    :try_start_87
    throw v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception v0

    move-object v2, v3

    :goto_8a
    if-eqz v2, :cond_8f

    :try_start_8c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8f} :catch_b5

    :cond_8f
    :goto_8f
    throw v0

    :catch_90
    move-exception v2

    move-object v2, v1

    :goto_92
    if-eqz v2, :cond_48

    :try_start_94
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_48

    :catch_98
    move-exception v2

    goto :goto_48

    :cond_9a
    :try_start_9a
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/utdid2/b/a/d$a;

    if-nez v0, :cond_50

    new-instance v0, Lcom/ta/utdid2/b/a/d$a;

    invoke-direct {v0, v4, p2, v1}, Lcom/ta/utdid2/b/a/d$a;-><init>(Ljava/io/File;ILjava/util/Map;)V

    iget-object v1, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ae
    .catchall {:try_start_9a .. :try_end_ae} :catchall_52

    goto :goto_50

    :catch_af
    move-exception v2

    goto :goto_48

    :catch_b1
    move-exception v2

    goto :goto_6d

    :catch_b3
    move-exception v1

    goto :goto_87

    :catch_b5
    move-exception v1

    goto :goto_8f

    :catchall_b7
    move-exception v0

    move-object v2, v1

    goto :goto_8a

    :catchall_ba
    move-exception v0

    goto :goto_8a

    :catchall_bc
    move-exception v0

    move-object v2, v3

    goto :goto_8a

    :catch_bf
    move-exception v3

    goto :goto_92

    :catchall_c1
    move-exception v0

    goto :goto_82

    :catch_c3
    move-exception v2

    move-object v2, v3

    goto :goto_76

    :catch_c6
    move-exception v3

    goto :goto_5a

    :cond_c8
    move-object v3, v2

    goto :goto_6d
.end method
