.class public Lcom/bilibili/deviceutils/utils/SimulatorUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasEmFile()Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "/system/bin/nemuVM-prop"

    aput-object v0, v3, v1

    const-string v0, "/system/bin/androVM-prop"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v4, "/system/bin/ttVM-prop"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "/system/bin/3btrans"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "/system/bin/droid4x-prop"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "/ueventd.nox.rc"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "/init.nox.rc"

    aput-object v4, v3, v0

    move v0, v1

    :goto_27
    array-length v4, v3

    if-ge v0, v4, :cond_38

    new-instance v4, Ljava/io/File;

    aget-object v5, v3, v0

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_39

    move v1, v2

    :cond_38
    return v1

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method public static isSimulator(Landroid/content/Context;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "tel:123456"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_bc

    move v1, v2

    :goto_20
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "generic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ba

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "vbox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "test-keys"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "google_sdk"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Emulator"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "MuMu"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "virtual"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ba

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Genymotion"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "generic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "generic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ba

    :cond_96
    const-string v0, "google_sdk"

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    if-nez v1, :cond_bb

    :cond_ba
    move v3, v2

    :cond_bb
    return v3

    :cond_bc
    move v1, v3

    goto/16 :goto_20
.end method
