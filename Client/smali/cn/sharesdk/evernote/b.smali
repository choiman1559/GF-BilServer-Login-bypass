.class public Lcn/sharesdk/evernote/b;
.super Ljava/lang/Object;
.source "ByteArrayReader.java"


# instance fields
.field private a:Ljava/io/DataInputStream;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 48
    if-gez p1, :cond_1b

    .line 49
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1b
    new-array v0, p1, [B

    .line 53
    iget-object v1, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 54
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private j()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 151
    if-gez v0, :cond_21

    .line 152
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_21
    new-array v0, v0, [B

    .line 156
    iget-object v1, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 157
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 17
    if-gez v0, :cond_2f

    .line 18
    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    .line 19
    const/high16 v2, -0x7fff0000

    if-eq v1, v2, :cond_17

    .line 20
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Bad version in readMessageBegin"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_17
    invoke-virtual {p0}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    .line 23
    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 24
    iget-object v1, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 25
    iget v2, p0, Lcn/sharesdk/evernote/b;->b:I

    if-eq v1, v2, :cond_4a

    .line 26
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "checkVersion failed: out of sequence response"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_2f
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/b;->b(I)Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 34
    iget-object v1, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 35
    iget v2, p0, Lcn/sharesdk/evernote/b;->b:I

    if-eq v1, v2, :cond_4a

    .line 36
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "checkVersion failed: out of sequence response"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_4a
    return v0
.end method

.method public a(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 96
    packed-switch p1, :pswitch_data_76

    .line 147
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 98
    :pswitch_6
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    goto :goto_5

    .line 101
    :pswitch_c
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    goto :goto_5

    .line 104
    :pswitch_12
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    goto :goto_5

    .line 107
    :pswitch_18
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    goto :goto_5

    .line 110
    :pswitch_1e
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    goto :goto_5

    .line 113
    :pswitch_24
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    goto :goto_5

    .line 116
    :pswitch_2a
    invoke-direct {p0}, Lcn/sharesdk/evernote/b;->j()[B

    goto :goto_5

    .line 124
    :cond_2e
    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    .line 120
    :pswitch_33
    invoke-virtual {p0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 121
    aget v2, v0, v1

    if-nez v2, :cond_2e

    goto :goto_5

    .line 128
    :pswitch_3c
    invoke-virtual {p0}, Lcn/sharesdk/evernote/b;->f()[I

    move-result-object v2

    move v0, v1

    .line 129
    :goto_41
    const/4 v3, 0x2

    aget v3, v2, v3

    if-ge v0, v3, :cond_5

    .line 130
    aget v3, v2, v1

    invoke-virtual {p0, v3}, Lcn/sharesdk/evernote/b;->a(I)V

    .line 131
    aget v3, v2, v4

    invoke-virtual {p0, v3}, Lcn/sharesdk/evernote/b;->a(I)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 135
    :pswitch_53
    invoke-virtual {p0}, Lcn/sharesdk/evernote/b;->e()[I

    move-result-object v2

    move v0, v1

    .line 136
    :goto_58
    aget v3, v2, v4

    if-ge v0, v3, :cond_5

    .line 137
    aget v3, v2, v1

    invoke-virtual {p0, v3}, Lcn/sharesdk/evernote/b;->a(I)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 141
    :pswitch_64
    invoke-virtual {p0}, Lcn/sharesdk/evernote/b;->g()[I

    move-result-object v2

    move v0, v1

    .line 142
    :goto_69
    aget v3, v2, v4

    if-ge v0, v3, :cond_5

    .line 143
    aget v3, v2, v1

    invoke-virtual {p0, v3}, Lcn/sharesdk/evernote/b;->a(I)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 96
    nop

    :pswitch_data_76
    .packed-switch 0x2
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_5
        :pswitch_18
        :pswitch_5
        :pswitch_1e
        :pswitch_5
        :pswitch_24
        :pswitch_2a
        :pswitch_33
        :pswitch_3c
        :pswitch_53
        :pswitch_64
    .end packed-switch
.end method

.method public a(Ljava/io/InputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    .line 12
    iput p2, p0, Lcn/sharesdk/evernote/b;->b:I

    .line 13
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 44
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/b;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_2
    invoke-virtual {p0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v1

    .line 61
    aget v2, v1, v4

    if-nez v2, :cond_b

    .line 86
    return-object v0

    .line 64
    :cond_b
    const/4 v2, 0x1

    aget v2, v1, v2

    packed-switch v2, :pswitch_data_3a

    .line 80
    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_2

    .line 66
    :pswitch_17
    aget v2, v1, v4

    const/16 v3, 0xb

    if-ne v2, v3, :cond_22

    .line 67
    invoke-virtual {p0}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 69
    :cond_22
    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_2

    .line 73
    :pswitch_28
    aget v2, v1, v4

    const/16 v3, 0x8

    if-ne v2, v3, :cond_34

    .line 74
    iget-object v1, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    goto :goto_2

    .line 76
    :cond_34
    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_2

    .line 64
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_28
    .end packed-switch
.end method

.method public d()[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 91
    if-nez v2, :cond_13

    move v0, v1

    .line 92
    :goto_a
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    return-object v3

    .line 91
    :cond_13
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    goto :goto_a
.end method

.method public e()[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 162
    iget-object v1, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 163
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    return-object v2
.end method

.method public f()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 168
    iget-object v1, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 169
    iget-object v2, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 170
    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const/4 v0, 0x2

    aput v2, v3, v0

    return-object v3
.end method

.method public g()[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 175
    iget-object v1, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 176
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    return-object v2
.end method

.method public h()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 181
    new-array v0, v0, [B

    .line 182
    iget-object v1, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 183
    return-object v0
.end method

.method i()Ljava/io/DataInputStream;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcn/sharesdk/evernote/b;->a:Ljava/io/DataInputStream;

    return-object v0
.end method
