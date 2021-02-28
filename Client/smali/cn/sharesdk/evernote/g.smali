.class public Lcn/sharesdk/evernote/g;
.super Lcn/sharesdk/evernote/j;
.source "NoteParser.java"


# direct methods
.method public constructor <init>(Lcn/sharesdk/evernote/b;)V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcn/sharesdk/evernote/j;-><init>(Lcn/sharesdk/evernote/b;)V

    .line 10
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .registers 11
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
    const/16 v8, 0xf

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/16 v5, 0xb

    const/4 v1, 0x0

    .line 64
    :goto_8
    iget-object v0, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 65
    aget v2, v0, v1

    if-nez v2, :cond_13

    .line 203
    :cond_12
    return-void

    .line 69
    :cond_13
    const-string v2, "guid"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 73
    aget v2, v0, v6

    packed-switch v2, :pswitch_data_20c

    .line 199
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 75
    :pswitch_28
    aget v2, v0, v1

    if-ne v2, v5, :cond_38

    .line 76
    const-string v0, "guid"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 78
    :cond_38
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 82
    :pswitch_40
    aget v2, v0, v1

    if-ne v2, v5, :cond_50

    .line 83
    const-string v0, "title"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 85
    :cond_50
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 89
    :pswitch_58
    aget v2, v0, v1

    if-ne v2, v5, :cond_68

    .line 90
    const-string v0, "content"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 92
    :cond_68
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 96
    :pswitch_70
    aget v2, v0, v1

    if-ne v2, v5, :cond_80

    .line 97
    const-string v0, "contentHash"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->h()[B

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 99
    :cond_80
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 103
    :pswitch_88
    aget v2, v0, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9f

    .line 104
    const-string v0, "contentLength"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 106
    :cond_9f
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 110
    :pswitch_a8
    aget v2, v0, v1

    if-ne v2, v7, :cond_bd

    .line 111
    const-string v0, "created"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 113
    :cond_bd
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 117
    :pswitch_c6
    aget v2, v0, v1

    if-ne v2, v7, :cond_db

    .line 118
    const-string v0, "updated"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 120
    :cond_db
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 124
    :pswitch_e4
    aget v2, v0, v1

    if-ne v2, v7, :cond_f9

    .line 125
    const-string v0, "deleted"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 127
    :cond_f9
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 131
    :pswitch_102
    aget v2, v0, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_118

    .line 132
    const-string v0, "active"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 134
    :cond_118
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 138
    :pswitch_121
    aget v2, v0, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_138

    .line 139
    const-string v0, "updateSequenceNum"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 141
    :cond_138
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 145
    :pswitch_141
    aget v2, v0, v1

    if-ne v2, v5, :cond_152

    .line 146
    const-string v0, "notebookGuid"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 148
    :cond_152
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 152
    :pswitch_15b
    aget v2, v0, v1

    if-ne v2, v8, :cond_182

    .line 153
    iget-object v0, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->g()[I

    move-result-object v2

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 155
    :goto_16b
    aget v4, v2, v6

    if-ge v0, v4, :cond_17b

    .line 156
    iget-object v4, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v4}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_16b

    .line 158
    :cond_17b
    const-string v0, "tagGuids"

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 160
    :cond_182
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 164
    :pswitch_18b
    aget v2, v0, v1

    if-ne v2, v8, :cond_1b4

    .line 165
    iget-object v0, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->g()[I

    move-result-object v2

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 167
    :goto_19b
    aget v4, v2, v6

    if-ge v0, v4, :cond_1ad

    .line 168
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 169
    invoke-direct {p0, v4}, Lcn/sharesdk/evernote/g;->e(Ljava/util/HashMap;)V

    .line 170
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_19b

    .line 172
    :cond_1ad
    const-string v0, "resources"

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 174
    :cond_1b4
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 178
    :pswitch_1bd
    aget v2, v0, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1d2

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 180
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/g;->h(Ljava/util/HashMap;)V

    .line 181
    const-string v2, "attributes"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 183
    :cond_1d2
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 187
    :pswitch_1db
    aget v2, v0, v1

    if-ne v2, v8, :cond_202

    .line 188
    iget-object v0, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->g()[I

    move-result-object v2

    .line 189
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 190
    :goto_1eb
    aget v4, v2, v6

    if-ge v0, v4, :cond_1fb

    .line 191
    iget-object v4, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v4}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1eb

    .line 193
    :cond_1fb
    const-string v0, "tagNames"

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 195
    :cond_202
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 73
    nop

    :pswitch_data_20c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_40
        :pswitch_58
        :pswitch_70
        :pswitch_88
        :pswitch_a8
        :pswitch_c6
        :pswitch_e4
        :pswitch_102
        :pswitch_121
        :pswitch_141
        :pswitch_15b
        :pswitch_18b
        :pswitch_1bd
        :pswitch_1db
    .end packed-switch
.end method

.method private e(Ljava/util/HashMap;)V
    .registers 9
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
    const/16 v6, 0xb

    const/4 v5, 0x6

    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 207
    :goto_6
    iget-object v0, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 208
    aget v1, v0, v3

    if-nez v1, :cond_11

    .line 310
    return-void

    .line 212
    :cond_11
    const/4 v1, 0x1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_16e

    .line 306
    :pswitch_17
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_6

    .line 214
    :pswitch_1f
    aget v1, v0, v3

    if-ne v1, v6, :cond_2f

    .line 215
    const-string v0, "guid"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 217
    :cond_2f
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_6

    .line 221
    :pswitch_37
    aget v1, v0, v3

    if-ne v1, v6, :cond_47

    .line 222
    const-string v0, "noteGuid"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 224
    :cond_47
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_6

    .line 228
    :pswitch_4f
    aget v1, v0, v3

    if-ne v1, v4, :cond_61

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 230
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/g;->f(Ljava/util/HashMap;)V

    .line 231
    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 233
    :cond_61
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_6

    .line 237
    :pswitch_69
    aget v1, v0, v3

    if-ne v1, v6, :cond_79

    .line 238
    const-string v0, "mime"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 240
    :cond_79
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_6

    .line 244
    :pswitch_81
    aget v1, v0, v3

    if-ne v1, v5, :cond_96

    .line 245
    const-string v0, "width"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 247
    :cond_96
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_6

    .line 251
    :pswitch_9f
    aget v1, v0, v3

    if-ne v1, v5, :cond_b4

    .line 252
    const-string v0, "height"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 254
    :cond_b4
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_6

    .line 258
    :pswitch_bd
    aget v1, v0, v3

    if-ne v1, v5, :cond_d2

    .line 259
    const-string v0, "duration"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 261
    :cond_d2
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_6

    .line 265
    :pswitch_db
    aget v1, v0, v3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f1

    .line 266
    const-string v0, "active"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 268
    :cond_f1
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_6

    .line 272
    :pswitch_fa
    aget v1, v0, v3

    if-ne v1, v4, :cond_10d

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/g;->f(Ljava/util/HashMap;)V

    .line 275
    const-string v1, "recognition"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 277
    :cond_10d
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_6

    .line 281
    :pswitch_116
    aget v1, v0, v3

    if-ne v1, v4, :cond_129

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 283
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/g;->g(Ljava/util/HashMap;)V

    .line 284
    const-string v1, "attributes"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 286
    :cond_129
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_6

    .line 290
    :pswitch_132
    aget v1, v0, v3

    const/16 v2, 0x8

    if-ne v1, v2, :cond_149

    .line 291
    const-string v0, "updateSequenceNum"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 293
    :cond_149
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_6

    .line 297
    :pswitch_152
    aget v1, v0, v3

    if-ne v1, v4, :cond_165

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 299
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/g;->f(Ljava/util/HashMap;)V

    .line 300
    const-string v1, "alternateData"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 302
    :cond_165
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_6

    .line 212
    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_37
        :pswitch_4f
        :pswitch_69
        :pswitch_81
        :pswitch_9f
        :pswitch_bd
        :pswitch_db
        :pswitch_fa
        :pswitch_17
        :pswitch_116
        :pswitch_132
        :pswitch_152
    .end packed-switch
.end method

.method private f(Ljava/util/HashMap;)V
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
    const/16 v4, 0xb

    const/4 v3, 0x0

    .line 314
    :goto_3
    iget-object v0, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 315
    aget v1, v0, v3

    if-nez v1, :cond_e

    .line 346
    return-void

    .line 319
    :cond_e
    const/4 v1, 0x1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_6a

    .line 342
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 321
    :pswitch_1c
    aget v1, v0, v3

    if-ne v1, v4, :cond_2c

    .line 322
    const-string v0, "bodyHash"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->h()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 324
    :cond_2c
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 328
    :pswitch_34
    aget v1, v0, v3

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4a

    .line 329
    const-string v0, "size"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 331
    :cond_4a
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 335
    :pswitch_52
    aget v1, v0, v3

    if-ne v1, v4, :cond_62

    .line 336
    const-string v0, "body"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->h()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 338
    :cond_62
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 319
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_34
        :pswitch_52
    .end packed-switch
.end method

.method private g(Ljava/util/HashMap;)V
    .registers 10
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
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 350
    :goto_5
    iget-object v0, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 351
    aget v1, v0, v4

    if-nez v1, :cond_10

    .line 448
    return-void

    .line 355
    :cond_10
    const/4 v1, 0x1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_16e

    .line 444
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_5

    .line 357
    :pswitch_1e
    aget v1, v0, v4

    if-ne v1, v5, :cond_2e

    .line 358
    const-string v0, "sourceURL"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 360
    :cond_2e
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_5

    .line 364
    :pswitch_36
    aget v1, v0, v4

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4c

    .line 365
    const-string v0, "timestamp"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 367
    :cond_4c
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_5

    .line 371
    :pswitch_54
    aget v1, v0, v4

    if-ne v1, v6, :cond_68

    .line 372
    const-string v0, "latitude"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 374
    :cond_68
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_5

    .line 378
    :pswitch_70
    aget v1, v0, v4

    if-ne v1, v6, :cond_84

    .line 379
    const-string v0, "longitude"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 381
    :cond_84
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_5

    .line 385
    :pswitch_8d
    aget v1, v0, v4

    if-ne v1, v6, :cond_a2

    .line 386
    const-string v0, "altitude"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 388
    :cond_a2
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_5

    .line 392
    :pswitch_ab
    aget v1, v0, v4

    if-ne v1, v5, :cond_bc

    .line 393
    const-string v0, "cameraMake"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 395
    :cond_bc
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_5

    .line 399
    :pswitch_c5
    aget v1, v0, v4

    if-ne v1, v5, :cond_d6

    .line 400
    const-string v0, "cameraModel"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 402
    :cond_d6
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_5

    .line 406
    :pswitch_df
    aget v1, v0, v4

    if-ne v1, v7, :cond_f4

    .line 407
    const-string v0, "clientWillIndex"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 409
    :cond_f4
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_5

    .line 413
    :pswitch_fd
    aget v1, v0, v4

    if-ne v1, v5, :cond_10e

    .line 414
    const-string v0, "recoType"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 416
    :cond_10e
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_5

    .line 420
    :pswitch_117
    aget v1, v0, v4

    if-ne v1, v5, :cond_128

    .line 421
    const-string v0, "fileName"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 423
    :cond_128
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_5

    .line 427
    :pswitch_131
    aget v1, v0, v4

    if-ne v1, v7, :cond_146

    .line 428
    const-string v0, "attachment"

    iget-object v1, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 430
    :cond_146
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_5

    .line 434
    :pswitch_14f
    aget v1, v0, v4

    const/16 v2, 0xc

    if-ne v1, v2, :cond_164

    .line 435
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 437
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/g;->i(Ljava/util/HashMap;)V

    .line 438
    const-string v1, "attachment"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 440
    :cond_164
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_5

    .line 355
    nop

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_36
        :pswitch_54
        :pswitch_70
        :pswitch_8d
        :pswitch_ab
        :pswitch_c5
        :pswitch_df
        :pswitch_fd
        :pswitch_117
        :pswitch_131
        :pswitch_14f
    .end packed-switch
.end method

.method private h(Ljava/util/HashMap;)V
    .registers 12
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
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/16 v7, 0xa

    const/16 v6, 0xb

    const/4 v1, 0x0

    .line 452
    :goto_8
    iget-object v0, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 453
    aget v2, v0, v1

    if-nez v2, :cond_13

    .line 603
    return-void

    .line 457
    :cond_13
    const/4 v2, 0x1

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_254

    .line 599
    :pswitch_19
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 459
    :pswitch_21
    aget v2, v0, v1

    if-ne v2, v7, :cond_35

    .line 460
    const-string v0, "subjectDate"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 462
    :cond_35
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 466
    :pswitch_3d
    aget v2, v0, v1

    if-ne v2, v8, :cond_51

    .line 467
    const-string v0, "latitude"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 469
    :cond_51
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 473
    :pswitch_59
    aget v2, v0, v1

    if-ne v2, v8, :cond_6d

    .line 474
    const-string v0, "longitude"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 476
    :cond_6d
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 480
    :pswitch_75
    aget v2, v0, v1

    if-ne v2, v8, :cond_89

    .line 481
    const-string v0, "altitude"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 483
    :cond_89
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 487
    :pswitch_92
    aget v2, v0, v1

    if-ne v2, v6, :cond_a3

    .line 488
    const-string v0, "author"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 490
    :cond_a3
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 494
    :pswitch_ac
    aget v2, v0, v1

    if-ne v2, v6, :cond_bd

    .line 495
    const-string v0, "source"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 497
    :cond_bd
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 501
    :pswitch_c6
    aget v2, v0, v1

    if-ne v2, v6, :cond_d7

    .line 502
    const-string v0, "sourceURL"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 504
    :cond_d7
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 508
    :pswitch_e0
    aget v2, v0, v1

    if-ne v2, v6, :cond_f1

    .line 509
    const-string v0, "sourceApplication"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 511
    :cond_f1
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 515
    :pswitch_fa
    aget v2, v0, v1

    if-ne v2, v7, :cond_10f

    .line 516
    const-string v0, "shareDate"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 518
    :cond_10f
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 522
    :pswitch_118
    aget v2, v0, v1

    if-ne v2, v7, :cond_12d

    .line 523
    const-string v0, "reminderOrder"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 525
    :cond_12d
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 529
    :pswitch_136
    aget v2, v0, v1

    if-ne v2, v7, :cond_14b

    .line 530
    const-string v0, "reminderDoneTime"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 532
    :cond_14b
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 536
    :pswitch_154
    aget v2, v0, v1

    if-ne v2, v7, :cond_169

    .line 537
    const-string v0, "reminderTime"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 539
    :cond_169
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 543
    :pswitch_172
    aget v2, v0, v1

    if-ne v2, v6, :cond_183

    .line 544
    const-string v0, "placeName"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 546
    :cond_183
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 550
    :pswitch_18c
    aget v2, v0, v1

    if-ne v2, v6, :cond_19d

    .line 551
    const-string v0, "contentClass"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 553
    :cond_19d
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 557
    :pswitch_1a6
    aget v2, v0, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1bb

    .line 558
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 559
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/g;->i(Ljava/util/HashMap;)V

    .line 560
    const-string v2, "applicationData"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 562
    :cond_1bb
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 566
    :pswitch_1c4
    aget v2, v0, v1

    if-ne v2, v6, :cond_1d5

    .line 567
    const-string v0, "lastEditedBy"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 569
    :cond_1d5
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 573
    :pswitch_1de
    aget v2, v0, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_20e

    .line 574
    iget-object v0, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->f()[I

    move-result-object v2

    .line 575
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 576
    :goto_1f0
    const/4 v4, 0x2

    aget v4, v2, v4

    if-ge v0, v4, :cond_207

    .line 577
    iget-object v4, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v4}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v5}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f0

    .line 579
    :cond_207
    const-string v0, "classifications"

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 581
    :cond_20e
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 585
    :pswitch_217
    aget v2, v0, v1

    if-ne v2, v9, :cond_22c

    .line 586
    const-string v0, "creatorId"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 588
    :cond_22c
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 592
    :pswitch_235
    aget v2, v0, v1

    if-ne v2, v9, :cond_24a

    .line 593
    const-string v0, "lastEditorId"

    iget-object v2, p0, Lcn/sharesdk/evernote/g;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 595
    :cond_24a
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 457
    nop

    :pswitch_data_254
    .packed-switch 0x1
        :pswitch_21
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_3d
        :pswitch_59
        :pswitch_75
        :pswitch_92
        :pswitch_ac
        :pswitch_c6
        :pswitch_e0
        :pswitch_fa
        :pswitch_118
        :pswitch_136
        :pswitch_154
        :pswitch_172
        :pswitch_18c
        :pswitch_1a6
        :pswitch_1c4
        :pswitch_19
        :pswitch_1de
        :pswitch_217
        :pswitch_235
    .end packed-switch
.end method

.method private i(Ljava/util/HashMap;)V
    .registers 9
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
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 607
    :goto_2
    iget-object v0, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 608
    aget v2, v0, v1

    if-nez v2, :cond_d

    .line 642
    return-void

    .line 612
    :cond_d
    aget v2, v0, v6

    packed-switch v2, :pswitch_data_82

    .line 638
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_2

    .line 614
    :pswitch_1a
    aget v2, v0, v1

    const/16 v3, 0xe

    if-ne v2, v3, :cond_42

    .line 615
    iget-object v0, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->e()[I

    move-result-object v2

    .line 616
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 617
    :goto_2c
    aget v4, v2, v6

    if-ge v0, v4, :cond_3c

    .line 618
    iget-object v4, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v4}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 620
    :cond_3c
    const-string v0, "keysOnly"

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 622
    :cond_42
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_2

    .line 626
    :pswitch_4a
    aget v2, v0, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_79

    .line 627
    iget-object v0, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->f()[I

    move-result-object v2

    .line 628
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 629
    :goto_5c
    const/4 v4, 0x2

    aget v4, v2, v4

    if-ge v0, v4, :cond_73

    .line 630
    iget-object v4, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v4}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v5}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 632
    :cond_73
    const-string v0, "fullMap"

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 634
    :cond_79
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_2

    .line 612
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_4a
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .registers 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    :goto_8
    iget-object v1, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v1

    .line 16
    aget v2, v1, v3

    if-nez v2, :cond_13

    .line 59
    return-object v0

    .line 20
    :cond_13
    const/4 v2, 0x1

    aget v2, v1, v2

    packed-switch v2, :pswitch_data_f0

    .line 55
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 22
    :pswitch_21
    aget v2, v1, v3

    if-ne v2, v4, :cond_29

    .line 23
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/g;->a(Ljava/util/HashMap;)V

    goto :goto_8

    .line 25
    :cond_29
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 29
    :pswitch_31
    aget v2, v1, v3

    if-ne v2, v4, :cond_6c

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/g;->b(Ljava/util/HashMap;)V

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_6c
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 39
    :pswitch_74
    aget v2, v1, v3

    if-ne v2, v4, :cond_af

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/g;->c(Ljava/util/HashMap;)V

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_af
    iget-object v2, p0, Lcn/sharesdk/evernote/g;->a:Lcn/sharesdk/evernote/b;

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 49
    :pswitch_b8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/g;->d(Ljava/util/HashMap;)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "identify"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    nop

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_31
        :pswitch_74
        :pswitch_b8
    .end packed-switch
.end method
