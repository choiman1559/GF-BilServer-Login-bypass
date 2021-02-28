.class Lcopy/google/json/internal/LinkedTreeMap$KeySet$1;
.super Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcopy/google/json/internal/LinkedTreeMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcopy/google/json/internal/LinkedTreeMap",
        "<TK;TV;>.",
        "LinkedTreeMapIterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcopy/google/json/internal/LinkedTreeMap$KeySet;


# direct methods
.method constructor <init>(Lcopy/google/json/internal/LinkedTreeMap$KeySet;)V
    .registers 3

    iput-object p1, p0, Lcopy/google/json/internal/LinkedTreeMap$KeySet$1;->this$1:Lcopy/google/json/internal/LinkedTreeMap$KeySet;

    iget-object v0, p1, Lcopy/google/json/internal/LinkedTreeMap$KeySet;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-direct {p0, v0}, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcopy/google/json/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcopy/google/json/internal/LinkedTreeMap$KeySet$1;->nextNode()Lcopy/google/json/internal/LinkedTreeMap$Node;

    move-result-object v0

    iget-object v0, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method
