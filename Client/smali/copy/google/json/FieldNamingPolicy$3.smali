.class final enum Lcopy/google/json/FieldNamingPolicy$3;
.super Lcopy/google/json/FieldNamingPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcopy/google/json/FieldNamingPolicy;-><init>(Ljava/lang/String;ILcopy/google/json/FieldNamingPolicy$1;)V

    return-void
.end method


# virtual methods
.method public translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-static {v0, v1}, Lcopy/google/json/FieldNamingPolicy$3;->separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcopy/google/json/FieldNamingPolicy$3;->upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
