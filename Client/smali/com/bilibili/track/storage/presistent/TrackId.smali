.class public Lcom/bilibili/track/storage/presistent/TrackId;
.super Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bilibili/track/storage/presistent/config/PersistentIdentity",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TRACKID"

    new-instance v1, Lcom/bilibili/track/storage/presistent/TrackId$1;

    invoke-direct {v1}, Lcom/bilibili/track/storage/presistent/TrackId$1;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;-><init>(Ljava/util/concurrent/Future;Ljava/lang/String;Lcom/bilibili/track/storage/presistent/interfaces/PersistentSerializer;)V

    return-void
.end method
