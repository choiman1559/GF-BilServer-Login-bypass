.class public Lcom/bsgamesdk/android/model/UserinfoCache;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x17a4d2ad3981fcceL


# instance fields
.field public mUserinfoList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bsgamesdk/android/model/UserParcelable;",
            ">;"
        }
    .end annotation
.end field

.field public mUserinfoUidList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bsgamesdk/android/model/UserParcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoList:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoUidList:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bsgamesdk/android/model/UserParcelable;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bsgamesdk/android/model/UserParcelable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoList:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoUidList:Ljava/util/Map;

    iput-object p1, p0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoList:Ljava/util/Map;

    iput-object p2, p0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoUidList:Ljava/util/Map;

    return-void
.end method
