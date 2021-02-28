.class public Lcom/bilibili/track/report/ReportTrackHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateSendCount(Landroid/content/Context;Lcom/bilibili/track/config/TrackConfig;)I
    .registers 9

    const/16 v6, 0x1f4

    const/16 v5, 0x12c

    const/16 v4, 0x64

    const/4 v0, 0x0

    invoke-static {}, Lcom/bilibili/track/storage/database/DbDataHelper;->getInstance()Lcom/bilibili/track/storage/database/DbDataHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bilibili/track/storage/database/DbDataHelper;->queryUnUploadCount(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getBatch_count()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getLocal_factor()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1c

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    invoke-static {p0}, Lcom/bilibili/track/utils/NetworkUtils;->networkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    if-gt v1, v4, :cond_32

    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getBatch_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_32
    if-le v1, v4, :cond_47

    if-gt v1, v5, :cond_47

    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getBatch_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getLocal_factor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/2addr v0, v2

    :cond_47
    if-le v1, v5, :cond_5e

    if-gt v1, v6, :cond_5e

    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getBatch_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getLocal_factor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    :cond_5e
    if-le v1, v6, :cond_73

    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getBatch_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getLocal_factor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    :cond_73
    const-string v1, "1000"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_81

    const-string v0, "1000"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_81
    :goto_81
    if-nez v0, :cond_1b

    const-string v0, "10"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1b

    :cond_8a
    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getBatch_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_81
.end method
