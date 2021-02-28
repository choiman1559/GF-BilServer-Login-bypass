.class public Lcn/sharesdk/telegram/a/a;
.super Ljava/lang/Object;
.source "TelegramTools.java"


# static fields
.field private static a:Lcn/sharesdk/telegram/a/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/sharesdk/telegram/a/a;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcn/sharesdk/telegram/a/a;->a:Lcn/sharesdk/telegram/a/a;

    if-nez v0, :cond_b

    .line 18
    new-instance v0, Lcn/sharesdk/telegram/a/a;

    invoke-direct {v0}, Lcn/sharesdk/telegram/a/a;-><init>()V

    sput-object v0, Lcn/sharesdk/telegram/a/a;->a:Lcn/sharesdk/telegram/a/a;

    .line 20
    :cond_b
    sget-object v0, Lcn/sharesdk/telegram/a/a;->a:Lcn/sharesdk/telegram/a/a;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checking signature of Telegram client..."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 27
    :try_start_c
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "org.telegram.messenger"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1b} :catch_3f

    move-result-object v2

    .line 34
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v1

    move v1, v0

    .line 35
    :goto_20
    if-ge v1, v3, :cond_3e

    .line 36
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    .line 37
    const-string v5, "3082021730820180a0030201020204521f9d49300d06092a864886f70d0101050500305031193017060355040713105361696e742d50657465727362757267310b3009060355040a1302564b310b3009060355040b1302564b31193017060355040313104e696b6f6c6179204b75646173686f76301e170d3133303832393139313331335a170d3338303832333139313331335a305031193017060355040713105361696e742d50657465727362757267310b3009060355040a1302564b310b3009060355040b1302564b31193017060355040313104e696b6f6c6179204b75646173686f7630819f300d06092a864886f70d010101050003818d0030818902818100df5e993a0dec0ab5b557dfff77e0b2227186cbf13d1fd1ed8e9deb5650c5fd4467bb51bfa585228d084bd27045f7415b7c4e38f08be362639a2eeb9b0c749da460f2705f6a7e14aca76abe3360af00b719cc5f3ff4d4da05958327e948b3679e6417ad7baa8779b9d689799ba345839a049fd44362499054a0803a0178c773790203010001300d06092a864886f70d010105050003818100dda58cdd90159c431ecc4a15902eafb07a50e01ba9d4f8e655ec14b06bd8e8771239710a28991039e02e352762eb524af07602bbdfb479d3718658a534d411dfab30122c8d0a5efd165a620669d80a221a04ac7d68b3811150c769cf97d3274be9b9f27c4c5877eabbcf8990409e5943df8deb509fa83d68eabc74f7c5976743"

    .line 59
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 60
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "pass!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 61
    const/4 v0, 0x1

    .line 64
    :cond_3e
    :goto_3e
    return v0

    .line 29
    :catch_3f
    move-exception v1

    .line 30
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 35
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method
