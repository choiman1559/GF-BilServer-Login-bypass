.class Lcopy/google/json/internal/ConstructorConstructor$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcopy/google/json/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcopy/google/json/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcopy/google/json/internal/ObjectConstructor;
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

.field private final unsafeAllocator:Lcopy/google/json/internal/UnsafeAllocator;

.field final synthetic val$rawType:Ljava/lang/Class;

.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcopy/google/json/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 5

    iput-object p1, p0, Lcopy/google/json/internal/ConstructorConstructor$14;->this$0:Lcopy/google/json/internal/ConstructorConstructor;

    iput-object p2, p0, Lcopy/google/json/internal/ConstructorConstructor$14;->val$rawType:Ljava/lang/Class;

    iput-object p3, p0, Lcopy/google/json/internal/ConstructorConstructor$14;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcopy/google/json/internal/UnsafeAllocator;->create()Lcopy/google/json/internal/UnsafeAllocator;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/internal/ConstructorConstructor$14;->unsafeAllocator:Lcopy/google/json/internal/UnsafeAllocator;

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcopy/google/json/internal/ConstructorConstructor$14;->unsafeAllocator:Lcopy/google/json/internal/UnsafeAllocator;

    iget-object v1, p0, Lcopy/google/json/internal/ConstructorConstructor$14;->val$rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcopy/google/json/internal/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to invoke no-args constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcopy/google/json/internal/ConstructorConstructor$14;->val$type:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Registering an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method