.class public Lcn/sharesdk/meipai/b;
.super Ljava/lang/Object;
.source "MeipaiUtils.java"


# direct methods
.method public static a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 47
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 48
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 49
    if-eqz v2, :cond_3b

    array-length v1, v2

    if-lez v1, :cond_3b

    .line 50
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    const/4 v1, 0x0

    :goto_24
    array-length v4, v2

    if-ge v1, v4, :cond_37

    .line 53
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcn/sharesdk/meipai/a;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 56
    :cond_37
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_3a} :catch_3c

    move-result-object v0

    .line 61
    :cond_3b
    :goto_3b
    return-object v0

    .line 58
    :catch_3c
    move-exception v1

    goto :goto_3b
.end method

.method public static a([Landroid/content/pm/Signature;Z)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    if-nez p1, :cond_6

    move v1, v2

    .line 39
    :cond_5
    :goto_5
    return v1

    .line 26
    :cond_6
    if-eqz p0, :cond_5

    array-length v0, p0

    if-lez v0, :cond_5

    .line 27
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 29
    :goto_11
    array-length v4, p0

    if-ge v0, v4, :cond_24

    .line 30
    aget-object v4, p0, v0

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcn/sharesdk/meipai/a;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 33
    :cond_24
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v3, "8e1d5ad9ea79e1b3068afa19c8e07ebe"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    .line 35
    goto :goto_5
.end method

.method public static a(Landroid/os/Parcelable;)[B
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 66
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    return-object v0
.end method
