.class public Lcom/alipay/sdk/app/EnvUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/EnvUtils$EnvEnum;
    }
.end annotation


# static fields
.field private static mEnv:Lcom/alipay/sdk/app/EnvUtils$EnvEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/alipay/sdk/app/EnvUtils$EnvEnum;->ONLINE:Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    sput-object v0, Lcom/alipay/sdk/app/EnvUtils;->mEnv:Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static geEnv()Lcom/alipay/sdk/app/EnvUtils$EnvEnum;
    .registers 1

    sget-object v0, Lcom/alipay/sdk/app/EnvUtils;->mEnv:Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    return-object v0
.end method

.method public static isSandBox()Z
    .registers 2

    sget-object v0, Lcom/alipay/sdk/app/EnvUtils;->mEnv:Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    sget-object v1, Lcom/alipay/sdk/app/EnvUtils$EnvEnum;->SANDBOX:Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static setEnv(Lcom/alipay/sdk/app/EnvUtils$EnvEnum;)V
    .registers 1

    sput-object p0, Lcom/alipay/sdk/app/EnvUtils;->mEnv:Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    return-void
.end method