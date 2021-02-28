.class public Lcom/bilibili/deviceutils/utils/XposeActivityUtil;
.super Ljava/lang/Object;


# static fields
.field private static volatile mInstance:Lcom/bilibili/deviceutils/utils/XposeActivityUtil;


# instance fields
.field private mIsXposedInstall:Z

.field private mXposedVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->mInstance:Lcom/bilibili/deviceutils/utils/XposeActivityUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bilibili/deviceutils/utils/XposeActivityUtil;
    .registers 2

    sget-object v0, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->mInstance:Lcom/bilibili/deviceutils/utils/XposeActivityUtil;

    if-nez v0, :cond_13

    const-class v1, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->mInstance:Lcom/bilibili/deviceutils/utils/XposeActivityUtil;

    if-nez v0, :cond_12

    new-instance v0, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;

    invoke-direct {v0}, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;-><init>()V

    sput-object v0, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->mInstance:Lcom/bilibili/deviceutils/utils/XposeActivityUtil;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->mInstance:Lcom/bilibili/deviceutils/utils/XposeActivityUtil;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public ValidateEnvironment(Landroid/content/Context;)V
    .registers 3

    const-string v0, "de.robv.android.xposed.installer"

    invoke-static {p1, v0}, Lcom/bilibili/deviceutils/utils/XposeUtils;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->mXposedVersionName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->getmXposedVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->mIsXposedInstall:Z

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getmXposedVersionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->mXposedVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public isXposedActive()Z
    .registers 2

    invoke-static {}, Lcom/bilibili/deviceutils/utils/XposeUtils;->isModuleActive()Z

    move-result v0

    return v0
.end method

.method public ismIsXposedInstall()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->mIsXposedInstall:Z

    return v0
.end method

.method public setmIsXposedInstall(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->mIsXposedInstall:Z

    return-void
.end method

.method public setmXposedVersionName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/deviceutils/utils/XposeActivityUtil;->mXposedVersionName:Ljava/lang/String;

    return-void
.end method
