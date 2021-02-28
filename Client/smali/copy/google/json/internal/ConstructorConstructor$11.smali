.class Lcopy/google/json/internal/ConstructorConstructor$11;
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


# direct methods
.method constructor <init>(Lcopy/google/json/internal/ConstructorConstructor;)V
    .registers 2

    iput-object p1, p0, Lcopy/google/json/internal/ConstructorConstructor$11;->this$0:Lcopy/google/json/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method
