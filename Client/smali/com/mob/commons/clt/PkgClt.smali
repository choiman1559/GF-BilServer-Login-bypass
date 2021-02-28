.class public Lcom/mob/commons/clt/PkgClt;
.super Ljava/lang/Object;
.source "PkgClt.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Lcom/mob/commons/clt/PkgClt;


# instance fields
.field private c:Landroid/content/BroadcastReceiver;

.field private d:Lcom/mob/tools/utils/Hashon;

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mob/commons/clt/PkgClt;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/clt/PkgClt;->d:Lcom/mob/tools/utils/Hashon;

    .line 64
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 306
    const-string v1, "pkg"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 311
    const/4 v3, 0x0

    .line 312
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 313
    const-string v7, "pkg"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 314
    const/4 v1, 0x1

    .line 319
    :goto_41
    if-nez v1, :cond_9

    .line 320
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 323
    :cond_47
    return-object v4

    :cond_48
    move v1, v3

    goto :goto_41
.end method

.method private a()V
    .registers 4

    .prologue
    .line 67
    new-instance v0, Lcom/mob/commons/clt/PkgClt$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/clt/PkgClt$1;-><init>(Lcom/mob/commons/clt/PkgClt;)V

    .line 85
    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->start()V

    .line 86
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/mob/commons/clt/PkgClt$2;

    invoke-direct {v2, p0}, Lcom/mob/commons/clt/PkgClt$2;-><init>(Lcom/mob/commons/clt/PkgClt;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mob/commons/clt/PkgClt;->e:Landroid/os/Handler;

    .line 99
    iget-object v0, p0, Lcom/mob/commons/clt/PkgClt;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 100
    return-void
.end method

.method private a(J)V
    .registers 6

    .prologue
    .line 192
    const-string v0, "comm/dbs/.nulal"

    invoke-static {v0}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 194
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 195
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 196
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 197
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 198
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_19} :catch_1a

    .line 202
    :goto_19
    return-void

    .line 199
    :catch_1a
    move-exception v0

    .line 200
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method private a(JLjava/lang/String;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "list"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "datetime"

    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {}, Lcom/mob/commons/b;->a()Lcom/mob/commons/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/mob/commons/b;->a(JLjava/util/HashMap;)V

    .line 172
    return-void
.end method

.method static synthetic a(Lcom/mob/commons/clt/PkgClt;)V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mob/commons/clt/PkgClt;->b()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 175
    const-string v0, "comm/dbs/.al"

    invoke-static {v0}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 177
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 178
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 179
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 181
    iget-object v3, p0, Lcom/mob/commons/clt/PkgClt;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v3, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_36} :catch_37

    goto :goto_1b

    .line 186
    :catch_37
    move-exception v0

    .line 187
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 189
    :goto_3f
    return-void

    .line 184
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 185
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_46} :catch_37

    goto :goto_3f
.end method

.method static synthetic a(Lcom/mob/commons/clt/PkgClt;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/mob/commons/clt/PkgClt;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 258
    sget-object v2, Lcom/mob/commons/clt/PkgClt;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    .line 259
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 260
    const/4 v0, 0x1

    .line 263
    :cond_10
    return v0

    .line 258
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private b()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x3e8

    .line 103
    invoke-direct {p0}, Lcom/mob/commons/clt/PkgClt;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 106
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstalledApp(Z)Ljava/util/ArrayList;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1a} :catch_35

    move-result-object v0

    .line 112
    :goto_1b
    invoke-static {}, Lcom/mob/commons/a;->q()J

    move-result-wide v2

    const-string v1, "APPS_ALL"

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/mob/commons/clt/PkgClt;->a(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 113
    invoke-direct {p0, v0}, Lcom/mob/commons/clt/PkgClt;->a(Ljava/util/ArrayList;)V

    .line 114
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v0

    .line 115
    invoke-static {}, Lcom/mob/commons/a;->g()J

    move-result-wide v2

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/mob/commons/clt/PkgClt;->a(J)V

    .line 136
    :goto_34
    return-void

    .line 108
    :catch_35
    move-exception v0

    .line 109
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1b

    .line 118
    :cond_43
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v2

    .line 119
    invoke-direct {p0}, Lcom/mob/commons/clt/PkgClt;->d()J

    move-result-wide v0

    .line 120
    cmp-long v0, v2, v0

    if-ltz v0, :cond_80

    .line 122
    :try_start_4f
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 123
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstalledApp(Z)Ljava/util/ArrayList;
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_5b} :catch_72

    move-result-object v0

    .line 128
    :goto_5c
    invoke-static {}, Lcom/mob/commons/a;->q()J

    move-result-wide v4

    const-string v1, "APPS_ALL"

    invoke-direct {p0, v4, v5, v1, v0}, Lcom/mob/commons/clt/PkgClt;->a(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 129
    invoke-direct {p0, v0}, Lcom/mob/commons/clt/PkgClt;->a(Ljava/util/ArrayList;)V

    .line 130
    invoke-static {}, Lcom/mob/commons/a;->g()J

    move-result-wide v0

    mul-long/2addr v0, v6

    add-long/2addr v0, v2

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/mob/commons/clt/PkgClt;->a(J)V

    goto :goto_34

    .line 124
    :catch_72
    move-exception v0

    .line 125
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5c

    .line 133
    :cond_80
    invoke-direct {p0}, Lcom/mob/commons/clt/PkgClt;->f()V

    goto :goto_34
.end method

.method static synthetic b(Lcom/mob/commons/clt/PkgClt;)V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mob/commons/clt/PkgClt;->f()V

    return-void
.end method

.method private c()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "comm/dbs/.al"

    invoke-static {v0}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 142
    :try_start_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 144
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 146
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 147
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 148
    :goto_2b
    if-eqz v1, :cond_3d

    .line 149
    iget-object v2, p0, Lcom/mob/commons/clt/PkgClt;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_38

    .line 151
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_38
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 155
    :cond_3d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_40} :catch_41

    .line 162
    :goto_40
    return-object v0

    .line 157
    :catch_41
    move-exception v0

    .line 158
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 162
    :cond_49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_40
.end method

.method static synthetic c(Lcom/mob/commons/clt/PkgClt;)V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mob/commons/clt/PkgClt;->e()V

    return-void
.end method

.method private d()J
    .registers 4

    .prologue
    .line 205
    const-string v0, "comm/dbs/.nulal"

    invoke-static {v0}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 208
    :try_start_c
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 209
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 210
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 211
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1d} :catch_1e

    .line 217
    :goto_1d
    return-wide v0

    .line 213
    :catch_1e
    move-exception v0

    .line 214
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 217
    :cond_26
    const-wide/16 v0, 0x0

    goto :goto_1d
.end method

.method static synthetic d(Lcom/mob/commons/clt/PkgClt;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mob/commons/clt/PkgClt;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .registers 5

    .prologue
    .line 221
    invoke-static {}, Lcom/mob/commons/a;->d()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/mob/commons/a;->f()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 222
    iget-object v0, p0, Lcom/mob/commons/clt/PkgClt;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_17

    .line 223
    new-instance v0, Lcom/mob/commons/clt/PkgClt$3;

    invoke-direct {v0, p0}, Lcom/mob/commons/clt/PkgClt$3;-><init>(Lcom/mob/commons/clt/PkgClt;)V

    iput-object v0, p0, Lcom/mob/commons/clt/PkgClt;->c:Landroid/content/BroadcastReceiver;

    .line 237
    :cond_17
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 238
    const/4 v0, 0x0

    :goto_1d
    sget-object v2, Lcom/mob/commons/clt/PkgClt;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2c

    .line 239
    sget-object v2, Lcom/mob/commons/clt/PkgClt;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 241
    :cond_2c
    const-string v0, "package"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 243
    :try_start_31
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/commons/clt/PkgClt;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3a} :catch_5d

    .line 254
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/mob/commons/clt/PkgClt;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 255
    return-void

    .line 246
    :cond_44
    iget-object v0, p0, Lcom/mob/commons/clt/PkgClt;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3a

    .line 247
    iget-object v0, p0, Lcom/mob/commons/clt/PkgClt;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    :try_start_4e
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/clt/PkgClt;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_57} :catch_5b

    .line 251
    :goto_57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/commons/clt/PkgClt;->c:Landroid/content/BroadcastReceiver;

    goto :goto_3a

    .line 250
    :catch_5b
    move-exception v0

    goto :goto_57

    .line 244
    :catch_5d
    move-exception v0

    goto :goto_3a
.end method

.method private f()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x3e8

    .line 267
    invoke-direct {p0}, Lcom/mob/commons/clt/PkgClt;->c()Ljava/util/ArrayList;

    move-result-object v1

    .line 270
    :try_start_6
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 271
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/DeviceHelper;->getInstalledApp(Z)Ljava/util/ArrayList;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_12} :catch_35

    move-result-object v0

    .line 276
    :goto_13
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 277
    :cond_1b
    invoke-static {}, Lcom/mob/commons/a;->q()J

    move-result-wide v2

    const-string v1, "APPS_ALL"

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/mob/commons/clt/PkgClt;->a(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 278
    invoke-direct {p0, v0}, Lcom/mob/commons/clt/PkgClt;->a(Ljava/util/ArrayList;)V

    .line 279
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v0

    .line 280
    invoke-static {}, Lcom/mob/commons/a;->g()J

    move-result-wide v2

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 281
    invoke-direct {p0, v0, v1}, Lcom/mob/commons/clt/PkgClt;->a(J)V

    .line 300
    :goto_34
    return-void

    .line 272
    :catch_35
    move-exception v0

    .line 273
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_13

    .line 284
    :cond_43
    invoke-direct {p0, v0, v1}, Lcom/mob/commons/clt/PkgClt;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 285
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_56

    .line 286
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v4

    const-string v3, "APPS_INCR"

    invoke-direct {p0, v4, v5, v3, v2}, Lcom/mob/commons/clt/PkgClt;->a(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 290
    :cond_56
    invoke-direct {p0, v1, v0}, Lcom/mob/commons/clt/PkgClt;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_69

    .line 292
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v2

    const-string v4, "UNINSTALL"

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/mob/commons/clt/PkgClt;->a(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 295
    :cond_69
    invoke-direct {p0, v0}, Lcom/mob/commons/clt/PkgClt;->a(Ljava/util/ArrayList;)V

    .line 296
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v0

    .line 297
    invoke-static {}, Lcom/mob/commons/a;->g()J

    move-result-wide v2

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 298
    invoke-direct {p0, v0, v1}, Lcom/mob/commons/clt/PkgClt;->a(J)V

    goto :goto_34
.end method

.method public static declared-synchronized startCollector()V
    .registers 2

    .prologue
    .line 56
    const-class v1, Lcom/mob/commons/clt/PkgClt;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mob/commons/clt/PkgClt;->b:Lcom/mob/commons/clt/PkgClt;

    if-nez v0, :cond_13

    .line 57
    new-instance v0, Lcom/mob/commons/clt/PkgClt;

    invoke-direct {v0}, Lcom/mob/commons/clt/PkgClt;-><init>()V

    sput-object v0, Lcom/mob/commons/clt/PkgClt;->b:Lcom/mob/commons/clt/PkgClt;

    .line 58
    sget-object v0, Lcom/mob/commons/clt/PkgClt;->b:Lcom/mob/commons/clt/PkgClt;

    invoke-direct {v0}, Lcom/mob/commons/clt/PkgClt;->a()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 60
    :cond_13
    monitor-exit v1

    return-void

    .line 56
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method
