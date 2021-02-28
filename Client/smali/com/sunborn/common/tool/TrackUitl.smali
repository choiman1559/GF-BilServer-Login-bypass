.class public Lcom/sunborn/common/tool/TrackUitl;
.super Ljava/lang/Object;
.source "TrackUitl.java"


# static fields
.field private static instance:Lcom/sunborn/common/tool/TrackUitl;


# instance fields
.field private cCONFIG_UUID_KEY:Ljava/lang/String;

.field private cCONFIG_UUID_TABLE:Ljava/lang/String;

.field private cEmptyString:Ljava/lang/String;

.field private mUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    .line 19
    const-string v0, "UUIDTABLE"

    iput-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->cCONFIG_UUID_TABLE:Ljava/lang/String;

    .line 20
    const-string v0, "UUID"

    iput-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->cCONFIG_UUID_KEY:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->cEmptyString:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/sunborn/common/tool/TrackUitl;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/sunborn/common/tool/TrackUitl;->instance:Lcom/sunborn/common/tool/TrackUitl;

    if-nez v0, :cond_b

    .line 14
    new-instance v0, Lcom/sunborn/common/tool/TrackUitl;

    invoke-direct {v0}, Lcom/sunborn/common/tool/TrackUitl;-><init>()V

    sput-object v0, Lcom/sunborn/common/tool/TrackUitl;->instance:Lcom/sunborn/common/tool/TrackUitl;

    .line 16
    :cond_b
    sget-object v0, Lcom/sunborn/common/tool/TrackUitl;->instance:Lcom/sunborn/common/tool/TrackUitl;

    return-object v0
.end method

.method private getUUIDFromFile(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/sunborn/common/tool/TrackUitl;->cCONFIG_UUID_TABLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    .local v0, "editor":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/sunborn/common/tool/TrackUitl;->cCONFIG_UUID_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunborn/common/tool/TrackUitl;->cEmptyString:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private writeUUIDToFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/sunborn/common/tool/TrackUitl;->cCONFIG_UUID_TABLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/sunborn/common/tool/TrackUitl;->cCONFIG_UUID_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    return-void
.end method


# virtual methods
.method public getUUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sunborn/common/tool/TrackUitl;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 38
    invoke-direct {p0, p1}, Lcom/sunborn/common/tool/TrackUitl;->getUUIDFromFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sunborn/common/tool/TrackUitl;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sunborn/common/tool/TrackUitl;->writeUUIDToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    .line 47
    :goto_27
    return-object v0

    .line 44
    :cond_28
    iget-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    goto :goto_27

    .line 47
    :cond_2b
    iget-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    goto :goto_27
.end method

.method public getUUID(Landroid/content/Context;Lcom/sunborn/common/listener/OnGetUUIDListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sunborn/common/listener/OnGetUUIDListener;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sunborn/common/tool/TrackUitl;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 24
    invoke-direct {p0, p1}, Lcom/sunborn/common/tool/TrackUitl;->getUUIDFromFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sunborn/common/tool/TrackUitl;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sunborn/common/tool/TrackUitl;->writeUUIDToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/sunborn/common/listener/OnGetUUIDListener;->OnSuccess(Ljava/lang/String;)V

    .line 35
    :goto_2a
    return-void

    .line 30
    :cond_2b
    iget-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/sunborn/common/listener/OnGetUUIDListener;->OnSuccess(Ljava/lang/String;)V

    goto :goto_2a

    .line 33
    :cond_31
    iget-object v0, p0, Lcom/sunborn/common/tool/TrackUitl;->mUUID:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/sunborn/common/listener/OnGetUUIDListener;->OnSuccess(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public isNullOrEmpty(Ljava/lang/String;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 62
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
