.class final Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;
.super Ljava/lang/Object;
.source "SharePrefrenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/SharePrefrenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MobSharePrefrence"
.end annotation


# instance fields
.field private hashon:Lcom/mob/tools/utils/Hashon;

.field private spFile:Ljava/io/File;

.field private spMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Mob"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    .local v0, "folder":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spFile:Ljava/io/File;

    .line 141
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 142
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 144
    :cond_2a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spMap:Ljava/util/HashMap;

    .line 145
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->hashon:Lcom/mob/tools/utils/Hashon;

    .line 146
    invoke-direct {p0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->open()V

    .line 147
    return-void
.end method

.method private commit()V
    .registers 7

    .prologue
    .line 189
    :try_start_0
    iget-object v4, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->hashon:Lcom/mob/tools/utils/Hashon;

    iget-object v5, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "json":Ljava/lang/String;
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spFile:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 191
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v4, "utf-8"

    invoke-direct {v2, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 192
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    invoke-virtual {v2, v1}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 193
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 194
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    .line 198
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    :goto_1f
    return-void

    .line 195
    :catch_20
    move-exception v3

    .line 196
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method private get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 176
    :try_start_3
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 177
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private open()V
    .registers 10

    .prologue
    .line 150
    iget-object v7, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 151
    :try_start_3
    iget-object v6, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_56

    move-result v6

    if-eqz v6, :cond_4b

    .line 153
    :try_start_b
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spFile:Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 154
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v2, v1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 155
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 156
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "line":Ljava/lang/String;
    :goto_27
    if-eqz v3, :cond_3c

    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_34

    .line 160
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_34
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_27

    .line 165
    :cond_3c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 166
    iget-object v6, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->hashon:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spMap:Ljava/util/HashMap;
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_4b} :catch_4d
    .catchall {:try_start_b .. :try_end_4b} :catchall_56

    .line 171
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_4b
    :goto_4b
    :try_start_4b
    monitor-exit v7

    .line 172
    return-void

    .line 167
    :catch_4d
    move-exception v5

    .line 168
    .local v5, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_4b

    .line 171
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_56
    move-exception v6

    monitor-exit v7
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_56

    throw v6
.end method

.method private put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 182
    :try_start_3
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-direct {p0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->commit()V

    .line 184
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 328
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 329
    :try_start_3
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 330
    invoke-direct {p0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->commit()V

    .line 331
    monitor-exit v1

    .line 332
    return-void

    .line 331
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getAll()Ljava/util/HashMap;
    .registers 4
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
    .line 309
    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 310
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v0, "all":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 312
    monitor-exit v2

    return-object v0

    .line 313
    .end local v0    # "all":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_f
    move-exception v1

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    const/4 v1, 0x1

    .line 285
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_12

    .line 287
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v2

    if-ne v2, v1, :cond_10

    .line 289
    :goto_f
    return v1

    .line 287
    :cond_10
    const/4 v1, 0x0

    goto :goto_f

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_12
    move v1, p2

    .line 289
    goto :goto_f
.end method

.method public getByte(Ljava/lang/String;B)B
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # B

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_c

    .line 203
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result p2

    .line 205
    .end local p2    # "defValue":B
    :cond_c
    return p2
.end method

.method public getChar(Ljava/lang/String;C)C
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # C

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_d

    .line 275
    check-cast v0, Ljava/lang/String;

    .end local v0    # "o":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 277
    .end local p2    # "defValue":C
    :cond_d
    return p2
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # D

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_c

    .line 263
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    .line 265
    .end local p2    # "defValue":D
    :cond_c
    return-wide p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_c

    .line 251
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 253
    .end local p2    # "defValue":F
    :cond_c
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 226
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_c

    .line 227
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 229
    .end local p2    # "defValue":I
    :cond_c
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_c

    .line 239
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    .line 241
    .end local p2    # "defValue":J
    :cond_c
    return-wide p2
.end method

.method public getShort(Ljava/lang/String;S)S
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # S

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_c

    .line 215
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result p2

    .line 217
    .end local p2    # "defValue":S
    :cond_c
    return p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_9

    .line 299
    check-cast v0, Ljava/lang/String;

    .line 301
    .end local v0    # "o":Ljava/lang/Object;
    :goto_8
    return-object v0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_9
    move-object v0, p2

    goto :goto_8
.end method

.method public putAll(Ljava/util/HashMap;)V
    .registers 4
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
    .line 317
    .local p1, "all":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 318
    :try_start_3
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->spMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 319
    invoke-direct {p0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->commit()V

    .line 320
    monitor-exit v1

    .line 321
    return-void

    .line 320
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 293
    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->putByte(Ljava/lang/String;B)V

    .line 294
    return-void

    .line 293
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public putByte(Ljava/lang/String;B)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 209
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 281
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 269
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 257
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 233
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 245
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 221
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePrefrence;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    return-void
.end method
