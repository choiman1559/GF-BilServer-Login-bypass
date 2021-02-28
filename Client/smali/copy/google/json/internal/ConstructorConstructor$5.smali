.class Lcopy/google/json/internal/ConstructorConstructor$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcopy/google/json/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcopy/google/json/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcopy/google/json/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcopy/google/json/internal/ObjectConstructor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcopy/google/json/internal/ConstructorConstructor;

.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcopy/google/json/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V
    .registers 3

    iput-object p1, p0, Lcopy/google/json/internal/ConstructorConstructor$5;->this$0:Lcopy/google/json/internal/ConstructorConstructor;

    iput-object p2, p0, Lcopy/google/json/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcopy/google/json/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1c

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    :cond_1c
    new-instance v0, Lcopy/google/json/JsonIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid EnumSet type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcopy/google/json/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcopy/google/json/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    new-instance v0, Lcopy/google/json/JsonIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid EnumSet type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcopy/google/json/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcopy/google/json/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
