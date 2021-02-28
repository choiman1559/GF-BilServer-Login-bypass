.class public Lcom/bilibili/deviceutils/utils/BidUtils;
.super Ljava/lang/Object;


# static fields
.field private static final SALT_P1:I = 0x2

.field private static final SALT_P2:I = 0xd

.field private static final SALT_P3:I = 0x17

.field private static bidUtils:Lcom/bilibili/deviceutils/utils/BidUtils;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bilibili/deviceutils/utils/BidUtils;
    .registers 2

    const-class v1, Lcom/bilibili/deviceutils/utils/BidUtils;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bilibili/deviceutils/utils/BidUtils;->bidUtils:Lcom/bilibili/deviceutils/utils/BidUtils;

    if-nez v0, :cond_10

    new-instance v0, Lcom/bilibili/deviceutils/utils/BidUtils;

    invoke-direct {v0}, Lcom/bilibili/deviceutils/utils/BidUtils;-><init>()V

    sput-object v0, Lcom/bilibili/deviceutils/utils/BidUtils;->bidUtils:Lcom/bilibili/deviceutils/utils/BidUtils;

    monitor-exit v1

    :goto_f
    return-object v0

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_14

    sget-object v0, Lcom/bilibili/deviceutils/utils/BidUtils;->bidUtils:Lcom/bilibili/deviceutils/utils/BidUtils;

    goto :goto_f

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private static salt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x17

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_22} :catch_24

    move-result-object v0

    :goto_23
    return-object v0

    :catch_24
    move-exception v0

    const-string v0, ""

    goto :goto_23
.end method


# virtual methods
.method public getBid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    const-string v1, ""

    :try_start_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {p1}, Lcom/bilibili/deviceutils/utils/MD5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XZ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/bilibili/deviceutils/utils/BidUtils;->salt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_28} :catch_2a

    move-result-object v0

    :cond_29
    :goto_29
    return-object v0

    :catch_2a
    move-exception v1

    :cond_2b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    invoke-static {p2}, Lcom/bilibili/deviceutils/utils/MD5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/bilibili/deviceutils/utils/BidUtils;->salt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_51
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {p3}, Lcom/bilibili/deviceutils/utils/MD5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/bilibili/deviceutils/utils/BidUtils;->salt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method
