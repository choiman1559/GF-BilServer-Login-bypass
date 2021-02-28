.class public Lcom/bilibili/track/utils/JSONUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public objectToJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    instance-of v1, p1, Ljava/io/Serializable;

    if-eqz v1, :cond_f

    :try_start_6
    new-instance v1, Lcopy/google/json/JSON;

    invoke-direct {v1}, Lcopy/google/json/JSON;-><init>()V

    invoke-virtual {v1, p1}, Lcopy/google/json/JSON;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_10

    move-result-object v0

    :cond_f
    :goto_f
    return-object v0

    :catch_10
    move-exception v1

    goto :goto_f
.end method
