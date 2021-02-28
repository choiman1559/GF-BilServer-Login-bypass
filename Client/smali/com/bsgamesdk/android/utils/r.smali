.class public Lcom/bsgamesdk/android/utils/r;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/bsgamesdk/android/utils/r;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    const-class v3, Lcom/bsgamesdk/android/utils/r;

    monitor-enter v3

    :try_start_4
    sget-object v0, Lcom/bsgamesdk/android/utils/r;->a:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/bsgamesdk/android/utils/r;->a:Ljava/lang/String;

    monitor-exit v3

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/bus/mmc/devices"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_24

    const-string v0, ""

    sput-object v0, Lcom/bsgamesdk/android/utils/r;->a:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/utils/r;->a:Ljava/lang/String;

    monitor-exit v3

    goto :goto_b

    :catchall_21
    move-exception v0

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    :try_start_24
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2d

    array-length v0, v4

    if-nez v0, :cond_35

    :cond_2d
    const-string v0, ""

    sput-object v0, Lcom/bsgamesdk/android/utils/r;->a:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/utils/r;->a:Ljava/lang/String;

    monitor-exit v3

    goto :goto_b

    :cond_35
    array-length v5, v4

    move v2, v1

    :goto_37
    if-ge v2, v5, :cond_aa

    aget-object v6, v4, v2

    new-instance v0, Ljava/io/File;

    const-string v7, "block"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_4b

    array-length v0, v7

    if-nez v0, :cond_4f

    :cond_4b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_37

    :cond_4f
    array-length v8, v7

    move v0, v1

    :goto_51
    if-ge v0, v8, :cond_4b

    aget-object v9, v7, v0

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmcblk0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "serial"

    invoke-direct {v1, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/q;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v4, "name"

    invoke-direct {v2, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bsgamesdk/android/utils/q;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/utils/r;->a:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/utils/r;->a:Ljava/lang/String;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    sget-object v0, Lcom/bsgamesdk/android/utils/r;->a:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/utils/r;->a:Ljava/lang/String;

    :cond_a2
    sget-object v0, Lcom/bsgamesdk/android/utils/r;->a:Ljava/lang/String;

    monitor-exit v3

    goto/16 :goto_b

    :cond_a7
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_aa
    const-string v0, ""

    sput-object v0, Lcom/bsgamesdk/android/utils/r;->a:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/utils/r;->a:Ljava/lang/String;

    monitor-exit v3
    :try_end_b1
    .catchall {:try_start_24 .. :try_end_b1} :catchall_21

    goto/16 :goto_b
.end method
