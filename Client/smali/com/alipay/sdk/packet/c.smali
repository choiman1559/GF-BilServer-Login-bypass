.class public final Lcom/alipay/sdk/packet/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/alipay/sdk/packet/c;->a:Z

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/alipay/sdk/util/n;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/packet/c;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(I)Ljava/lang/String;
    .registers 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%05d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    invoke-static {p0, p1}, Lcom/alipay/sdk/encrypt/e;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;[BLjava/lang/String;)[B
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/alipay/sdk/encrypt/f;->a(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static varargs a([[B)[B
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_3d
    .catchall {:try_start_7 .. :try_end_c} :catchall_50

    :try_start_c
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_6d
    .catchall {:try_start_c .. :try_end_11} :catchall_67

    :try_start_11
    array-length v4, p0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v4, :cond_29

    aget-object v5, p0, v1

    array-length v6, v5

    invoke-static {v6}, Lcom/alipay/sdk/packet/c;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_29
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2f} :catch_70
    .catchall {:try_start_11 .. :try_end_2f} :catchall_6b

    move-result-object v0

    if-eqz v3, :cond_35

    :try_start_32
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_5f

    :cond_35
    :goto_35
    if-eqz v2, :cond_6

    :try_start_37
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_6

    :catch_3b
    move-exception v1

    goto :goto_6

    :catch_3d
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_40
    :try_start_40
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_6b

    if-eqz v3, :cond_48

    :try_start_45
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_61

    :cond_48
    :goto_48
    if-eqz v2, :cond_6

    :try_start_4a
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_6

    :catch_4e
    move-exception v1

    goto :goto_6

    :catchall_50
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_54
    if-eqz v3, :cond_59

    :try_start_56
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_63

    :cond_59
    :goto_59
    if-eqz v2, :cond_5e

    :try_start_5b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_65

    :cond_5e
    :goto_5e
    throw v0

    :catch_5f
    move-exception v1

    goto :goto_35

    :catch_61
    move-exception v1

    goto :goto_48

    :catch_63
    move-exception v1

    goto :goto_59

    :catch_65
    move-exception v1

    goto :goto_5e

    :catchall_67
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_54

    :catchall_6b
    move-exception v0

    goto :goto_54

    :catch_6d
    move-exception v1

    move-object v2, v0

    goto :goto_40

    :catch_70
    move-exception v1

    goto :goto_40
.end method

.method private static b(Ljava/lang/String;[BLjava/lang/String;)[B
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/alipay/sdk/encrypt/f;->b(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alipay/sdk/packet/d;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/alipay/sdk/packet/d;->b()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_5d
    .catchall {:try_start_1 .. :try_end_a} :catchall_6d

    const/4 v1, 0x5

    :try_start_b
    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/alipay/sdk/packet/c;->a(Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_82
    .catchall {:try_start_b .. :try_end_23} :catchall_80

    const/4 v1, 0x5

    :try_start_24
    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/alipay/sdk/packet/c;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_8b

    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    iget-boolean v4, p0, Lcom/alipay/sdk/packet/c;->a:Z

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/alipay/sdk/packet/c;->b:Ljava/lang/String;

    invoke-static {v4, v1, p2}, Lcom/alipay/sdk/packet/c;->b(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v1

    :cond_43
    invoke-virtual {p1}, Lcom/alipay/sdk/packet/d;->a()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-static {v1}, Lcom/alipay/sdk/encrypt/c;->b([B)[B

    move-result-object v1

    move-object v4, v1

    :goto_4e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_53} :catch_85
    .catchall {:try_start_24 .. :try_end_53} :catchall_80

    :goto_53
    if-eqz v2, :cond_58

    :try_start_55
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_7c

    :cond_58
    :goto_58
    if-nez v3, :cond_76

    if-nez v1, :cond_76

    :goto_5c
    return-object v0

    :catch_5d
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_60
    :try_start_60
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_80

    if-eqz v2, :cond_87

    :try_start_65
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_6a

    move-object v1, v0

    goto :goto_58

    :catch_6a
    move-exception v1

    move-object v1, v0

    goto :goto_58

    :catchall_6d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_70
    if-eqz v2, :cond_75

    :try_start_72
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_7e

    :cond_75
    :goto_75
    throw v0

    :cond_76
    new-instance v0, Lcom/alipay/sdk/packet/b;

    invoke-direct {v0, v3, v1}, Lcom/alipay/sdk/packet/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :catch_7c
    move-exception v2

    goto :goto_58

    :catch_7e
    move-exception v1

    goto :goto_75

    :catchall_80
    move-exception v0

    goto :goto_70

    :catch_82
    move-exception v1

    move-object v3, v0

    goto :goto_60

    :catch_85
    move-exception v1

    goto :goto_60

    :cond_87
    move-object v1, v0

    goto :goto_58

    :cond_89
    move-object v4, v1

    goto :goto_4e

    :cond_8b
    move-object v1, v0

    goto :goto_53
.end method

.method public a(Lcom/alipay/sdk/packet/b;ZLjava/lang/String;)Lcom/alipay/sdk/packet/d;
    .registers 11

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p1}, Lcom/alipay/sdk/packet/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/sdk/packet/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    if-eqz p2, :cond_1d

    :try_start_19
    invoke-static {v0}, Lcom/alipay/sdk/encrypt/c;->a([B)[B
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_43

    move-result-object v0

    :cond_1d
    :goto_1d
    iget-boolean v3, p0, Lcom/alipay/sdk/packet/c;->a:Z

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/alipay/sdk/packet/c;->b:Ljava/lang/String;

    sget-object v4, Lcom/alipay/sdk/cons/a;->e:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/sdk/packet/c;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/sdk/packet/c;->b:Ljava/lang/String;

    invoke-static {v4, v0, p3}, Lcom/alipay/sdk/packet/c;->a(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [[B

    aput-object v2, v4, v1

    aput-object v3, v4, v5

    aput-object v0, v4, v6

    invoke-static {v4}, Lcom/alipay/sdk/packet/c;->a([[B)[B

    move-result-object v0

    :goto_3c
    new-instance v1, Lcom/alipay/sdk/packet/d;

    invoke-direct {v1, p2, v0}, Lcom/alipay/sdk/packet/d;-><init>(Z[B)V

    move-object v0, v1

    goto :goto_6

    :catch_43
    move-exception v3

    move p2, v1

    goto :goto_1d

    :cond_46
    new-array v3, v6, [[B

    aput-object v2, v3, v1

    aput-object v0, v3, v5

    invoke-static {v3}, Lcom/alipay/sdk/packet/c;->a([[B)[B

    move-result-object v0

    goto :goto_3c
.end method
