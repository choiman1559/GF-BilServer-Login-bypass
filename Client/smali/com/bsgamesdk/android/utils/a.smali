.class public Lcom/bsgamesdk/android/utils/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/a;->a(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_d

    array-length v1, v0

    if-nez v1, :cond_10

    :cond_d
    const-string v0, "signs is null"

    :goto_f
    return-object v0

    :cond_10
    array-length v1, v0

    const/4 v2, 0x0

    if-ge v2, v1, :cond_23

    aget-object v0, v0, v2

    :try_start_16
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/a;->a([B)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_1f

    move-result-object v0

    goto :goto_f

    :catch_1f
    move-exception v0

    const-string v0, "get sign failed"

    goto :goto_f

    :cond_23
    const-string v0, "signs is null"

    goto :goto_f
.end method

.method private static a([B)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/a;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_18} :catch_19

    goto :goto_9

    :catch_19
    move-exception v1

    goto :goto_9
.end method

.method private static b([B)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_d
    array-length v1, p0

    if-lt v0, v1, :cond_15

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_15
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method
