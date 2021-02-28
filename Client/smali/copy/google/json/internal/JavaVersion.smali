.class public final Lcopy/google/json/internal/JavaVersion;
.super Ljava/lang/Object;


# static fields
.field private static final majorJavaVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcopy/google/json/internal/JavaVersion;->determineMajorJavaVersion()I

    move-result v0

    sput v0, Lcopy/google/json/internal/JavaVersion;->majorJavaVersion:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static determineMajorJavaVersion()I
    .registers 1

    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcopy/google/json/internal/JavaVersion;->getMajorJavaVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static extractBeginningInt(Ljava/lang/String;)I
    .registers 5

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_23} :catch_25

    move-result v0

    :goto_24
    return v0

    :catch_25
    move-exception v0

    const/4 v0, -0x1

    goto :goto_24
.end method

.method public static getMajorJavaVersion()I
    .registers 1

    sget v0, Lcopy/google/json/internal/JavaVersion;->majorJavaVersion:I

    return v0
.end method

.method static getMajorJavaVersion(Ljava/lang/String;)I
    .registers 3

    const/4 v1, -0x1

    invoke-static {p0}, Lcopy/google/json/internal/JavaVersion;->parseDotted(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_b

    invoke-static {p0}, Lcopy/google/json/internal/JavaVersion;->extractBeginningInt(Ljava/lang/String;)I

    move-result v0

    :cond_b
    if-ne v0, v1, :cond_e

    const/4 v0, 0x6

    :cond_e
    return v0
.end method

.method public static isJava9OrLater()Z
    .registers 2

    sget v0, Lcopy/google/json/internal/JavaVersion;->majorJavaVersion:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static parseDotted(Ljava/lang/String;)I
    .registers 5

    const/4 v3, 0x1

    :try_start_1
    const-string v0, "[._]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_1a

    array-length v2, v1

    if-le v2, v3, :cond_1a

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_19} :catch_1b

    move-result v0

    :cond_1a
    :goto_1a
    return v0

    :catch_1b
    move-exception v0

    const/4 v0, -0x1

    goto :goto_1a
.end method
