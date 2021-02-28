.class public Lcn/sharesdk/kakao/utils/a;
.super Ljava/lang/Object;
.source "KakaoUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 84
    if-nez p1, :cond_5

    move-object p1, v0

    .line 99
    :cond_4
    :goto_4
    return-object p1

    .line 89
    :cond_5
    invoke-static {p0, p1}, Lcn/sharesdk/kakao/utils/a;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 90
    if-nez v1, :cond_d

    move-object p1, v0

    .line 91
    goto :goto_4

    .line 95
    :cond_d
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1, p2}, Lcn/sharesdk/kakao/utils/a;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    move-object p1, v0

    .line 96
    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .registers 4

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .registers 6

    .prologue
    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 131
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "\\s"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdk/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1.0.46"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "os/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android"

    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "lang/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "device/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    const-string v1, "https://kapi.kakao.com/v1/user/me?"

    .line 193
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 194
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "KA"

    invoke-static {}, Lcn/sharesdk/kakao/utils/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bearer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const/4 v3, 0x0

    .line 198
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v4

    .line 199
    invoke-virtual {v4, v1, v0, v2, v3}, Lcn/sharesdk/framework/a/a;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 201
    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_48} :catch_4a

    move-result-object v0

    .line 205
    :goto_49
    return-object v0

    .line 203
    :catch_4a
    move-exception v0

    .line 204
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 205
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_49
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/Platform;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/sharesdk/framework/Platform;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 166
    const-string v0, ""

    .line 168
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "grant_type"

    const-string v4, "authorization_code"

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "code"

    invoke-direct {v2, v3, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "redirect_uri"

    invoke-direct {v0, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_id"

    invoke-direct {v0, v2, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "android_key_hash"

    invoke-static {}, Lcn/sharesdk/kakao/utils/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v0, "https://kauth.kakao.com/oauth/token?"

    .line 176
    :try_start_51
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v2

    .line 177
    const-string v3, "oauth/token"

    invoke-virtual {p3}, Lcn/sharesdk/framework/Platform;->getId()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 179
    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_67} :catch_69

    move-result-object v0

    .line 183
    :goto_68
    return-object v0

    .line 181
    :catch_69
    move-exception v0

    .line 182
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 183
    const/4 v0, 0x0

    goto :goto_68
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 105
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_a} :catch_33

    move-result-object v1

    .line 110
    if-lez p2, :cond_12

    .line 111
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v2, p2, :cond_12

    .line 122
    :cond_11
    :goto_11
    return v0

    .line 116
    :cond_12
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    move v1, v0

    :goto_16
    if-ge v1, v3, :cond_11

    aget-object v4, v2, v1

    .line 117
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    .line 118
    const-string v5, "308201db30820144a00302010202044c707197300d06092a864886f70d01010505003031310b3009060355040613026b6f310e300c060355040a13056b616b616f31123010060355040b13096b616b616f7465616d3020170d3130303832323030333834375a180f32313130303732393030333834375a3031310b3009060355040613026b6f310e300c060355040a13056b616b616f31123010060355040b13096b616b616f7465616d30819f300d06092a864886f70d010101050003818d0030818902818100aef387bc86e022a87e66b8c42153284f18e0c468cf9c87a241b989729dfdad3dd9e1847546d01a2819ba77f3974a47b473c926acae173fd90c7e635000721feeef6705da7ae949a35b82900a0f67d9464d73ed8a98c37f4ac70729494a17469bc40d4ee06d043b09147ebadc55fa1020968d7036c5fb9b8c148cba1d8e9d9fc10203010001300d06092a864886f70d0101050500038181005569be704c68cff6221c1e04dd8a131110f9f5cd2138042286337fd6014a1b1d2d3eeb266ae1630afe56bf63c07dd0b5c8fad46dcb9f802f9a7802fb89eb3b4777b9665bb1ed9feaf1dc7cac4f91abedfc81187ff6d2f471dbd12335d2c0ef0e2ee719df6e763f814b9ac91f8be37fd11d40686700d66be6de22a1836f060f01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    const-string v5, "308201e53082014ea00302010202044f4ae542300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3132303232373032303635385a170d3432303231393032303635385a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100c0b41c25ef21a39a13ce89c82dc3a14bf9ef0c3094aa2ac1bf755c9699535e79119e8b980c0ecdcc51f259eb0d8b2077d41de8fcfdeaac3f386c05e2a684ecb5504b660ad7d5a01cce35899f96bcbd099c9dcb274c6eb41fef861616a12fb45bc57a19683a8a97ab1a33d9c70128878b67dd1b3a388ad5121d1d66ff04c065ff0203010001300d06092a864886f70d0101050500038181000418a7dacb6d13eb61c8270fe1fdd006eb66d0ff9f58f475defd8dc1fb11c41e34ce924531d1fd8ad26d9479d64f54851bf57b8dfe3a5d6f0a01dcad5b8c36ac4ac48caeff37888c36483c26b09aaa9689dbb896938d5afe40135bf7d9f12643046301867165d28be0baa3513a5084e182f7f9c044d5baa58bdce55fa1845241"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 119
    :cond_2e
    const/4 v0, 0x1

    goto :goto_11

    .line 116
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 106
    :catch_33
    move-exception v1

    goto :goto_11
.end method

.method public static b()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v0, 0x0

    const/4 v12, 0x2

    const/4 v3, 0x0

    .line 144
    :try_start_3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 145
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x40

    .line 144
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_18} :catch_38

    move-result-object v1

    .line 150
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v4

    move v2, v3

    :goto_1d
    if-ge v2, v5, :cond_37

    aget-object v6, v4, v2

    .line 152
    :try_start_21
    const-string v1, "SHA"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 153
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 154
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v7, 0x2

    invoke-static {v1, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_36
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_21 .. :try_end_36} :catch_41

    move-result-object v0

    .line 159
    :cond_37
    :goto_37
    return-object v0

    .line 146
    :catch_38
    move-exception v1

    .line 147
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_37

    .line 155
    :catch_41
    move-exception v1

    .line 156
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v7

    const-string v8, "kakao"

    new-array v9, v12, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get MessageDigest. signature="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v3

    const/4 v6, 0x1

    aput-object v1, v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 150
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1d
.end method
