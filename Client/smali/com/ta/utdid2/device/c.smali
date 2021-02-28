.class public Lcom/ta/utdid2/device/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ta/utdid2/device/c;

.field private static final e:Ljava/lang/Object;

.field private static final k:Ljava/lang/String;


# instance fields
.field private a:Lcom/ta/utdid2/b/a/c;

.field private a:Lcom/ta/utdid2/device/d;

.field private b:Lcom/ta/utdid2/b/a/c;

.field private b:Ljava/util/regex/Pattern;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".UTSystemConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/c;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    const-string v0, "xx_utdid_key"

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->i:Ljava/lang/String;

    const-string v0, "xx_utdid_domain"

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    iput-object v1, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v0, "[^0-9a-zA-Z=/+]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->b:Ljava/util/regex/Pattern;

    iput-object p1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/ta/utdid2/b/a/c;

    sget-object v2, Lcom/ta/utdid2/device/c;->k:Ljava/lang/String;

    const-string v3, "Alvin2"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ta/utdid2/b/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    new-instance v0, Lcom/ta/utdid2/b/a/c;

    const-string v2, ".DataStorage"

    const-string v3, "ContextData"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ta/utdid2/b/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    new-instance v0, Lcom/ta/utdid2/device/d;

    invoke-direct {v0}, Lcom/ta/utdid2/device/d;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    const-string v0, "K_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/c;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->i:Ljava/lang/String;

    const-string v0, "D_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/c;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ta/utdid2/device/c;
    .registers 3

    if-eqz p0, :cond_1a

    sget-object v0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    if-nez v0, :cond_1a

    sget-object v1, Lcom/ta/utdid2/device/c;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    sget-object v0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    if-nez v0, :cond_19

    new-instance v0, Lcom/ta/utdid2/device/c;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/device/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    sget-object v0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    invoke-direct {v0}, Lcom/ta/utdid2/device/c;->c()V

    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1d

    :cond_1a
    sget-object v0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    return-object v0

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_28

    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->a([B)[B

    move-result-object v0

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_28
    .array-data 1
        0x45t
        0x72t
        0x74t
        -0x21t
        0x7dt
        -0x36t
        -0x1ft
        0x56t
        -0xbt
        0xbt
        -0x4et
        -0x60t
        -0x11t
        -0x63t
        0x40t
        0x17t
        -0x5ft
        -0x7et
        -0x52t
        -0x40t
        0x71t
        0x74t
        -0x10t
        -0x67t
        0x31t
        -0x1et
        0x9t
        -0x27t
        0x21t
        -0x50t
        -0x44t
        -0x4et
        -0x75t
        0x35t
        0x1et
        -0x7at
        0x40t
        -0x68t
        0x4at
        -0x31t
        0x6at
        0x55t
        -0x26t
        -0x5dt
    .end array-data
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_15
    const/16 v1, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2a

    iget-object v1, p0, Lcom/ta/utdid2/device/c;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0
.end method

.method private c()V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v2, "UTDID2"

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v2, "UTDID"

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->f(Ljava/lang/String;)V

    :cond_24
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v3, "DID"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v2, "DID"

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/b/a/c;->remove(Ljava/lang/String;)V

    move v0, v1

    :cond_3b
    iget-object v2, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v3, "EI"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_51

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v2, "EI"

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/b/a/c;->remove(Ljava/lang/String;)V

    move v0, v1

    :cond_51
    iget-object v2, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v3, "SI"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v2, "SI"

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/b/a/c;->remove(Ljava/lang/String;)V

    :goto_66
    if-eqz v1, :cond_6d

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    invoke-virtual {v0}, Lcom/ta/utdid2/b/a/c;->commit()Z

    :cond_6d
    return-void

    :cond_6e
    move v1, v0

    goto :goto_66
.end method

.method private c()[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v0}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v0

    invoke-static {v2}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1, v2, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :try_start_2d
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/a/a/e;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_56

    move-result-object v0

    :goto_33
    invoke-static {v0}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {v1, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/device/c;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ta/utdid2/a/a/d;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_56
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method

.method private f(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v1, "UTDID2"

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/b/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    invoke-virtual {v0}, Lcom/ta/utdid2/b/a/c;->commit()Z

    :cond_31
    return-void
.end method

.method private f()Z
    .registers 5

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private g()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v1, "UTDID2"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v1, v0}, Lcom/ta/utdid2/device/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private g(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    iget-object v1, p0, Lcom/ta/utdid2/device/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    iget-object v1, p0, Lcom/ta/utdid2/device/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/b/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    invoke-virtual {v0}, Lcom/ta/utdid2/b/a/c;->commit()Z

    :cond_20
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->f()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1f
    const/16 v0, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_45

    const/4 v0, 0x0

    :try_start_28
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mqBRboGZkQPcAkyk"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_48

    move-result-object v0

    :goto_34
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    :try_start_3a
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_45} :catch_46

    :cond_45
    :goto_45
    return-void

    :catch_46
    move-exception v0

    goto :goto_45

    :catch_48
    move-exception v1

    goto :goto_34
.end method

.method private i(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dxCRMxhQkdGePGnp"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_21

    move-result-object v0

    :goto_d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    :try_start_13
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    goto :goto_1e

    :catch_21
    move-exception v1

    goto :goto_d
.end method

.method private j(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/c;->i(Ljava/lang/String;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    :goto_7
    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/ta/utdid2/device/c;->h()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    move-result-object v0

    goto :goto_7

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/ta/utdid2/device/c;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_3c

    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->c()[B

    move-result-object v0

    if-eqz v0, :cond_3a

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/c;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v1, v0}, Lcom/ta/utdid2/device/d;->c([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->j(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->g(Ljava/lang/String;)V

    :cond_33
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_35} :catch_36
    .catchall {:try_start_13 .. :try_end_35} :catchall_3c

    goto :goto_11

    :catch_36
    move-exception v0

    :try_start_37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3c

    :cond_3a
    const/4 v0, 0x0

    goto :goto_11

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    const-string v0, ""
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_3e

    :try_start_4
    iget-object v2, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mqBRboGZkQPcAkyk"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_ec
    .catchall {:try_start_4 .. :try_end_f} :catchall_3e

    move-result-object v0

    :goto_10
    :try_start_10
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_3e

    move-result v2

    if-eqz v2, :cond_18

    :goto_16
    monitor-exit p0

    return-object v0

    :cond_18
    :try_start_18
    new-instance v4, Lcom/ta/utdid2/device/e;

    invoke-direct {v4}, Lcom/ta/utdid2/device/e;-><init>()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_3e

    const/4 v2, 0x0

    :try_start_1e
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_41
    .catchall {:try_start_1e .. :try_end_29} :catchall_3e

    move-result-object v3

    :goto_2a
    :try_start_2a
    invoke-static {v3}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_88

    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->h(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_3e

    goto :goto_16

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_41
    move-exception v0

    move-object v3, v1

    goto :goto_2a

    :cond_44
    :try_start_44
    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ef

    iget-object v5, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v5, v0}, Lcom/ta/utdid2/device/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ef

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->j(Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_44 .. :try_end_5d} :catchall_3e

    :try_start_5d
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_68} :catch_85
    .catchall {:try_start_5d .. :try_end_68} :catchall_3e

    move-result-object v0

    :goto_69
    :try_start_69
    iget-object v3, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8a

    iput-object v3, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->f(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    goto :goto_16

    :catch_85
    move-exception v0

    move-object v0, v3

    goto :goto_69

    :cond_88
    const/4 v0, 0x1

    move v2, v0

    :cond_8a
    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a9

    iget-object v1, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v1, v0}, Lcom/ta/utdid2/device/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_9f

    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/c;->j(Ljava/lang/String;)V

    :cond_9f
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->h(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/c;->g(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    goto/16 :goto_16

    :cond_a9
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    iget-object v3, p0, Lcom/ta/utdid2/device/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e9

    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c7

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_c7
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e9

    iget-object v3, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/ta/utdid2/a/a/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e9

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    if-eqz v2, :cond_e0

    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->j(Ljava/lang/String;)V

    :cond_e0
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;
    :try_end_e7
    .catchall {:try_start_69 .. :try_end_e7} :catchall_3e

    goto/16 :goto_16

    :cond_e9
    move-object v0, v1

    goto/16 :goto_16

    :catch_ec
    move-exception v2

    goto/16 :goto_10

    :cond_ef
    move-object v0, v3

    goto/16 :goto_69
.end method
