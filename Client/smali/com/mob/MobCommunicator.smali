.class public final Lcom/mob/MobCommunicator;
.super Ljava/lang/Object;
.source "MobCommunicator.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/MobCommunicator$NetworkError;,
        Lcom/mob/MobCommunicator$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Random;

.field private b:Ljava/math/BigInteger;

.field private c:Ljava/math/BigInteger;

.field private d:Lcom/mob/tools/utils/MobRSA;

.field private e:Lcom/mob/tools/utils/Hashon;

.field private f:Lcom/mob/tools/network/NetworkHelper;

.field private g:Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/16 v1, 0x10

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/mob/MobCommunicator;->a:Ljava/util/Random;

    .line 47
    new-instance v0, Lcom/mob/tools/utils/MobRSA;

    invoke-direct {v0, p1}, Lcom/mob/tools/utils/MobRSA;-><init>(I)V

    iput-object v0, p0, Lcom/mob/MobCommunicator;->d:Lcom/mob/tools/utils/MobRSA;

    .line 48
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mob/MobCommunicator;->b:Ljava/math/BigInteger;

    .line 49
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mob/MobCommunicator;->c:Ljava/math/BigInteger;

    .line 50
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcom/mob/MobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    .line 51
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    iput-object v0, p0, Lcom/mob/MobCommunicator;->f:Lcom/mob/tools/network/NetworkHelper;

    .line 52
    new-instance v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    iput-object v0, p0, Lcom/mob/MobCommunicator;->g:Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    .line 53
    iget-object v0, p0, Lcom/mob/MobCommunicator;->g:Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    const/16 v1, 0x7530

    iput v1, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 54
    iget-object v0, p0, Lcom/mob/MobCommunicator;->g:Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    const/16 v1, 0x1388

    iput v1, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/mob/MobCommunicator;Lcom/mob/tools/network/HttpConnection;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mob/MobCommunicator;->a(Lcom/mob/tools/network/HttpConnection;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lcom/mob/tools/network/HttpConnection;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 206
    const-wide/16 v0, -0x1

    .line 207
    const-string v2, "Content-Length"

    invoke-direct {p0, p1, v2}, Lcom/mob/MobCommunicator;->a(Lcom/mob/tools/network/HttpConnection;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 208
    if-eqz v2, :cond_1b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 209
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 211
    :cond_1b
    return-wide v0
.end method

.method private a([B[Ljava/lang/String;)Lcom/mob/tools/network/HttpResponseCallback;
    .registers 4

    .prologue
    .line 164
    new-instance v0, Lcom/mob/MobCommunicator$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/mob/MobCommunicator$3;-><init>(Lcom/mob/MobCommunicator;[Ljava/lang/String;[B)V

    return-object v0
.end method

.method static synthetic a(Lcom/mob/MobCommunicator;)Lcom/mob/tools/utils/Hashon;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mob/MobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 233
    if-nez p1, :cond_24

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 235
    const-string v1, "status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v1, "error"

    const-string v2, "response is empty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v1, Lcom/mob/MobCommunicator$NetworkError;

    iget-object v2, p0, Lcom/mob/MobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mob/MobCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_24
    iget-object v0, p0, Lcom/mob/MobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    const-string v1, "status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "error"

    const-string v2, "response is empty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v1, Lcom/mob/MobCommunicator$NetworkError;

    iget-object v2, p0, Lcom/mob/MobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mob/MobCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_55
    const-string v1, "res"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mob/MobCommunicator;[B[B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/mob/MobCommunicator;->a([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([BLjava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 130
    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 131
    if-eqz p3, :cond_c

    .line 132
    invoke-direct {p0, v0}, Lcom/mob/MobCommunicator;->a([B)[B

    move-result-object v0

    .line 135
    :cond_c
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 137
    iget-object v3, p0, Lcom/mob/MobCommunicator;->d:Lcom/mob/tools/utils/MobRSA;

    iget-object v4, p0, Lcom/mob/MobCommunicator;->b:Ljava/math/BigInteger;

    iget-object v5, p0, Lcom/mob/MobCommunicator;->c:Ljava/math/BigInteger;

    invoke-virtual {v3, p1, v4, v5}, Lcom/mob/tools/utils/MobRSA;->encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v3

    .line 138
    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 139
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 140
    invoke-static {p1, v0}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object v0

    .line 141
    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 142
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 143
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 144
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 146
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([B[B)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 228
    invoke-static {p1, v0}, Lcom/mob/tools/utils/Data;->AES128Decode([B[B)[B

    move-result-object v0

    .line 229
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lcom/mob/MobSDK;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 151
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "App secret should not be null"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mob/MobSDK;->getAppSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "key"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "Content-Length"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getProducts()Ljava/util/ArrayList;

    move-result-object v1

    .line 159
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "User-Identity"

    invoke-static {v1}, Lcom/mob/commons/MobProductCollector;->getUserIdentity(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    return-object v0
.end method

.method private a(Lcom/mob/tools/network/HttpConnection;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/network/HttpConnection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 215
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_2f

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 217
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    if-eqz v0, :cond_14

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 219
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 223
    :goto_2e
    return-object v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private a()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 121
    iget-object v2, p0, Lcom/mob/MobCommunicator;->a:Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Random;->setSeed(J)V

    .line 122
    iget-object v2, p0, Lcom/mob/MobCommunicator;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 123
    iget-object v2, p0, Lcom/mob/MobCommunicator;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 124
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 125
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 126
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private a([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 111
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 112
    invoke-virtual {v2, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 113
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 114
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 115
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public request(Ljava/util/HashMap;Ljava/lang/String;ZLcom/mob/MobCommunicator$a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mob/MobCommunicator$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/mob/MobCommunicator$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mob/MobCommunicator$1;-><init>(Lcom/mob/MobCommunicator;Ljava/util/HashMap;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/mob/MobCommunicator$2;

    invoke-direct {v1, p0, p4}, Lcom/mob/MobCommunicator$2;-><init>(Lcom/mob/MobCommunicator;Lcom/mob/MobCommunicator$a;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOnNewThreadAndObserveOnUIThread(Lcom/mob/tools/RxMob$Subscriber;)V

    .line 74
    return-void
.end method

.method public requestSynchronized(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 91
    invoke-direct {p0}, Lcom/mob/MobCommunicator;->a()[B

    move-result-object v0

    .line 92
    invoke-direct {p0, v0, p1, p3}, Lcom/mob/MobCommunicator;->a([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    .line 94
    invoke-direct {p0, p1, v2}, Lcom/mob/MobCommunicator;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 95
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    .line 96
    invoke-direct {p0, v0, v7}, Lcom/mob/MobCommunicator;->a([B[Ljava/lang/String;)Lcom/mob/tools/network/HttpResponseCallback;

    move-result-object v5

    .line 97
    new-instance v3, Lcom/mob/tools/network/StringPart;

    invoke-direct {v3}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 98
    invoke-virtual {v3, v1}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 99
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>  request: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\nurl = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\nheader = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 100
    iget-object v0, p0, Lcom/mob/MobCommunicator;->f:Lcom/mob/tools/network/NetworkHelper;

    const/4 v4, -0x1

    iget-object v6, p0, Lcom/mob/MobCommunicator;->g:Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 101
    aget-object v0, v7, v8

    if-eqz v0, :cond_89

    .line 102
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v7, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 103
    aget-object v0, v7, v8

    invoke-direct {p0, v0}, Lcom/mob/MobCommunicator;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    :goto_88
    return-object v0

    :cond_89
    const/4 v0, 0x0

    goto :goto_88
.end method

.method public requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 78
    if-nez p1, :cond_9

    .line 79
    const-string v0, "{}"

    .line 86
    :cond_4
    :goto_4
    invoke-virtual {p0, v0, p2, p3}, Lcom/mob/MobCommunicator;->requestSynchronized(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 81
    :cond_9
    iget-object v0, p0, Lcom/mob/MobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 83
    const-string v0, "{}"

    goto :goto_4
.end method
