.class public Lcn/sharesdk/evernote/i;
.super Lcn/sharesdk/evernote/j;
.source "NotebookParser.java"


# direct methods
.method public constructor <init>(Lcn/sharesdk/evernote/b;)V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcn/sharesdk/evernote/j;-><init>(Lcn/sharesdk/evernote/b;)V

    .line 10
    return-void
.end method

.method private b(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 238
    packed-switch p1, :pswitch_data_14

    .line 245
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 239
    :pswitch_5
    const-string v0, "CREATED"

    goto :goto_4

    .line 240
    :pswitch_8
    const-string v0, "UPDATED"

    goto :goto_4

    .line 241
    :pswitch_b
    const-string v0, "RELEVANCE"

    goto :goto_4

    .line 242
    :pswitch_e
    const-string v0, "UPDATE_SEQUENCE_NUMBER"

    goto :goto_4

    .line 243
    :pswitch_11
    const-string v0, "TITLE"

    goto :goto_4

    .line 238
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private c(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 360
    packed-switch p1, :pswitch_data_18

    .line 368
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 361
    :pswitch_5
    const-string v0, "READ_NOTEBOOK"

    goto :goto_4

    .line 362
    :pswitch_8
    const-string v0, "MODIFY_NOTEBOOK_PLUS_ACTIVITY"

    goto :goto_4

    .line 363
    :pswitch_b
    const-string v0, "READ_NOTEBOOK_PLUS_ACTIVITY"

    goto :goto_4

    .line 364
    :pswitch_e
    const-string v0, "GROUP"

    goto :goto_4

    .line 365
    :pswitch_11
    const-string v0, "FULL_ACCESS"

    goto :goto_4

    .line 366
    :pswitch_14
    const-string v0, "BUSINESS_FULL_ACCESS"

    goto :goto_4

    .line 360
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method private d(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 600
    packed-switch p1, :pswitch_data_c

    .line 604
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 601
    :pswitch_5
    const-string v0, "ONLY_JOINED_OR_PREVIEW"

    goto :goto_4

    .line 602
    :pswitch_8
    const-string v0, "NO_SHARED_NOTEBOOKS"

    goto :goto_4

    .line 600
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method private e(Ljava/util/HashMap;)V
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

    .line 195
    :goto_3
    iget-object v0, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 196
    aget v1, v0, v3

    if-nez v1, :cond_e

    .line 235
    return-void

    .line 200
    :cond_e
    const/4 v1, 0x1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_88

    .line 231
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 202
    :pswitch_1c
    aget v1, v0, v3

    if-ne v1, v4, :cond_2c

    .line 203
    const-string v0, "uri"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 205
    :cond_2c
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 209
    :pswitch_34
    aget v1, v0, v3

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4a

    .line 210
    iget-object v0, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 211
    const-string v1, "order"

    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/i;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 213
    :cond_4a
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 217
    :pswitch_52
    aget v1, v0, v3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_67

    .line 218
    const-string v0, "ascending"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 220
    :cond_67
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_3

    .line 224
    :pswitch_6f
    aget v1, v0, v3

    if-ne v1, v4, :cond_7f

    .line 225
    const-string v0, "publicDescription"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 227
    :cond_7f
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_3

    .line 200
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_34
        :pswitch_52
        :pswitch_6f
    .end packed-switch
.end method

.method private f(Ljava/util/HashMap;)V
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
    const/16 v8, 0x8

    const/16 v7, 0xa

    const/4 v6, 0x2

    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 251
    :goto_8
    iget-object v0, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 252
    aget v1, v0, v4

    if-nez v1, :cond_13

    .line 357
    return-void

    .line 256
    :cond_13
    const/4 v1, 0x1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_190

    .line 353
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 258
    :pswitch_21
    aget v1, v0, v4

    if-ne v1, v7, :cond_35

    .line 259
    const-string v0, "id"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 261
    :cond_35
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 265
    :pswitch_3d
    aget v1, v0, v4

    if-ne v1, v8, :cond_51

    .line 266
    const-string v0, "userId"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 268
    :cond_51
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 272
    :pswitch_59
    aget v1, v0, v4

    if-ne v1, v5, :cond_69

    .line 273
    const-string v0, "notebookGuid"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 275
    :cond_69
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 279
    :pswitch_71
    aget v1, v0, v4

    if-ne v1, v5, :cond_81

    .line 280
    const-string v0, "email"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 282
    :cond_81
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 286
    :pswitch_89
    aget v1, v0, v4

    if-ne v1, v6, :cond_9e

    .line 287
    const-string v0, "notebookModifiable"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 289
    :cond_9e
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 293
    :pswitch_a7
    aget v1, v0, v4

    if-ne v1, v6, :cond_bc

    .line 294
    const-string v0, "requireLogin"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 296
    :cond_bc
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 300
    :pswitch_c5
    aget v1, v0, v4

    if-ne v1, v7, :cond_da

    .line 301
    const-string v0, "serviceCreated"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 303
    :cond_da
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 307
    :pswitch_e3
    aget v1, v0, v4

    if-ne v1, v7, :cond_f8

    .line 308
    const-string v0, "serviceUpdated"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 310
    :cond_f8
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 314
    :pswitch_101
    aget v1, v0, v4

    if-ne v1, v5, :cond_112

    .line 315
    const-string v0, "shareKey"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 317
    :cond_112
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 321
    :pswitch_11b
    aget v1, v0, v4

    if-ne v1, v5, :cond_12c

    .line 322
    const-string v0, "username"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 324
    :cond_12c
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 328
    :pswitch_135
    aget v1, v0, v4

    if-ne v1, v8, :cond_14a

    .line 329
    iget-object v0, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 330
    const-string v1, "privilege"

    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/i;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 332
    :cond_14a
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 336
    :pswitch_153
    aget v1, v0, v4

    if-ne v1, v6, :cond_168

    .line 337
    const-string v0, "allowPreview"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 339
    :cond_168
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 343
    :pswitch_171
    aget v1, v0, v4

    const/16 v2, 0xc

    if-ne v1, v2, :cond_186

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 346
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/i;->g(Ljava/util/HashMap;)V

    .line 347
    const-string v1, "recipientSettings"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 349
    :cond_186
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 256
    nop

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_21
        :pswitch_3d
        :pswitch_59
        :pswitch_71
        :pswitch_89
        :pswitch_a7
        :pswitch_c5
        :pswitch_101
        :pswitch_11b
        :pswitch_e3
        :pswitch_135
        :pswitch_153
        :pswitch_171
    .end packed-switch
.end method

.method private g(Ljava/util/HashMap;)V
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
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 374
    :goto_2
    iget-object v0, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 375
    aget v1, v0, v2

    if-nez v1, :cond_d

    .line 399
    return-void

    .line 379
    :cond_d
    const/4 v1, 0x1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_54

    .line 395
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_2

    .line 381
    :pswitch_1b
    aget v1, v0, v2

    if-ne v1, v3, :cond_2f

    .line 382
    const-string v0, "reminderNotifyEmail"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 384
    :cond_2f
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_2

    .line 388
    :pswitch_37
    aget v1, v0, v2

    if-ne v1, v3, :cond_4b

    .line 389
    const-string v0, "reminderNotifyInApp"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 391
    :cond_4b
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_2

    .line 379
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_37
    .end packed-switch
.end method

.method private h(Ljava/util/HashMap;)V
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

    .line 404
    :goto_1
    iget-object v0, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 405
    aget v1, v0, v3

    if-nez v1, :cond_c

    .line 437
    return-void

    .line 409
    :cond_c
    const/4 v1, 0x1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_70

    .line 433
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_1

    .line 411
    :pswitch_1a
    aget v1, v0, v3

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2c

    .line 412
    const-string v0, "notebookDescription"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 414
    :cond_2c
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_1

    .line 418
    :pswitch_34
    aget v1, v0, v3

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4a

    .line 419
    iget-object v0, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 420
    const-string v1, "privilege"

    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/i;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 422
    :cond_4a
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_1

    .line 426
    :pswitch_52
    aget v1, v0, v3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_67

    .line 427
    const-string v0, "recommended"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 429
    :cond_67
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_1

    .line 409
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_34
        :pswitch_52
    .end packed-switch
.end method

.method private i(Ljava/util/HashMap;)V
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

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 442
    :goto_4
    iget-object v0, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 443
    aget v1, v0, v2

    if-nez v1, :cond_f

    .line 597
    return-void

    .line 447
    :cond_f
    const/4 v1, 0x1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_26e

    .line 593
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_4

    .line 449
    :pswitch_1d
    aget v1, v0, v2

    if-ne v1, v3, :cond_31

    .line 450
    const-string v0, "noReadNotes"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 452
    :cond_31
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_4

    .line 456
    :pswitch_39
    aget v1, v0, v2

    if-ne v1, v3, :cond_4d

    .line 457
    const-string v0, "noCreateNotes"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 459
    :cond_4d
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_4

    .line 463
    :pswitch_55
    aget v1, v0, v2

    if-ne v1, v3, :cond_69

    .line 464
    const-string v0, "noUpdateNotes"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 466
    :cond_69
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_4

    .line 470
    :pswitch_71
    aget v1, v0, v2

    if-ne v1, v3, :cond_85

    .line 471
    const-string v0, "noExpungeNotes"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 473
    :cond_85
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 477
    :pswitch_8e
    aget v1, v0, v2

    if-ne v1, v3, :cond_a3

    .line 478
    const-string v0, "noShareNotes"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 480
    :cond_a3
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 484
    :pswitch_ac
    aget v1, v0, v2

    if-ne v1, v3, :cond_c1

    .line 485
    const-string v0, "noEmailNotes"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 487
    :cond_c1
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 491
    :pswitch_ca
    aget v1, v0, v2

    if-ne v1, v3, :cond_df

    .line 492
    const-string v0, "noSendMessageToRecipients"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 494
    :cond_df
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 498
    :pswitch_e8
    aget v1, v0, v2

    if-ne v1, v3, :cond_fd

    .line 499
    const-string v0, "noUpdateNotebook"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 501
    :cond_fd
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 505
    :pswitch_106
    aget v1, v0, v2

    if-ne v1, v3, :cond_11b

    .line 506
    const-string v0, "noExpungeNotebook"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 508
    :cond_11b
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 512
    :pswitch_124
    aget v1, v0, v2

    if-ne v1, v3, :cond_139

    .line 513
    const-string v0, "noSetDefaultNotebook"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 515
    :cond_139
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 519
    :pswitch_142
    aget v1, v0, v2

    if-ne v1, v3, :cond_157

    .line 520
    const-string v0, "noSetNotebookStack"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 522
    :cond_157
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 526
    :pswitch_160
    aget v1, v0, v2

    if-ne v1, v3, :cond_175

    .line 527
    const-string v0, "noPublishToPublic"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 529
    :cond_175
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 533
    :pswitch_17e
    aget v1, v0, v2

    if-ne v1, v3, :cond_193

    .line 534
    const-string v0, "noPublishToBusinessLibrary"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 536
    :cond_193
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 540
    :pswitch_19c
    aget v1, v0, v2

    if-ne v1, v3, :cond_1b1

    .line 541
    const-string v0, "noCreateTags"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 543
    :cond_1b1
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 547
    :pswitch_1ba
    aget v1, v0, v2

    if-ne v1, v3, :cond_1cf

    .line 548
    const-string v0, "noUpdateTags"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 550
    :cond_1cf
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 554
    :pswitch_1d8
    aget v1, v0, v2

    if-ne v1, v3, :cond_1ed

    .line 555
    const-string v0, "noExpungeTags"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 557
    :cond_1ed
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 561
    :pswitch_1f6
    aget v1, v0, v2

    if-ne v1, v3, :cond_20b

    .line 562
    const-string v0, "noSetParentTag"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 564
    :cond_20b
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 568
    :pswitch_214
    aget v1, v0, v2

    if-ne v1, v3, :cond_229

    .line 569
    const-string v0, "noCreateSharedNotebooks"

    iget-object v1, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 571
    :cond_229
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 575
    :pswitch_232
    aget v1, v0, v2

    if-ne v1, v4, :cond_247

    .line 576
    iget-object v0, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 577
    const-string v1, "updateWhichSharedNotebookRestrictions"

    .line 578
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/i;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 580
    :cond_247
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 584
    :pswitch_250
    aget v1, v0, v2

    if-ne v1, v4, :cond_265

    .line 585
    iget-object v0, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 586
    const-string v1, "expungeWhichSharedNotebookRestrictions"

    .line 587
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/i;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 589
    :cond_265
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 447
    :pswitch_data_26e
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_39
        :pswitch_55
        :pswitch_71
        :pswitch_8e
        :pswitch_ac
        :pswitch_ca
        :pswitch_e8
        :pswitch_106
        :pswitch_124
        :pswitch_142
        :pswitch_160
        :pswitch_17e
        :pswitch_19c
        :pswitch_1ba
        :pswitch_1d8
        :pswitch_1f6
        :pswitch_214
        :pswitch_232
        :pswitch_250
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
    iget-object v1, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v1

    .line 16
    aget v2, v1, v3

    if-nez v2, :cond_13

    .line 53
    return-object v0

    .line 20
    :cond_13
    const/4 v2, 0x1

    aget v2, v1, v2

    packed-switch v2, :pswitch_data_b8

    .line 49
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 22
    :pswitch_21
    aget v2, v1, v3

    if-ne v2, v4, :cond_29

    .line 23
    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/i;->a(Ljava/util/HashMap;)V

    goto :goto_8

    .line 25
    :cond_29
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

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
    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/i;->b(Ljava/util/HashMap;)V

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
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

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
    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/i;->c(Ljava/util/HashMap;)V

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
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_8

    .line 20
    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_21
        :pswitch_31
        :pswitch_74
    .end packed-switch
.end method

.method public a(Ljava/util/HashMap;)V
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
    const/4 v9, 0x2

    const/16 v8, 0xb

    const/4 v7, 0x1

    const/16 v6, 0xc

    const/4 v1, 0x0

    .line 58
    :goto_7
    iget-object v0, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 59
    aget v2, v0, v1

    if-nez v2, :cond_12

    .line 190
    return-void

    .line 63
    :cond_12
    aget v2, v0, v7

    packed-switch v2, :pswitch_data_1e4

    .line 186
    :pswitch_17
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_7

    .line 65
    :pswitch_1f
    aget v2, v0, v1

    if-ne v2, v8, :cond_2f

    .line 66
    const-string v0, "guid"

    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 68
    :cond_2f
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_7

    .line 72
    :pswitch_37
    aget v2, v0, v1

    if-ne v2, v8, :cond_47

    .line 73
    const-string v0, "name"

    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 75
    :cond_47
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_7

    .line 79
    :pswitch_4f
    aget v2, v0, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_65

    .line 80
    const-string v0, "updateSequenceNum"

    iget-object v2, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 82
    :cond_65
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_7

    .line 86
    :pswitch_6d
    aget v2, v0, v1

    if-ne v2, v9, :cond_81

    .line 87
    const-string v0, "defaultNotebook"

    iget-object v2, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 89
    :cond_81
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 93
    :pswitch_8a
    aget v2, v0, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a1

    .line 94
    const-string v0, "serviceCreated"

    iget-object v2, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 96
    :cond_a1
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 100
    :pswitch_aa
    aget v2, v0, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_c1

    .line 101
    const-string v0, "serviceUpdated"

    iget-object v2, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 103
    :cond_c1
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 107
    :pswitch_ca
    aget v2, v0, v1

    if-ne v2, v6, :cond_dd

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/i;->e(Ljava/util/HashMap;)V

    .line 110
    const-string v2, "publishing"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 112
    :cond_dd
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 116
    :pswitch_e6
    aget v2, v0, v1

    if-ne v2, v9, :cond_fb

    .line 117
    const-string v0, "published"

    iget-object v2, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 119
    :cond_fb
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 123
    :pswitch_104
    aget v2, v0, v1

    if-ne v2, v8, :cond_115

    .line 124
    const-string v0, "stack"

    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 126
    :cond_115
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 130
    :pswitch_11e
    aget v2, v0, v1

    const/16 v3, 0xf

    if-ne v2, v3, :cond_14b

    .line 131
    iget-object v0, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->g()[I

    move-result-object v2

    .line 132
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 133
    :goto_130
    aget v4, v2, v7

    if-ge v0, v4, :cond_144

    .line 134
    iget-object v4, p0, Lcn/sharesdk/evernote/i;->b:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_130

    .line 136
    :cond_144
    const-string v0, "sharedNotebookIds"

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 138
    :cond_14b
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 142
    :pswitch_154
    aget v2, v0, v1

    const/16 v3, 0xf

    if-ne v2, v3, :cond_17f

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v0, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->g()[I

    move-result-object v3

    move v0, v1

    .line 146
    :goto_166
    aget v4, v3, v7

    if-ge v0, v4, :cond_178

    .line 147
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 149
    invoke-direct {p0, v4}, Lcn/sharesdk/evernote/i;->f(Ljava/util/HashMap;)V

    .line 150
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_166

    .line 152
    :cond_178
    const-string v0, "sharedNotebooks"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 154
    :cond_17f
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 158
    :pswitch_188
    aget v2, v0, v1

    if-ne v2, v6, :cond_19b

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/i;->h(Ljava/util/HashMap;)V

    .line 161
    const-string v2, "businessNotebook"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 163
    :cond_19b
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 167
    :pswitch_1a4
    aget v2, v0, v1

    if-ne v2, v6, :cond_1be

    .line 168
    new-instance v0, Lcn/sharesdk/evernote/l;

    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    invoke-direct {v0, v2}, Lcn/sharesdk/evernote/l;-><init>(Lcn/sharesdk/evernote/b;)V

    .line 169
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 170
    invoke-virtual {v0, v2}, Lcn/sharesdk/evernote/l;->a(Ljava/util/HashMap;)V

    .line 171
    const-string v0, "contact"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 173
    :cond_1be
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 177
    :pswitch_1c7
    aget v2, v0, v1

    if-ne v2, v6, :cond_1da

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/i;->i(Ljava/util/HashMap;)V

    .line 180
    const-string v2, "restrictions"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 182
    :cond_1da
    iget-object v2, p0, Lcn/sharesdk/evernote/i;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 63
    nop

    :pswitch_data_1e4
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_37
        :pswitch_17
        :pswitch_17
        :pswitch_4f
        :pswitch_6d
        :pswitch_8a
        :pswitch_aa
        :pswitch_17
        :pswitch_ca
        :pswitch_e6
        :pswitch_104
        :pswitch_11e
        :pswitch_154
        :pswitch_188
        :pswitch_1a4
        :pswitch_1c7
    .end packed-switch
.end method
