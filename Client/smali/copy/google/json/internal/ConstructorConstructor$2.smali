.class Lcopy/google/json/internal/ConstructorConstructor$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcopy/google/json/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcopy/google/json/internal/ConstructorConstructor;->get(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/internal/ObjectConstructor;
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

.field final synthetic val$rawTypeCreator:Lcopy/google/json/InstanceCreator;

.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcopy/google/json/internal/ConstructorConstructor;Lcopy/google/json/InstanceCreator;Ljava/lang/reflect/Type;)V
    .registers 4

    iput-object p1, p0, Lcopy/google/json/internal/ConstructorConstructor$2;->this$0:Lcopy/google/json/internal/ConstructorConstructor;

    iput-object p2, p0, Lcopy/google/json/internal/ConstructorConstructor$2;->val$rawTypeCreator:Lcopy/google/json/InstanceCreator;

    iput-object p3, p0, Lcopy/google/json/internal/ConstructorConstructor$2;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/ConstructorConstructor$2;->val$rawTypeCreator:Lcopy/google/json/InstanceCreator;

    iget-object v1, p0, Lcopy/google/json/internal/ConstructorConstructor$2;->val$type:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcopy/google/json/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
