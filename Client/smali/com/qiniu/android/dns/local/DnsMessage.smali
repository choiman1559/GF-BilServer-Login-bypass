.class public final Lcom/qiniu/android/dns/local/DnsMessage;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildQuery(Ljava/lang/String;I)[B
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Lcom/qiniu/android/dns/util/BitSet;

    invoke-direct {v2}, Lcom/qiniu/android/dns/util/BitSet;-><init>()V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/qiniu/android/dns/util/BitSet;->set(I)Lcom/qiniu/android/dns/util/BitSet;

    int-to-short v3, p1

    :try_start_17
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2}, Lcom/qiniu/android/dns/util/BitSet;->value()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-static {v0, p0}, Lcom/qiniu/android/dns/local/DnsMessage;->writeQuestion(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_38} :catch_3d

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_3d
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static parseResponse([BILjava/lang/String;)[Lcom/qiniu/android/dns/Record;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    if-eq v2, p1, :cond_35

    new-instance v0, Lcom/qiniu/android/dns/DnsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the answer id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/qiniu/android/dns/DnsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_35
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    shr-int/lit8 v2, v4, 0x8

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_52

    move v2, v0

    :goto_40
    shr-int/lit8 v4, v4, 0x7

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_54

    :goto_46
    if-eqz v0, :cond_4a

    if-nez v2, :cond_56

    :cond_4a
    new-instance v0, Lcom/qiniu/android/dns/DnsException;

    const-string v1, "the dns server cant support recursion "

    invoke-direct {v0, p2, v1}, Lcom/qiniu/android/dns/DnsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_52
    move v2, v1

    goto :goto_40

    :cond_54
    move v0, v1

    goto :goto_46

    :cond_56
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    invoke-static {v3, p0, v0}, Lcom/qiniu/android/dns/local/DnsMessage;->readQuestions(Ljava/io/DataInputStream;[BI)V

    invoke-static {v3, p0, v1}, Lcom/qiniu/android/dns/local/DnsMessage;->readAnswers(Ljava/io/DataInputStream;[BI)[Lcom/qiniu/android/dns/Record;

    move-result-object v0

    return-object v0
.end method

.method private static readAnswers(Ljava/io/DataInputStream;[BI)[Lcom/qiniu/android/dns/Record;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v3, p2, [Lcom/qiniu/android/dns/Record;

    :goto_3
    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_12

    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readRecord(Ljava/io/DataInputStream;[B)Lcom/qiniu/android/dns/Record;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    move p2, v2

    goto :goto_3

    :cond_12
    return-object v3
.end method

.method private static readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_24

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v0, v1}, Lcom/qiniu/android/dns/local/DnsMessage;->readName([BILjava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    :cond_23
    :goto_23
    return-object v0

    :cond_24
    if-nez v0, :cond_29

    const-string v0, ""

    goto :goto_23

    :cond_29
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method private static readName([BILjava/util/HashSet;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    aget-byte v0, p0, p1

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v0, v1, 0xc0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_35

    and-int/lit8 v0, v1, 0x3f

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v0, Lcom/qiniu/android/dns/DnsException;

    const-string v1, ""

    const-string v2, "Cyclic offsets detected."

    invoke-direct {v0, v1, v2}, Lcom/qiniu/android/dns/DnsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, p2}, Lcom/qiniu/android/dns/local/DnsMessage;->readName([BILjava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    :cond_34
    :goto_34
    return-object v0

    :cond_35
    if-nez v1, :cond_3a

    const-string v0, ""

    goto :goto_34

    :cond_3a
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, p0, v2, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v2, p1, 0x1

    add-int/2addr v1, v2

    invoke-static {p0, v1, p2}, Lcom/qiniu/android/dns/local/DnsMessage;->readName([BILjava/util/HashSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method

.method private static readQuestions(Ljava/io/DataInputStream;[BI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_f

    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move p2, v0

    goto :goto_0

    :cond_f
    return-void
.end method

.method private static readRecord(Ljava/io/DataInputStream;[B)Lcom/qiniu/android/dns/Record;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-long v0, v0

    const/16 v3, 0x10

    shl-long/2addr v0, v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v4, v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    sparse-switch v2, :sswitch_data_54

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v3, :cond_37

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :sswitch_29
    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :cond_37
    :goto_37
    if-nez v1, :cond_46

    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "no record"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_41
    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    :cond_46
    new-instance v0, Lcom/qiniu/android/dns/Record;

    long-to-int v3, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/dns/Record;-><init>(Ljava/lang/String;IIJ)V

    return-object v0

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_29
        0x5 -> :sswitch_41
    .end sparse-switch
.end method

.method private static writeDomain(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "[.\u3002\uff0e\uff61]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_9
    if-ge v0, v3, :cond_24

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v5, v4

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    array-length v5, v4

    invoke-virtual {p0, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_24
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static writeQuestion(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->writeDomain(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method
