.class public final Lcom/alipay/security/mobile/module/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/security/mobile/module/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/alipay/security/mobile/module/b/a;

    invoke-direct {v0}, Lcom/alipay/security/mobile/module/b/a;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/module/b/a;->a:Lcom/alipay/security/mobile/module/b/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/security/mobile/module/b/a;
    .registers 1

    sget-object v0, Lcom/alipay/security/mobile/module/b/a;->a:Lcom/alipay/security/mobile/module/b/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    const-string v0, "0.0.0"

    goto :goto_10
.end method
