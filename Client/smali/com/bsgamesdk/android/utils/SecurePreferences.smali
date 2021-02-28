.class public Lcom/bsgamesdk/android/utils/SecurePreferences;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/utils/SecurePreferences$SecurePreferencesException;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljavax/crypto/Cipher;

.field private final c:Ljavax/crypto/Cipher;

.field private final d:Ljavax/crypto/Cipher;

.field private final e:Landroid/content/SharedPreferences;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/utils/SecurePreferences$SecurePreferencesException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    iput-object p1, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->g:Landroid/content/Context;

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->b:Ljavax/crypto/Cipher;

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->c:Ljavax/crypto/Cipher;

    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->d:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p3}, Lcom/bsgamesdk/android/utils/SecurePreferences;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->e:Landroid/content/SharedPreferences;

    iput-boolean p4, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->a:Z
    :try_end_29
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_29} :catch_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_29} :catch_31

    return-void

    :catch_2a
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/utils/SecurePreferences$SecurePreferencesException;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/utils/SecurePreferences$SecurePreferencesException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_31
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/utils/SecurePreferences$SecurePreferencesException;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/utils/SecurePreferences$SecurePreferencesException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljavax/crypto/Cipher;[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/utils/SecurePreferences$SecurePreferencesException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/o;->e()V

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->f:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0, p2}, Lcom/bsgamesdk/android/utils/SecurePreferences;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->e:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/utils/SecurePreferences;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/utils/SecurePreferences;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private c()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->g:Landroid/content/Context;

    const-string v1, "login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->g:Landroid/content/Context;

    const-string v1, "userinfoCache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->g:Landroid/content/Context;

    const-string v1, "usernamelist"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->g:Landroid/content/Context;

    const-string v1, "TouristLogin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_50} :catch_51

    :goto_50
    return-void

    :catch_51
    move-exception v0

    goto :goto_50
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/utils/SecurePreferences$SecurePreferencesException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p2, v0}, Lcom/bsgamesdk/android/utils/SecurePreferences;->a(Ljava/lang/String;Ljavax/crypto/Cipher;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->a:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->d:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1, v0}, Lcom/bsgamesdk/android/utils/SecurePreferences;->a(Ljava/lang/String;Ljavax/crypto/Cipher;)Ljava/lang/String;

    move-result-object p1

    :cond_a
    return-object p1
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljavax/crypto/Cipher;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/utils/SecurePreferences$SecurePreferencesException;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/bsgamesdk/android/utils/SecurePreferences;->a(Ljavax/crypto/Cipher;[B)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    return-object v0

    :catch_10
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/utils/SecurePreferences$SecurePreferencesException;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/utils/SecurePreferences$SecurePreferencesException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected a()Ljavax/crypto/spec/IvParameterSpec;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    const-string v1, "fldsjfodasjifudslfjdsaofshaufihadsf"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/utils/SecurePreferences;->a()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/utils/SecurePreferences;->b(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v4, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->c:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->d:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p2, :cond_14

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/utils/SecurePreferences;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_13
    return-void

    :cond_14
    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/utils/SecurePreferences;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bsgamesdk/android/utils/SecurePreferences;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method protected b(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/utils/SecurePreferences;->c(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected c(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/utils/SecurePreferences;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/utils/SecurePreferences$SecurePreferencesException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->e:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/utils/SecurePreferences;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->e:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/utils/SecurePreferences;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    move-object v0, v2

    :cond_20
    :goto_20
    return-object v0

    :cond_21
    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/utils/SecurePreferences;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_28} :catch_91

    move-result v1

    if-eqz v1, :cond_20

    :try_start_2b
    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/o;->b()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_83
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_34} :catch_91

    move-result-object v1

    :try_start_35
    invoke-direct {p0, p1, v1}, Lcom/bsgamesdk/android/utils/SecurePreferences;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/bsgamesdk/android/utils/SecurePreferences;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/bsgamesdk/android/utils/SecurePreferences;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_60} :catch_94
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_60} :catch_91

    move-result-object v0

    :cond_61
    :goto_61
    :try_start_61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-direct {p0}, Lcom/bsgamesdk/android/utils/SecurePreferences;->c()V

    iget-object v1, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/utils/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/utils/o;->e()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_73} :catch_91

    :try_start_73
    iget-object v1, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/utils/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/utils/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/utils/SecurePreferences;->a(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_80} :catch_81
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_80} :catch_91

    goto :goto_20

    :catch_81
    move-exception v1

    goto :goto_20

    :catch_83
    move-exception v0

    move-object v1, v2

    :goto_85
    move-object v0, v2

    goto :goto_61

    :cond_87
    :try_start_87
    iget-object v3, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/bsgamesdk/android/utils/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/utils/o;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bsgamesdk/android/utils/o;->a(Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_90} :catch_91

    goto :goto_20

    :catch_91
    move-exception v0

    :cond_92
    move-object v0, v2

    goto :goto_20

    :catch_94
    move-exception v0

    goto :goto_85
.end method

.method protected f(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    :try_start_1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/utils/SecurePreferences;->c:Ljavax/crypto/Cipher;

    invoke-direct {p0, v1, v0}, Lcom/bsgamesdk/android/utils/SecurePreferences;->a(Ljavax/crypto/Cipher;[B)[B

    move-result-object v1

    if-eqz v1, :cond_15

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_17

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14

    :catch_17
    move-exception v0

    new-instance v1, Lcom/bsgamesdk/android/utils/SecurePreferences$SecurePreferencesException;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/utils/SecurePreferences$SecurePreferencesException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
