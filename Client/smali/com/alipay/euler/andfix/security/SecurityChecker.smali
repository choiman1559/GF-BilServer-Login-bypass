.class public Lcom/alipay/euler/andfix/security/SecurityChecker;
.super Ljava/lang/Object;


# static fields
.field private static final CLASSES_DEX:Ljava/lang/String; = "classes.dex"

.field private static final DEBUG_DN:Ljavax/security/auth/x500/X500Principal;

.field private static final SP_MD5:Ljava/lang/String; = "-md5"

.field private static final SP_NAME:Ljava/lang/String; = "_andfix_"

.field private static final TAG:Ljava/lang/String; = "SecurityChecker"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDebuggable:Z

.field private mPublicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/euler/andfix/security/SecurityChecker;->DEBUG_DN:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/alipay/euler/andfix/security/SecurityChecker;->init(Landroid/content/Context;)V

    return-void
.end method

.method private check(Ljava/io/File;[Ljava/security/cert/Certificate;)Z
    .registers 6

    array-length v0, p2

    if-lez v0, :cond_1a

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-ltz v1, :cond_1a

    :try_start_9
    aget-object v0, p2, v1

    iget-object v2, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7

    :cond_1a
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    const/16 v1, 0x2000

    new-array v1, v1, [B

    :try_start_c
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_5a
    .catchall {:try_start_c .. :try_end_17} :catchall_4a

    :goto_17
    :try_start_17
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_32

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_23
    .catchall {:try_start_17 .. :try_end_22} :catchall_58

    goto :goto_17

    :catch_23
    move-exception v1

    :goto_24
    :try_start_24
    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_58

    if-eqz v2, :cond_7

    :try_start_29
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_7

    :catch_2d
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_7

    :cond_32
    if-eqz v2, :cond_37

    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_45

    :cond_37
    :goto_37
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :catch_45
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_37

    :catchall_4a
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4d
    if-eqz v2, :cond_52

    :try_start_4f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    :cond_52
    :goto_52
    throw v0

    :catch_53
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_52

    :catchall_58
    move-exception v0

    goto :goto_4d

    :catch_5a
    move-exception v1

    move-object v2, v0

    goto :goto_24
.end method

.method private getFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mContext:Landroid/content/Context;

    const-string v1, "_andfix_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-md5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    sget-object v2, Lcom/alipay/euler/andfix/security/SecurityChecker;->DEBUG_DN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mDebuggable:Z

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mPublicKey:Ljava/security/PublicKey;
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3a} :catch_3b
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_3a} :catch_40

    :goto_3a
    return-void

    :catch_3b
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_3a

    :catch_40
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_3a
.end method

.method private loadDigestes(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :cond_9
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_15

    move-result v2

    if-gtz v2, :cond_9

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1b
    throw v0
.end method

.method private saveFingerprint(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mContext:Landroid/content/Context;

    const-string v1, "_andfix_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-md5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public saveOptSig(Ljava/io/File;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/alipay/euler/andfix/security/SecurityChecker;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/alipay/euler/andfix/security/SecurityChecker;->saveFingerprint(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public verifyApk(Ljava/io/File;)Z
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mDebuggable:Z

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v3, 0x0

    :try_start_8
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_43
    .catchall {:try_start_8 .. :try_end_d} :catchall_53

    :try_start_d
    const-string v1, "classes.dex"

    invoke-virtual {v2, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_62
    .catchall {:try_start_d .. :try_end_12} :catchall_60

    move-result-object v1

    if-nez v1, :cond_20

    if-eqz v2, :cond_6

    :try_start_17
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_6

    :catch_1b
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_6

    :cond_20
    :try_start_20
    invoke-direct {p0, v2, v1}, Lcom/alipay/euler/andfix/security/SecurityChecker;->loadDigestes(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_62
    .catchall {:try_start_20 .. :try_end_26} :catchall_60

    move-result-object v1

    if-nez v1, :cond_34

    if-eqz v2, :cond_6

    :try_start_2b
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_6

    :catch_2f
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_6

    :cond_34
    :try_start_34
    invoke-direct {p0, p1, v1}, Lcom/alipay/euler/andfix/security/SecurityChecker;->check(Ljava/io/File;[Ljava/security/cert/Certificate;)Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_62
    .catchall {:try_start_34 .. :try_end_37} :catchall_60

    move-result v0

    if-eqz v2, :cond_6

    :try_start_3a
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_6

    :catch_3e
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_6

    :catch_43
    move-exception v1

    move-object v2, v3

    :goto_45
    :try_start_45
    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_60

    if-eqz v2, :cond_6

    :try_start_4a
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_6

    :catch_4e
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_6

    :catchall_53
    move-exception v0

    move-object v2, v3

    :goto_55
    if-eqz v2, :cond_5a

    :try_start_57
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    :cond_5a
    :goto_5a
    throw v0

    :catch_5b
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_5a

    :catchall_60
    move-exception v0

    goto :goto_55

    :catch_62
    move-exception v1

    goto :goto_45
.end method

.method public verifyOpt(Ljava/io/File;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/alipay/euler/andfix/security/SecurityChecker;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/euler/andfix/security/SecurityChecker;->getFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
