.class public Lcom/bilibili/track/utils/TrackidUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTrackId()V
    .registers 2

    const/4 v1, 0x0

    sget-object v0, Lcom/bilibili/track/Track;->forceSn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v0, Lcom/bilibili/track/Track;->unForceSn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bilibili/track/Track;->track_id:Ljava/lang/String;

    return-void
.end method

.method public static getTrackId()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/bilibili/track/Track;->track_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/bilibili/track/Track;->track_id:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
