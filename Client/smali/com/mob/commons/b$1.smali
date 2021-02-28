.class Lcom/mob/commons/b$1;
.super Ljava/lang/Object;
.source "DataHeap.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b;->b(JLjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/mob/commons/b;


# direct methods
.method constructor <init>(Lcom/mob/commons/b;JLjava/util/HashMap;)V
    .registers 5

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mob/commons/b$1;->c:Lcom/mob/commons/b;

    iput-wide p2, p0, Lcom/mob/commons/b$1;->a:J

    iput-object p4, p0, Lcom/mob/commons/b$1;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .registers 6

    .prologue
    .line 109
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 110
    const-string v1, "time"

    iget-wide v2, p0, Lcom/mob/commons/b$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/mob/commons/b$1;->c:Lcom/mob/commons/b;

    invoke-static {v2}, Lcom/mob/commons/b;->a(Lcom/mob/commons/b;)Lcom/mob/tools/utils/Hashon;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/commons/b$1;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 114
    invoke-static {v1, v2}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object v1

    .line 115
    const-string v2, "data"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/mob/commons/b$1;->c:Lcom/mob/commons/b;

    invoke-static {v1}, Lcom/mob/commons/b;->b(Lcom/mob/commons/b;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/utils/SQLiteHelper;->insert(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/ContentValues;)J
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_49} :catch_4b

    .line 120
    :goto_49
    const/4 v0, 0x0

    return v0

    .line 117
    :catch_4b
    move-exception v0

    .line 118
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_49
.end method
