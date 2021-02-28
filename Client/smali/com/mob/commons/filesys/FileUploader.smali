.class public Lcom/mob/commons/filesys/FileUploader;
.super Ljava/lang/Object;
.source "FileUploader.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/filesys/FileUploader$UploadedAvatar;,
        Lcom/mob/commons/filesys/FileUploader$UploadedVideo;,
        Lcom/mob/commons/filesys/FileUploader$UploadedImage;,
        Lcom/mob/commons/filesys/FileUploader$UploadedFile;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string v0, "http://up.sdk.mob.com"

    sput-object v0, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 153
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 154
    const-string v1, "1234567890abcdeffedcba0987654321"

    invoke-static {p0, v1}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 155
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 156
    const/16 v1, 0x7530

    iput v1, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 157
    const/16 v1, 0x1388

    iput v1, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 158
    invoke-static {}, Lcom/mob/commons/filesys/FileUploader;->e()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v1

    .line 159
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_57

    const-string v2, "200"

    const-string v3, "status"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 163
    :try_start_3f
    const-string v2, "res"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 164
    const-string v2, "token"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_4f} :catch_50

    return-object v0

    .line 165
    :catch_50
    move-exception v0

    .line 166
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 169
    :cond_57
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(JJ)Ljava/lang/Throwable;
    .registers 8

    .prologue
    .line 106
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"status\": ,\"error\":\"max size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", file size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/MobProduct;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
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

    .line 176
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "key"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "product"

    invoke-interface {p0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "cliid"

    invoke-static {p0}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    return-object v0
.end method

.method private static a(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;J)Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/MobProduct;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v1, v2, p4

    if-lez v1, :cond_16

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lcom/mob/commons/filesys/FileUploader;->a(JJ)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 128
    :cond_16
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 129
    invoke-static {p0}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {p0, v1}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    new-instance v5, Lcom/mob/tools/network/KVPair;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 135
    :cond_4d
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v1, "file"

    invoke-direct {v3, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 137
    const/16 v1, 0x7530

    iput v1, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 138
    const/16 v1, 0x1388

    iput v1, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    move-object v1, p3

    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_8c

    const-string v2, "200"

    const-string v3, "status"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 142
    const-string v0, "res"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0

    .line 144
    :cond_8c
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Lcom/mob/commons/MobProduct;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/MobProduct;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 112
    const-string v1, "sm"

    if-eqz p2, :cond_27

    const/4 v0, 0x2

    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 114
    const-string v0, "zoomScaleWidths"

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_1c
    const-wide/32 v4, 0xa00000

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    .line 117
    invoke-static/range {v0 .. v5}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 112
    :cond_27
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/avatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/getToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setUploadServer(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 23
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 26
    :cond_13
    sput-object p0, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static uploadAvatar(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Lcom/mob/commons/filesys/FileUploader$UploadedAvatar;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 55
    new-array v0, v1, [I

    invoke-static {p0, p1, v1, v0}, Lcom/mob/commons/filesys/FileUploader;->uploadAvatar(Lcom/mob/commons/MobProduct;Ljava/lang/String;Z[I)Lcom/mob/commons/filesys/FileUploader$UploadedAvatar;

    move-result-object v0

    return-object v0
.end method

.method public static varargs uploadAvatar(Lcom/mob/commons/MobProduct;Ljava/lang/String;Z[I)Lcom/mob/commons/filesys/FileUploader$UploadedAvatar;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 64
    .line 65
    if-eqz p3, :cond_33

    array-length v1, p3

    if-lez v1, :cond_33

    .line 66
    const-string v2, ""

    .line 67
    array-length v3, p3

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_28

    aget v4, p3, v1

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 70
    :cond_28
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_33

    .line 71
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_33
    new-instance v1, Lcom/mob/commons/filesys/FileUploader$UploadedAvatar;

    invoke-static {}, Lcom/mob/commons/filesys/FileUploader;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v0, v2}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mob/commons/filesys/FileUploader$UploadedAvatar;-><init>(Ljava/util/HashMap;)V

    return-object v1
.end method

.method public static uploadFile(Lcom/mob/commons/MobProduct;Ljava/lang/String;Z)Lcom/mob/commons/filesys/FileUploader$UploadedFile;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    const-string v1, "sm"

    if-eqz p2, :cond_24

    const/4 v0, 0x2

    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-wide/32 v4, 0x3200000

    .line 100
    new-instance v6, Lcom/mob/commons/filesys/FileUploader$UploadedFile;

    invoke-static {}, Lcom/mob/commons/filesys/FileUploader;->d()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;J)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/mob/commons/filesys/FileUploader$UploadedFile;-><init>(Ljava/util/HashMap;)V

    return-object v6

    .line 98
    :cond_24
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static uploadImage(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Lcom/mob/commons/filesys/FileUploader$UploadedImage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 30
    new-array v0, v1, [I

    invoke-static {p0, p1, v1, v0}, Lcom/mob/commons/filesys/FileUploader;->uploadImage(Lcom/mob/commons/MobProduct;Ljava/lang/String;Z[I)Lcom/mob/commons/filesys/FileUploader$UploadedImage;

    move-result-object v0

    return-object v0
.end method

.method public static varargs uploadImage(Lcom/mob/commons/MobProduct;Ljava/lang/String;Z[I)Lcom/mob/commons/filesys/FileUploader$UploadedImage;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 39
    .line 40
    if-eqz p3, :cond_33

    array-length v1, p3

    if-lez v1, :cond_33

    .line 41
    const-string v2, ""

    .line 42
    array-length v3, p3

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_28

    aget v4, p3, v1

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 45
    :cond_28
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_33

    .line 46
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_33
    new-instance v1, Lcom/mob/commons/filesys/FileUploader$UploadedImage;

    invoke-static {}, Lcom/mob/commons/filesys/FileUploader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v0, v2}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mob/commons/filesys/FileUploader$UploadedImage;-><init>(Ljava/util/HashMap;)V

    return-object v1
.end method

.method public static uploadVideo(Lcom/mob/commons/MobProduct;Ljava/lang/String;Z)Lcom/mob/commons/filesys/FileUploader$UploadedVideo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 86
    const-string v1, "sm"

    if-eqz p2, :cond_24

    const/4 v0, 0x2

    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-wide/32 v4, 0xc800000

    .line 88
    new-instance v6, Lcom/mob/commons/filesys/FileUploader$UploadedVideo;

    invoke-static {}, Lcom/mob/commons/filesys/FileUploader;->c()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;J)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/mob/commons/filesys/FileUploader$UploadedVideo;-><init>(Ljava/util/HashMap;)V

    return-object v6

    .line 86
    :cond_24
    const/4 v0, 0x1

    goto :goto_a
.end method
