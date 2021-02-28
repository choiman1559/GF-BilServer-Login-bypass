.class public Lcom/mob/tools/utils/SharePrefrenceHelper;
.super Ljava/lang/Object;
.source "SharePrefrenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->context:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    invoke-virtual {v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->clear()V

    .line 131
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 100
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "base64":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    move-object v5, v6

    .line 114
    .end local v1    # "base64":Ljava/lang/String;
    :goto_c
    return-object v5

    .line 105
    .restart local v1    # "base64":Ljava/lang/String;
    :cond_d
    const/4 v7, 0x2

    invoke-static {v1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 106
    .local v2, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 107
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 108
    .local v3, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 109
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_23} :catch_24

    goto :goto_c

    .line 111
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "base64":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .end local v5    # "value":Ljava/lang/Object;
    :catch_24
    move-exception v4

    .line 112
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 114
    goto :goto_c
.end method

.method public getAll()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    invoke-virtual {v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->getAll()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method public open(Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    .line 36
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 79
    if-nez p2, :cond_3

    .line 96
    :goto_2
    return-void

    .line 84
    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 88
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 91
    .local v2, "data":[B
    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "base64":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_23

    goto :goto_2

    .line 93
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "base64":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_23
    move-exception v4

    .line 94
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public putAll(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "all":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->putAll(Ljava/util/HashMap;)V

    .line 123
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method public putFloat(Ljava/lang/String;Ljava/lang/Float;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->putFloat(Ljava/lang/String;F)V

    .line 72
    return-void
.end method

.method public putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->putInt(Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public putLong(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->putLong(Ljava/lang/String;J)V

    .line 56
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->remove(Ljava/lang/String;)V

    .line 127
    return-void
.end method
