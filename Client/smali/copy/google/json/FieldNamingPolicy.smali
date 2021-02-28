.class public abstract enum Lcopy/google/json/FieldNamingPolicy;
.super Ljava/lang/Enum;

# interfaces
.implements Lcopy/google/json/FieldNamingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcopy/google/json/FieldNamingPolicy;",
        ">;",
        "Lcopy/google/json/FieldNamingStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcopy/google/json/FieldNamingPolicy;

.field public static final enum IDENTITY:Lcopy/google/json/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DASHES:Lcopy/google/json/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DOTS:Lcopy/google/json/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lcopy/google/json/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE:Lcopy/google/json/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE_WITH_SPACES:Lcopy/google/json/FieldNamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcopy/google/json/FieldNamingPolicy$1;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1, v3}, Lcopy/google/json/FieldNamingPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcopy/google/json/FieldNamingPolicy;->IDENTITY:Lcopy/google/json/FieldNamingPolicy;

    new-instance v0, Lcopy/google/json/FieldNamingPolicy$2;

    const-string v1, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v1, v4}, Lcopy/google/json/FieldNamingPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcopy/google/json/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcopy/google/json/FieldNamingPolicy;

    new-instance v0, Lcopy/google/json/FieldNamingPolicy$3;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v1, v5}, Lcopy/google/json/FieldNamingPolicy$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcopy/google/json/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcopy/google/json/FieldNamingPolicy;

    new-instance v0, Lcopy/google/json/FieldNamingPolicy$4;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v1, v6}, Lcopy/google/json/FieldNamingPolicy$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcopy/google/json/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcopy/google/json/FieldNamingPolicy;

    new-instance v0, Lcopy/google/json/FieldNamingPolicy$5;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v1, v7}, Lcopy/google/json/FieldNamingPolicy$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcopy/google/json/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcopy/google/json/FieldNamingPolicy;

    new-instance v0, Lcopy/google/json/FieldNamingPolicy$6;

    const-string v1, "LOWER_CASE_WITH_DOTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcopy/google/json/FieldNamingPolicy$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcopy/google/json/FieldNamingPolicy;->LOWER_CASE_WITH_DOTS:Lcopy/google/json/FieldNamingPolicy;

    const/4 v0, 0x6

    new-array v0, v0, [Lcopy/google/json/FieldNamingPolicy;

    sget-object v1, Lcopy/google/json/FieldNamingPolicy;->IDENTITY:Lcopy/google/json/FieldNamingPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcopy/google/json/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcopy/google/json/FieldNamingPolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcopy/google/json/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcopy/google/json/FieldNamingPolicy;

    aput-object v1, v0, v5

    sget-object v1, Lcopy/google/json/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcopy/google/json/FieldNamingPolicy;

    aput-object v1, v0, v6

    sget-object v1, Lcopy/google/json/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcopy/google/json/FieldNamingPolicy;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcopy/google/json/FieldNamingPolicy;->LOWER_CASE_WITH_DOTS:Lcopy/google/json/FieldNamingPolicy;

    aput-object v2, v0, v1

    sput-object v0, Lcopy/google/json/FieldNamingPolicy;->$VALUES:[Lcopy/google/json/FieldNamingPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcopy/google/json/FieldNamingPolicy$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcopy/google/json/FieldNamingPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_a
    if-ge v0, v2, :cond_25

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v0, v1

    :goto_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_17

    if-ge v0, v2, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_22

    :goto_21
    return-object p0

    :cond_22
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-nez v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_21

    :cond_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_21
.end method

.method public static valueOf(Ljava/lang/String;)Lcopy/google/json/FieldNamingPolicy;
    .registers 2

    const-class v0, Lcopy/google/json/FieldNamingPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcopy/google/json/FieldNamingPolicy;

    return-object v0
.end method

.method public static values()[Lcopy/google/json/FieldNamingPolicy;
    .registers 1

    sget-object v0, Lcopy/google/json/FieldNamingPolicy;->$VALUES:[Lcopy/google/json/FieldNamingPolicy;

    invoke-virtual {v0}, [Lcopy/google/json/FieldNamingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcopy/google/json/FieldNamingPolicy;

    return-object v0
.end method
