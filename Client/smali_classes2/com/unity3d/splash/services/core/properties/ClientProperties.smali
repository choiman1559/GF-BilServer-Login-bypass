.class public Lcom/unity3d/splash/services/core/properties/ClientProperties;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG_CERT:Ljavax/security/auth/x500/X500Principal;

.field private static _activity:Ljava/lang/ref/WeakReference;

.field private static _application:Landroid/app/Application;

.field private static _applicationContext:Landroid/content/Context;

.field private static _gameId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->DEBUG_CERT:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_11
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_17} :catch_18

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const-string v1, "Error getting package info"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static getApplication()Landroid/app/Application;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->_application:Landroid/app/Application;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->_applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getGameId()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->_gameId:Ljava/lang/String;

    return-object v0
.end method

.method public static isAppDebuggable()Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_5d

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    :try_start_19
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_23} :catch_5f

    if-eqz v5, :cond_82

    :goto_25
    move v2, v1

    :goto_26
    if-eqz v2, :cond_5e

    const/16 v2, 0x40

    :try_start_2a
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_31} :catch_68
    .catch Ljava/security/cert/CertificateException; {:try_start_2a .. :try_end_31} :catch_6f

    move v2, v1

    move v1, v0

    :goto_33
    if-ge v2, v4, :cond_80

    :try_start_35
    aget-object v0, v3, v2

    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    sget-object v5, Lcom/unity3d/splash/services/core/properties/ClientProperties;->DEBUG_CERT:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_55} :catch_7b
    .catch Ljava/security/cert/CertificateException; {:try_start_35 .. :try_end_55} :catch_76

    move-result v0

    if-nez v0, :cond_5e

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_33

    :cond_5d
    move v0, v1

    :cond_5e
    :goto_5e
    return v0

    :catch_5f
    move-exception v2

    const-string v5, "Could not find name"

    invoke-static {v5, v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v2, v0

    move v0, v1

    goto :goto_26

    :catch_68
    move-exception v1

    :goto_69
    const-string v2, "Could not find name"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5e

    :catch_6f
    move-exception v1

    :goto_70
    const-string v2, "Certificate exception"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5e

    :catch_76
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_70

    :catch_7b
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_69

    :cond_80
    move v0, v1

    goto :goto_5e

    :cond_82
    move v0, v1

    goto :goto_25
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .registers 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->_activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static setApplication(Landroid/app/Application;)V
    .registers 1

    sput-object p0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->_application:Landroid/app/Application;

    return-void
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->_applicationContext:Landroid/content/Context;

    return-void
.end method

.method public static setGameId(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->_gameId:Ljava/lang/String;

    return-void
.end method
