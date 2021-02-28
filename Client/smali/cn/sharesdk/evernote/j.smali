.class public Lcn/sharesdk/evernote/j;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field protected a:Lcn/sharesdk/evernote/b;

.field protected b:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Lcn/sharesdk/evernote/b;)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    .line 12
    iget-object v0, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->i()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/evernote/j;->b:Ljava/io/DataInputStream;

    .line 13
    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    packed-switch p1, :pswitch_data_3e

    .line 133
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 113
    :pswitch_5
    const-string v0, "UNKNOWN"

    goto :goto_4

    .line 114
    :pswitch_8
    const-string v0, "BAD_DATA_FORMAT"

    goto :goto_4

    .line 115
    :pswitch_b
    const-string v0, "PERMISSION_DENIED"

    goto :goto_4

    .line 116
    :pswitch_e
    const-string v0, "INTERNAL_ERROR"

    goto :goto_4

    .line 117
    :pswitch_11
    const-string v0, "DATA_REQUIRED"

    goto :goto_4

    .line 118
    :pswitch_14
    const-string v0, "LIMIT_REACHED"

    goto :goto_4

    .line 119
    :pswitch_17
    const-string v0, "QUOTA_REACHED"

    goto :goto_4

    .line 120
    :pswitch_1a
    const-string v0, "INVALID_AUTH"

    goto :goto_4

    .line 121
    :pswitch_1d
    const-string v0, "AUTH_EXPIRED"

    goto :goto_4

    .line 122
    :pswitch_20
    const-string v0, "DATA_CONFLICT"

    goto :goto_4

    .line 123
    :pswitch_23
    const-string v0, "ENML_VALIDATION"

    goto :goto_4

    .line 124
    :pswitch_26
    const-string v0, "SHARD_UNAVAILABLE"

    goto :goto_4

    .line 125
    :pswitch_29
    const-string v0, "LEN_TOO_SHORT"

    goto :goto_4

    .line 126
    :pswitch_2c
    const-string v0, "LEN_TOO_LONG"

    goto :goto_4

    .line 127
    :pswitch_2f
    const-string v0, "TOO_FEW"

    goto :goto_4

    .line 128
    :pswitch_32
    const-string v0, "TOO_MANY"

    goto :goto_4

    .line 129
    :pswitch_35
    const-string v0, "UNSUPPORTED_OPERATION"

    goto :goto_4

    .line 130
    :pswitch_38
    const-string v0, "TAKEN_DOWN"

    goto :goto_4

    .line 131
    :pswitch_3b
    const-string v0, "RATE_LIMIT_REACHED"

    goto :goto_4

    .line 112
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
    .end packed-switch
.end method

.method protected b(Ljava/util/HashMap;)V
    .registers 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 17
    :goto_1
    iget-object v0, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 18
    aget v1, v0, v3

    if-nez v1, :cond_c

    .line 43
    return-void

    .line 22
    :cond_c
    const/4 v1, 0x1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_52

    .line 39
    iget-object v1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_1

    .line 24
    :pswitch_1a
    aget v1, v0, v3

    const/16 v2, 0x8

    if-ne v1, v2, :cond_30

    .line 25
    iget-object v0, p0, Lcn/sharesdk/evernote/j;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 26
    const-string v1, "errorCode"

    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/j;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 28
    :cond_30
    iget-object v1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_1

    .line 32
    :pswitch_38
    aget v1, v0, v3

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4a

    .line 33
    const-string v0, "parameter"

    iget-object v1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 35
    :cond_4a
    iget-object v1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_1

    .line 22
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_38
    .end packed-switch
.end method

.method protected c(Ljava/util/HashMap;)V
    .registers 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 47
    :goto_3
    iget-object v0, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 48
    aget v1, v0, v3

    if-nez v1, :cond_e

    .line 80
    return-void

    .line 52
    :cond_e
    const/4 v1, 0x1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_6e

    .line 76
    iget-object v1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 54
    :pswitch_1c
    aget v1, v0, v3

    if-ne v1, v4, :cond_30

    .line 55
    iget-object v0, p0, Lcn/sharesdk/evernote/j;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 56
    const-string v1, "errorCode"

    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/j;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 58
    :cond_30
    iget-object v1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 62
    :pswitch_38
    aget v1, v0, v3

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4a

    .line 63
    const-string v0, "message"

    iget-object v1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 65
    :cond_4a
    iget-object v1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 69
    :pswitch_52
    aget v1, v0, v3

    if-ne v1, v4, :cond_66

    .line 70
    const-string v0, "rateLimitDuration"

    iget-object v1, p0, Lcn/sharesdk/evernote/j;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 72
    :cond_66
    iget-object v1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 52
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_38
        :pswitch_52
    .end packed-switch
.end method

.method protected d(Ljava/util/HashMap;)V
    .registers 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 84
    :goto_3
    iget-object v0, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 85
    aget v1, v0, v2

    if-nez v1, :cond_e

    .line 109
    return-void

    .line 89
    :cond_e
    const/4 v1, 0x1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_4c

    .line 105
    iget-object v1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 91
    :pswitch_1c
    aget v1, v0, v2

    if-ne v1, v3, :cond_2c

    .line 92
    const-string v0, "identify"

    iget-object v1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 94
    :cond_2c
    iget-object v1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 98
    :pswitch_34
    aget v1, v0, v2

    if-ne v1, v3, :cond_44

    .line 99
    const-string v0, "key"

    iget-object v1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 101
    :cond_44
    iget-object v1, p0, Lcn/sharesdk/evernote/j;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 89
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_34
    .end packed-switch
.end method
