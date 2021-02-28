.class Lcopy/google/json/internal/Excluder$1;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcopy/google/json/internal/Excluder;->create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcopy/google/json/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcopy/google/json/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcopy/google/json/internal/Excluder;

.field final synthetic val$gson:Lcopy/google/json/JSON;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lcopy/google/json/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcopy/google/json/internal/Excluder;ZZLcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)V
    .registers 6

    iput-object p1, p0, Lcopy/google/json/internal/Excluder$1;->this$0:Lcopy/google/json/internal/Excluder;

    iput-boolean p2, p0, Lcopy/google/json/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lcopy/google/json/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lcopy/google/json/internal/Excluder$1;->val$gson:Lcopy/google/json/JSON;

    iput-object p5, p0, Lcopy/google/json/internal/Excluder$1;->val$type:Lcopy/google/json/reflect/TypeToken;

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    return-void
.end method

.method private delegate()Lcopy/google/json/TypeAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcopy/google/json/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/Excluder$1;->delegate:Lcopy/google/json/TypeAdapter;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcopy/google/json/internal/Excluder$1;->val$gson:Lcopy/google/json/JSON;

    iget-object v1, p0, Lcopy/google/json/internal/Excluder$1;->this$0:Lcopy/google/json/internal/Excluder;

    iget-object v2, p0, Lcopy/google/json/internal/Excluder$1;->val$type:Lcopy/google/json/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcopy/google/json/JSON;->getDelegateAdapter(Lcopy/google/json/TypeAdapterFactory;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/internal/Excluder$1;->delegate:Lcopy/google/json/TypeAdapter;

    goto :goto_4
.end method


# virtual methods
.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcopy/google/json/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->skipValue()V

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lcopy/google/json/internal/Excluder$1;->delegate()Lcopy/google/json/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcopy/google/json/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcopy/google/json/internal/Excluder$1;->delegate()Lcopy/google/json/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_7
.end method
