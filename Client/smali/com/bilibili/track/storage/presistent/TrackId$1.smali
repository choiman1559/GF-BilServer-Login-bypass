.class Lcom/bilibili/track/storage/presistent/TrackId$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/storage/presistent/TrackId;-><init>(Ljava/util/concurrent/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/bilibili/track/storage/presistent/TrackId$1;->create()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public create()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bilibili/track/storage/presistent/TrackId$1;->load(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public bridge synthetic save(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bilibili/track/storage/presistent/TrackId$1;->save(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public save(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method
