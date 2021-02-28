.class public Lcom/android/data/sdk/domain/model/DeviceInfoModel;
.super Ljava/lang/Object;


# static fields
.field public static UDID:Ljava/lang/String;


# instance fields
.field private dp:Ljava/lang/String;

.field private idfa:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private net:I

.field private operators:I

.field private pf_ver:Ljava/lang/String;

.field private platform:I

.field private udid:Ljava/lang/String;

.field private ver:Ljava/lang/String;

.field private version_code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "bs_udid"

    sput-object v0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->UDID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->idfa:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .registers 7

    const-string v3, "5"

    :try_start_2
    const-string v0, "1"

    const-string v0, "2"

    const-string v0, "3"

    const-string v1, "4"

    const-string v2, "5"

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_1b
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_26} :catch_3a

    move-result v4

    packed-switch v4, :pswitch_data_42

    :goto_2a
    :pswitch_2a
    move-object v0, v2

    :goto_2b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_30
    move-object v0, v1

    goto :goto_2b

    :pswitch_32
    :try_start_32
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_3a

    move-result v0

    packed-switch v0, :pswitch_data_4a

    :pswitch_39
    goto :goto_2a

    :catch_3a
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    :cond_3e
    move-object v0, v3

    goto :goto_2b

    :cond_40
    move-object v0, v4

    goto :goto_1b

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_32
        :pswitch_30
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_39
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_39
        :pswitch_2a
        :pswitch_39
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Lcom/android/data/sdk/PreDefined;)I
    .registers 10

    const/4 v4, 0x5

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x3

    new-instance v0, Lcom/android/data/sdk/utils/a;

    invoke-direct {v0, p1}, Lcom/android/data/sdk/utils/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/android/data/sdk/utils/a;->a(Lcom/android/data/sdk/PreDefined;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v0, "UNKNOWN"

    :try_start_f
    const-string v6, "ProvidersName "

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_2b

    move-result-object v0

    :goto_15
    const-string v5, "UNKNOWN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_56

    :cond_25
    move v0, v5

    :goto_26
    packed-switch v0, :pswitch_data_64

    move v0, v4

    :goto_2a
    return v0

    :catch_2b
    move-exception v5

    invoke-static {v5}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_15

    :sswitch_30
    const-string v6, "CHINA_MOBILE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    goto :goto_26

    :sswitch_3a
    const-string v6, "CHINA_UNICOM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    goto :goto_26

    :sswitch_44
    const-string v6, "CHINA_TELCOM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v2

    goto :goto_26

    :pswitch_4e
    move v0, v1

    goto :goto_2a

    :pswitch_50
    move v0, v2

    goto :goto_2a

    :pswitch_52
    move v0, v3

    goto :goto_2a

    :cond_54
    move v0, v4

    goto :goto_2a

    :sswitch_data_56
    .sparse-switch
        0x431588aa -> :sswitch_30
        0x4e7eff8e -> :sswitch_44
        0x50b14e99 -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_50
        :pswitch_52
    .end packed-switch
.end method

.method private a(Landroid/app/Activity;)Ljava/lang/String;
    .registers 6

    const-string v0, "none * none"

    :try_start_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2e

    move-result-object v0

    :goto_2d
    return-object v0

    :catch_2e
    move-exception v1

    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_2d
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_11} :catch_12

    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method private b(Landroid/content/Context;Lcom/android/data/sdk/PreDefined;)Ljava/lang/String;
    .registers 6

    new-instance v0, Lcom/android/data/sdk/utils/a;

    invoke-direct {v0, p1}, Lcom/android/data/sdk/utils/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/android/data/sdk/utils/a;->a(Lcom/android/data/sdk/PreDefined;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v0, "other_android"

    :try_start_b
    const-string v2, "model"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_2d

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_18} :catch_31

    move-result-wide v0

    :goto_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    :try_start_2d
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2f} :catch_31

    int-to-long v0, v0

    goto :goto_19

    :catch_31
    move-exception v2

    invoke-static {v2}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method private c(Landroid/content/Context;Lcom/android/data/sdk/PreDefined;)Ljava/lang/String;
    .registers 6

    new-instance v0, Lcom/android/data/sdk/utils/a;

    invoke-direct {v0, p1}, Lcom/android/data/sdk/utils/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/android/data/sdk/utils/a;->a(Lcom/android/data/sdk/PreDefined;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v0, "other_pf_ver"

    :try_start_b
    const-string v2, "release"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_11
.end method


# virtual methods
.method public getDp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->dp:Ljava/lang/String;

    return-object v0
.end method

.method public getIdfa()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->idfa:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNet()I
    .registers 2

    iget v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->net:I

    return v0
.end method

.method public getOperators()I
    .registers 2

    iget v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->operators:I

    return v0
.end method

.method public getPf_ver()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->pf_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()I
    .registers 2

    iget v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->platform:I

    return v0
.end method

.method public getUdid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_code()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->version_code:Ljava/lang/String;

    return-object v0
.end method

.method public handerDevice(Landroid/app/Activity;Lcom/android/data/sdk/PreDefined;)V
    .registers 6

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->platform:I

    invoke-direct {p0, p1}, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->net:I

    invoke-direct {p0, p1, p2}, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->a(Landroid/content/Context;Lcom/android/data/sdk/PreDefined;)I

    move-result v0

    iput v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->operators:I

    invoke-direct {p0, p1, p2}, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->b(Landroid/content/Context;Lcom/android/data/sdk/PreDefined;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->model:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->c(Landroid/content/Context;Lcom/android/data/sdk/PreDefined;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->pf_ver:Ljava/lang/String;

    :try_start_1b
    sget-object v0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->UDID:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/android/data/sdk/utils/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->udid:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2d} :catch_53

    :goto_2d
    invoke-direct {p0, p1}, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->dp:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->ver:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->version_code:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->idfa:Ljava/lang/String;

    return-void

    :cond_44
    :try_start_44
    invoke-static {p1}, Lcom/android/data/sdk/utils/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s*|\t|\r|\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->udid:Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_52} :catch_53

    goto :goto_2d

    :catch_53
    move-exception v0

    invoke-static {p1}, Lcom/android/data/sdk/utils/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s*|\t|\r|\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->udid:Ljava/lang/String;

    goto :goto_2d
.end method

.method public setDp(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->dp:Ljava/lang/String;

    return-void
.end method

.method public setIdfa(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->idfa:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->model:Ljava/lang/String;

    return-void
.end method

.method public setNet(I)V
    .registers 2

    iput p1, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->net:I

    return-void
.end method

.method public setOperators(I)V
    .registers 2

    iput p1, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->operators:I

    return-void
.end method

.method public setPf_ver(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->pf_ver:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(I)V
    .registers 2

    iput p1, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->platform:I

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->udid:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVersion_code(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->version_code:Ljava/lang/String;

    return-void
.end method
