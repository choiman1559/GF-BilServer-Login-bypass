.class public Lcn/sharesdk/meipai/a;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcn/sharesdk/meipai/a;->a:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .registers 6

    .prologue
    .line 17
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 19
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    const/4 v0, 0x0

    :goto_16
    array-length v3, v1

    if-ge v0, v3, :cond_34

    .line 23
    sget-object v3, Lcn/sharesdk/meipai/a;->a:[C

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    sget-object v3, Lcn/sharesdk/meipai/a;->a:[C

    aget-byte v4, v1, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 27
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3d

    move-result-object v0

    .line 30
    :goto_3c
    return-object v0

    .line 28
    :catch_3d
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    const/4 v0, 0x0

    goto :goto_3c
.end method
