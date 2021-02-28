.class public Lcom/alipay/sdk/util/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/util/n$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field static final b:I = 0x7d

.field private static final c:Ljava/lang/String; = "com.alipay.android.app"

.field private static final d:Ljava/lang/String; = "com.eg.android.AlipayGphoneRC"

.field private static final e:I = 0x63

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "10.1.5.1013151"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "10.1.5.1013148"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/sdk/util/n;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/pm/PackageInfo;ILjava/lang/String;)Lcom/alipay/sdk/util/n$a;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/alipay/sdk/util/n$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/sdk/util/n$a;-><init>(Landroid/content/pm/PackageInfo;ILjava/lang/String;)V

    goto :goto_3
.end method

.method private static a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lcom/alipay/sdk/util/n$a;
    .registers 9

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/sdk/app/EnvUtils;->isSandBox()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p2, "com.eg.android.AlipayGphoneRC"

    :cond_11
    :try_start_11
    invoke-static {p1, p2}, Lcom/alipay/sdk/util/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_1c

    move-result-object v0

    :goto_15
    invoke-static {p0, v0}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_2a

    :goto_1b
    return-object v1

    :catch_1c
    move-exception v0

    const-string v2, "auth"

    const-string v3, "GetPackageInfoEx"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_15

    :cond_2a
    invoke-static {v0, p3, p4}, Lcom/alipay/sdk/util/n;->a(Landroid/content/pm/PackageInfo;ILjava/lang/String;)Lcom/alipay/sdk/util/n$a;

    move-result-object v1

    goto :goto_1b
.end method

.method public static a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/List;)Lcom/alipay/sdk/util/n$a;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/sys/a;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/data/a$a;",
            ">;)",
            "Lcom/alipay/sdk/util/n$a;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p2, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/data/a$a;

    if-eqz v0, :cond_9

    iget-object v3, v0, Lcom/alipay/sdk/data/a$a;->a:Ljava/lang/String;

    iget v4, v0, Lcom/alipay/sdk/data/a$a;->b:I

    iget-object v0, v0, Lcom/alipay/sdk/data/a$a;->c:Ljava/lang/String;

    invoke-static {p0, p1, v3, v4, v0}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lcom/alipay/sdk/util/n$a;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/util/n$a;->a(Lcom/alipay/sdk/sys/a;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcom/alipay/sdk/util/n$a;->a()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_30
    move-object v0, v1

    goto :goto_4
.end method

.method static a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/alipay/sdk/app/EnvUtils;->isSandBox()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.eg.android.AlipayGphoneRC"

    :goto_8
    return-object v0

    :cond_9
    :try_start_9
    sget-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/data/a$a;

    iget-object v0, v0, Lcom/alipay/sdk/data/a$a;->a:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_8

    :catch_15
    move-exception v0

    const-string v0, "com.eg.android.AlipayGphone"

    goto :goto_8
.end method

.method public static a(I)Ljava/lang/String;
    .registers 11

    const-wide/high16 v8, 0x4039000000000000L    # 25.0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p0, :cond_5f

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_64

    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :pswitch_1a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    const-wide v6, 0x4050400000000000L    # 65.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :pswitch_33
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    const-wide v6, 0x4058400000000000L    # 97.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :pswitch_4c
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_5f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_33
        :pswitch_4c
    .end packed-switch
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v1, ""

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3d
    move-object v1, v0

    goto :goto_16

    :cond_3f
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_8b} :catch_8d

    move-result-object v0

    goto :goto_3d

    :catch_8d
    move-exception v0

    const-string v1, ""

    :cond_90
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9b

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_9b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a3

    const-string v1, "N"

    :cond_a3
    return-object v1

    :cond_a4
    move-object v0, v1

    goto :goto_3d
.end method

.method public static a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_e} :catch_f

    :goto_e
    return-object v0

    :catch_f
    move-exception v1

    const-string v2, "biz"

    const-string v3, "GetPackageInfoEx"

    invoke-static {p0, v2, v3, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public static a(Lcom/alipay/sdk/sys/a;[B)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    instance-of v1, v0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_30

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_30

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_28

    move-result-object v0

    :goto_27
    return-object v0

    :catch_28
    move-exception v0

    const-string v1, "auth"

    const-string v2, "GetPublicKeyFromSignEx"

    invoke-static {p0, v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_30
    const/4 v0, 0x0

    goto :goto_27
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/alipay/sdk/app/EnvUtils;->isSandBox()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "com.eg.android.AlipayGphoneRC"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "com.eg.android.AlipayGphoneRC.IAlixPay"

    :goto_10
    return-object v0

    :cond_11
    const-string v0, "com.eg.android.AlipayGphone.IAlixPay"

    goto :goto_10
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v1, v0, :cond_12

    const-string v0, ""

    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :cond_1d
    const/4 v2, 0x1

    if-ge v0, v2, :cond_25

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_25
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_2a

    move-result-object v0

    goto :goto_11

    :catch_2a
    move-exception v0

    const-string v0, ""

    goto :goto_11
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7

    const/16 v5, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_28

    aget-byte v3, p0, v0

    and-int/lit16 v4, v3, 0xf0

    shr-int/lit8 v4, v4, 0x4

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/sys/a;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, -0x1

    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v8, :cond_50

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_50

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_26
    if-ge v0, v4, :cond_50

    aget-object v5, v3, v0

    const/16 v6, 0x3d

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-eq v6, v8, :cond_3b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_3e

    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_3e
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/alipay/sdk/util/n;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    :cond_50
    return-object v2
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.alipay.android.app"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_12

    move-result-object v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method static a(Landroid/content/pm/PackageInfo;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    :try_start_5
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sget-object v3, Lcom/alipay/sdk/util/n;->f:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    sget-object v3, Lcom/alipay/sdk/util/n;->f:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1a} :catch_1f

    move-result v2

    if-eqz v2, :cond_4

    :cond_1d
    move v0, v1

    goto :goto_4

    :catch_1f
    move-exception v1

    goto :goto_4
.end method

.method private static a(Lcom/alipay/sdk/sys/a;Landroid/content/pm/PackageInfo;)Z
    .registers 6

    const-string v1, ""

    const/4 v0, 0x0

    if-nez p1, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "info == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_18
    if-nez v0, :cond_21

    const-string v2, "auth"

    const-string v3, "NotIncludeSignatures"

    invoke-static {p0, v2, v3, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    return v0

    :cond_22
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v2, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "info.signatures == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :cond_3a
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-gtz v2, :cond_53

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "info.signatures.length <= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :cond_53
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public static a(Lcom/alipay/sdk/sys/a;Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;)Z
    .registers 11

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    if-nez p3, :cond_d

    move v0, v1

    goto :goto_8

    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "alipays://platformapi/startApp?"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent://platformapi/startapp?"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    :cond_2d
    :try_start_2d
    sget-object v1, Lcom/alipay/sdk/app/i;->a:Ljava/util/List;

    invoke-static {p0, p3, v1}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/List;)Lcom/alipay/sdk/util/n$a;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/alipay/sdk/util/n$a;->a()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1, p0}, Lcom/alipay/sdk/util/n$a;->a(Lcom/alipay/sdk/sys/a;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "intent://platformapi/startapp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    const-string v1, "intent://platformapi/startapp\\?"

    const-string v2, "alipays://platformapi/startApp?"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_51
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_5f} :catch_60

    goto :goto_8

    :catch_60
    move-exception v1

    goto :goto_8

    :cond_62
    const-string v2, "sdklite://h5quit"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_72

    const-string v2, "http://m.alipay.com/?action=h5quit"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7d

    :cond_72
    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    goto :goto_8

    :cond_7d
    const-string v2, "sdklite://h5quit?result="

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_180

    :try_start_85
    const-string v1, "sdklite://h5quit?result="

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sdklite://h5quit?result="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&end_code="

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "&end_code="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-object v1, Lcom/alipay/sdk/app/k;->a:Lcom/alipay/sdk/app/k;

    invoke-virtual {v1}, Lcom/alipay/sdk/app/k;->a()I

    move-result v1

    if-eq v2, v1, :cond_bb

    sget-object v1, Lcom/alipay/sdk/app/k;->g:Lcom/alipay/sdk/app/k;

    invoke-virtual {v1}, Lcom/alipay/sdk/app/k;->a()I

    move-result v1

    if-ne v2, v1, :cond_15b

    :cond_bb
    sget-boolean v1, Lcom/alipay/sdk/cons/a;->u:Z

    if-eqz v1, :cond_13f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sdklite://h5quit?result="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, "sdklite://h5quit?result="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "&end_code="

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "&return_url="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string v5, "&return_url="

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, "&return_url="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&return_url="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&"

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&"

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_122
    invoke-static {v2}, Lcom/alipay/sdk/app/k;->b(I)Lcom/alipay/sdk/app/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/app/k;->a()I

    move-result v3

    invoke-virtual {v2}, Lcom/alipay/sdk/app/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/alipay/sdk/app/j;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_135} :catch_177

    :goto_135
    new-instance v1, Lcom/alipay/sdk/util/o;

    invoke-direct {v1, p3}, Lcom/alipay/sdk/util/o;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p3, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :cond_13f
    :try_start_13f
    invoke-static {p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sdklite://h5quit?result="

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "sdklite://h5quit?result="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const-string v4, "&end_code="

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_122

    :cond_15b
    sget-object v1, Lcom/alipay/sdk/app/k;->b:Lcom/alipay/sdk/app/k;

    invoke-virtual {v1}, Lcom/alipay/sdk/app/k;->a()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/sdk/app/k;->b(I)Lcom/alipay/sdk/app/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/app/k;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/alipay/sdk/app/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/alipay/sdk/app/j;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_176} :catch_177

    goto :goto_135

    :catch_177
    move-exception v1

    invoke-static {}, Lcom/alipay/sdk/app/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V

    goto :goto_135

    :cond_180
    move v0, v1

    goto/16 :goto_8
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0xc0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "biz"

    const-string v2, "H5PayDataAnalysisError"

    invoke-static {p0, v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_6
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_e
    if-ge v0, v4, :cond_31

    aget-object v5, v3, v0

    const-string v6, "="

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v7, v6, :cond_1f

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1f
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_31
    return-object v2
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/alipay/sdk/util/n;->a()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_1a

    const/16 v2, 0x63

    if-ge v1, v2, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    :catch_1a
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public static b(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/sys/a;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/data/a$a;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/data/a$a;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/alipay/sdk/data/a$a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/sdk/app/EnvUtils;->isSandBox()Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "com.eg.android.AlipayGphone"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v0, "com.eg.android.AlipayGphoneRC"

    :cond_25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_28} :catch_33

    move-result-object v3

    const/16 v4, 0x80

    :try_start_2b
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_2e} :catch_3f
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_33

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_32
    return v0

    :catch_33
    move-exception v0

    const-string v2, "biz"

    const-string v3, "CheckLaunchAppExistEx"

    invoke-static {p0, v2, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_32

    :cond_3d
    move v0, v1

    goto :goto_32

    :catch_3f
    move-exception v0

    goto :goto_5
.end method

.method public static c()Ljava/lang/String;
    .registers 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-static {}, Lcom/alipay/sdk/util/n;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_12

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_12
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1e

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Linux "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    invoke-static {}, Lcom/alipay/sdk/util/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sdk/util/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/alipay/sdk/util/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/alipay/sdk/util/n;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(sdk android)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-object v0

    :catch_6
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_5
.end method

.method private static d()Ljava/lang/String;
    .registers 4

    const/4 v3, 0x4

    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/version"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_30

    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_2b

    move-result-object v1

    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_34

    const-string v0, "Unavailable"

    :goto_2a
    return-object v0

    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_30} :catch_30

    :catch_30
    move-exception v0

    const-string v0, "Unavailable"

    goto :goto_2a

    :cond_34
    :try_start_34
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ge v1, v3, :cond_3d

    const-string v0, "Unavailable"

    goto :goto_2a

    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_77} :catch_30

    move-result-object v0

    goto :goto_2a
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "^http(s)?://([a-z0-9_\\-]+\\.)*(alipaydev|alipay|taobao)\\.(com|net)(:\\d+)?(/.*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/alipay/sdk/util/n;->h(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "-"

    :try_start_2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1c} :catch_1e

    move-result-object v0

    :goto_1d
    return-object v0

    :catch_1e
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/alipay/sdk/util/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/n;->a([B)Ljava/lang/String;
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    const-string v0, ""

    goto :goto_15
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "-1;-1"

    return-object v0
.end method

.method private static h(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 4

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v1
.end method
