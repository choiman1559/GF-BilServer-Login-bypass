.class public Lcn/sharesdk/evernote/l;
.super Lcn/sharesdk/evernote/j;
.source "UserParser.java"


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
    .line 177
    packed-switch p1, :pswitch_data_14

    .line 184
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 178
    :pswitch_5
    const-string v0, "NORMAL"

    goto :goto_4

    .line 179
    :pswitch_8
    const-string v0, "PREMIUM"

    goto :goto_4

    .line 180
    :pswitch_b
    const-string v0, "MANAGER"

    goto :goto_4

    .line 181
    :pswitch_e
    const-string v0, "SUPPORT"

    goto :goto_4

    .line 182
    :pswitch_11
    const-string v0, "ADMIN"

    goto :goto_4

    .line 177
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private c(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 588
    packed-switch p1, :pswitch_data_18

    .line 596
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 589
    :pswitch_5
    const-string v0, "NONE"

    goto :goto_4

    .line 590
    :pswitch_8
    const-string v0, "PENDING"

    goto :goto_4

    .line 591
    :pswitch_b
    const-string v0, "ACTIVE"

    goto :goto_4

    .line 592
    :pswitch_e
    const-string v0, "FAILED"

    goto :goto_4

    .line 593
    :pswitch_11
    const-string v0, "CANCELLATION_PENDING"

    goto :goto_4

    .line 594
    :pswitch_14
    const-string v0, "CANCELED"

    goto :goto_4

    .line 588
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
    const-string v0, "ADMIN"

    goto :goto_4

    .line 602
    :pswitch_8
    const-string v0, "NORMAL"

    goto :goto_4

    .line 600
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method private e(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 695
    packed-switch p1, :pswitch_data_e

    .line 700
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 696
    :pswitch_5
    const-string v0, "GROUP_MEMBER"

    goto :goto_4

    .line 697
    :pswitch_8
    const-string v0, "GROUP_ADMIN"

    goto :goto_4

    .line 698
    :pswitch_b
    const-string v0, "GROUP_OWNER"

    goto :goto_4

    .line 695
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private e(Ljava/util/HashMap;)V
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
    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xb

    const/4 v1, 0x0

    .line 190
    :goto_7
    iget-object v0, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 191
    aget v2, v0, v1

    if-nez v2, :cond_12

    .line 421
    return-void

    .line 194
    :cond_12
    aget v2, v0, v6

    packed-switch v2, :pswitch_data_3a2

    .line 417
    :pswitch_17
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_7

    .line 196
    :pswitch_1f
    aget v2, v0, v1

    if-ne v2, v5, :cond_2f

    .line 197
    const-string v0, "defaultLocationName"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 199
    :cond_2f
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_7

    .line 203
    :pswitch_37
    aget v2, v0, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4c

    .line 204
    const-string v0, "defaultLatitude"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 206
    :cond_4c
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_7

    .line 210
    :pswitch_54
    aget v2, v0, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_69

    .line 211
    const-string v0, "defaultLongitude"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 213
    :cond_69
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_7

    .line 217
    :pswitch_71
    aget v2, v0, v1

    if-ne v2, v7, :cond_85

    .line 218
    const-string v0, "preactivation"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 220
    :cond_85
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 224
    :pswitch_8e
    aget v2, v0, v1

    const/16 v3, 0xf

    if-ne v2, v3, :cond_b9

    .line 225
    iget-object v0, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->g()[I

    move-result-object v2

    .line 226
    new-instance v3, Ljava/util/ArrayList;

    aget v0, v2, v6

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 227
    :goto_a2
    aget v4, v2, v6

    if-ge v0, v4, :cond_b2

    .line 228
    iget-object v4, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v4}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    .line 230
    :cond_b2
    const-string v0, "viewedPromotions"

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 232
    :cond_b9
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 236
    :pswitch_c2
    aget v2, v0, v1

    if-ne v2, v5, :cond_d3

    .line 237
    const-string v0, "incomingEmailAddress"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 239
    :cond_d3
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 243
    :pswitch_dc
    aget v2, v0, v1

    const/16 v3, 0xf

    if-ne v2, v3, :cond_107

    .line 244
    iget-object v0, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->g()[I

    move-result-object v2

    .line 245
    new-instance v3, Ljava/util/ArrayList;

    aget v0, v2, v6

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 247
    :goto_f0
    aget v4, v2, v6

    if-ge v0, v4, :cond_100

    .line 248
    iget-object v4, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v4}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_f0

    .line 250
    :cond_100
    const-string v0, "recentMailedAddresses"

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 252
    :cond_107
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 256
    :pswitch_110
    aget v2, v0, v1

    if-ne v2, v5, :cond_121

    .line 257
    const-string v0, "comments"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 259
    :cond_121
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 263
    :pswitch_12a
    aget v2, v0, v1

    if-ne v2, v8, :cond_13f

    .line 264
    const-string v0, "dateAgreedToTermsOfService"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 266
    :cond_13f
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 270
    :pswitch_148
    aget v2, v0, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_15f

    .line 271
    const-string v0, "maxReferrals"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 273
    :cond_15f
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 277
    :pswitch_168
    aget v2, v0, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_17f

    .line 278
    const-string v0, "referralCount"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 280
    :cond_17f
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 284
    :pswitch_188
    aget v2, v0, v1

    if-ne v2, v5, :cond_199

    .line 285
    const-string v0, "refererCode"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 287
    :cond_199
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 291
    :pswitch_1a2
    aget v2, v0, v1

    if-ne v2, v8, :cond_1b7

    .line 292
    const-string v0, "sentEmailDate"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 294
    :cond_1b7
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 298
    :pswitch_1c0
    aget v2, v0, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1d7

    .line 299
    const-string v0, "sentEmailCount"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 301
    :cond_1d7
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 305
    :pswitch_1e0
    aget v2, v0, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1f7

    .line 306
    const-string v0, "dailyEmailLimit"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 308
    :cond_1f7
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 312
    :pswitch_200
    aget v2, v0, v1

    if-ne v2, v8, :cond_215

    .line 313
    const-string v0, "emailOptOutDate"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 315
    :cond_215
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 319
    :pswitch_21e
    aget v2, v0, v1

    if-ne v2, v8, :cond_233

    .line 320
    const-string v0, "partnerEmailOptInDate"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 322
    :cond_233
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 326
    :pswitch_23c
    aget v2, v0, v1

    if-ne v2, v5, :cond_24d

    .line 327
    const-string v0, "preferredLanguage"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 329
    :cond_24d
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 333
    :pswitch_256
    aget v2, v0, v1

    if-ne v2, v5, :cond_267

    .line 334
    const-string v0, "preferredCountry"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 336
    :cond_267
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 340
    :pswitch_270
    aget v2, v0, v1

    if-ne v2, v7, :cond_285

    .line 341
    const-string v0, "clipFullPage"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 343
    :cond_285
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 347
    :pswitch_28e
    aget v2, v0, v1

    if-ne v2, v5, :cond_29f

    .line 348
    const-string v0, "twitterUserName"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 350
    :cond_29f
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 354
    :pswitch_2a8
    aget v2, v0, v1

    if-ne v2, v5, :cond_2b9

    .line 355
    const-string v0, "twitterId"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 357
    :cond_2b9
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 361
    :pswitch_2c2
    aget v2, v0, v1

    if-ne v2, v5, :cond_2d3

    .line 362
    const-string v0, "groupName"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 364
    :cond_2d3
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 368
    :pswitch_2dc
    aget v2, v0, v1

    if-ne v2, v5, :cond_2ed

    .line 369
    const-string v0, "recognitionLanguage"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 371
    :cond_2ed
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 375
    :pswitch_2f6
    aget v2, v0, v1

    if-ne v2, v8, :cond_30b

    .line 376
    const-string v0, "customerProfileId"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 378
    :cond_30b
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 382
    :pswitch_314
    aget v2, v0, v1

    if-ne v2, v5, :cond_325

    .line 383
    const-string v0, "referralProof"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 385
    :cond_325
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 389
    :pswitch_32e
    aget v2, v0, v1

    if-ne v2, v7, :cond_343

    .line 390
    const-string v0, "educationalDiscount"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 392
    :cond_343
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 396
    :pswitch_34c
    aget v2, v0, v1

    if-ne v2, v5, :cond_35d

    .line 397
    const-string v0, "businessAddress"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 399
    :cond_35d
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 403
    :pswitch_366
    aget v2, v0, v1

    if-ne v2, v7, :cond_37b

    .line 404
    const-string v0, "hideSponsorBilling"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 406
    :cond_37b
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 410
    :pswitch_384
    aget v2, v0, v1

    if-ne v2, v7, :cond_399

    .line 411
    const-string v0, "taxExempt"

    iget-object v2, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 413
    :cond_399
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 194
    :pswitch_data_3a2
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_37
        :pswitch_54
        :pswitch_71
        :pswitch_8e
        :pswitch_c2
        :pswitch_dc
        :pswitch_17
        :pswitch_110
        :pswitch_17
        :pswitch_12a
        :pswitch_148
        :pswitch_168
        :pswitch_188
        :pswitch_1a2
        :pswitch_1c0
        :pswitch_1e0
        :pswitch_200
        :pswitch_21e
        :pswitch_23c
        :pswitch_256
        :pswitch_270
        :pswitch_28e
        :pswitch_2a8
        :pswitch_2c2
        :pswitch_2dc
        :pswitch_2f6
        :pswitch_314
        :pswitch_32e
        :pswitch_34c
        :pswitch_366
        :pswitch_384
    .end packed-switch
.end method

.method private f(Ljava/util/HashMap;)V
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
    const/16 v7, 0x8

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 426
    :goto_7
    iget-object v0, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 427
    aget v1, v0, v4

    if-nez v1, :cond_12

    .line 585
    return-void

    .line 430
    :cond_12
    const/4 v1, 0x1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_274

    .line 581
    :pswitch_18
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_7

    .line 432
    :pswitch_20
    aget v1, v0, v4

    if-ne v1, v5, :cond_34

    .line 433
    const-string v0, "uploadLimit"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 435
    :cond_34
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_7

    .line 439
    :pswitch_3c
    aget v1, v0, v4

    if-ne v1, v5, :cond_50

    .line 440
    const-string v0, "uploadLimitEnd"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 442
    :cond_50
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_7

    .line 446
    :pswitch_58
    aget v1, v0, v4

    if-ne v1, v5, :cond_6c

    .line 447
    const-string v0, "uploadLimitNextMonth"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 449
    :cond_6c
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_7

    .line 453
    :pswitch_74
    aget v1, v0, v4

    if-ne v1, v7, :cond_88

    .line 454
    iget-object v0, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 455
    const-string v1, "premiumServiceStatus"

    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/l;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 457
    :cond_88
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 461
    :pswitch_91
    aget v1, v0, v4

    if-ne v1, v6, :cond_a2

    .line 462
    const-string v0, "premiumOrderNumber"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 464
    :cond_a2
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 468
    :pswitch_ab
    aget v1, v0, v4

    if-ne v1, v6, :cond_bc

    .line 469
    const-string v0, "premiumCommerceService"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 471
    :cond_bc
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 475
    :pswitch_c5
    aget v1, v0, v4

    if-ne v1, v5, :cond_da

    .line 476
    const-string v0, "premiumServiceStart"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 478
    :cond_da
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 482
    :pswitch_e3
    aget v1, v0, v4

    if-ne v1, v6, :cond_f4

    .line 483
    const-string v0, "premiumServiceSKU"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 485
    :cond_f4
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 489
    :pswitch_fd
    aget v1, v0, v4

    if-ne v1, v5, :cond_112

    .line 490
    const-string v0, "lastSuccessfulCharge"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 492
    :cond_112
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 496
    :pswitch_11b
    aget v1, v0, v4

    if-ne v1, v5, :cond_130

    .line 497
    const-string v0, "lastFailedCharge"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 499
    :cond_130
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 503
    :pswitch_139
    aget v1, v0, v4

    if-ne v1, v6, :cond_14a

    .line 504
    const-string v0, "lastFailedChargeReason"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 506
    :cond_14a
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 510
    :pswitch_153
    aget v1, v0, v4

    if-ne v1, v5, :cond_168

    .line 511
    const-string v0, "nextPaymentDue"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 513
    :cond_168
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 517
    :pswitch_171
    aget v1, v0, v4

    if-ne v1, v5, :cond_186

    .line 518
    const-string v0, "premiumLockUntil"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 520
    :cond_186
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 524
    :pswitch_18f
    aget v1, v0, v4

    if-ne v1, v5, :cond_1a4

    .line 525
    const-string v0, "updated"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 527
    :cond_1a4
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 531
    :pswitch_1ad
    aget v1, v0, v4

    if-ne v1, v6, :cond_1be

    .line 532
    const-string v0, "premiumSubscriptionNumber"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 534
    :cond_1be
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 538
    :pswitch_1c7
    aget v1, v0, v4

    if-ne v1, v5, :cond_1dc

    .line 539
    const-string v0, "lastRequestedCharge"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 541
    :cond_1dc
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 545
    :pswitch_1e5
    aget v1, v0, v4

    if-ne v1, v6, :cond_1f6

    .line 546
    const-string v0, "currency"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 548
    :cond_1f6
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 552
    :pswitch_1ff
    aget v1, v0, v4

    if-ne v1, v7, :cond_214

    .line 553
    const-string v0, "unitPrice"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 555
    :cond_214
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 559
    :pswitch_21d
    aget v1, v0, v4

    if-ne v1, v7, :cond_232

    .line 560
    const-string v0, "businessId"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 562
    :cond_232
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 566
    :pswitch_23b
    aget v1, v0, v4

    if-ne v1, v6, :cond_24c

    .line 567
    const-string v0, "businessName"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 569
    :cond_24c
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 573
    :pswitch_255
    aget v1, v0, v4

    if-ne v1, v7, :cond_26a

    .line 574
    iget-object v0, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 575
    const-string v1, "businessRole"

    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/l;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 577
    :cond_26a
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_7

    .line 430
    nop

    :pswitch_data_274
    .packed-switch 0x1
        :pswitch_20
        :pswitch_3c
        :pswitch_58
        :pswitch_74
        :pswitch_91
        :pswitch_ab
        :pswitch_c5
        :pswitch_e3
        :pswitch_fd
        :pswitch_11b
        :pswitch_139
        :pswitch_153
        :pswitch_171
        :pswitch_18f
        :pswitch_18
        :pswitch_1ad
        :pswitch_1c7
        :pswitch_1e5
        :pswitch_1ff
        :pswitch_21d
        :pswitch_23b
        :pswitch_255
    .end packed-switch
.end method

.method private g(Ljava/util/HashMap;)V
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
    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 610
    :goto_4
    iget-object v0, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 611
    aget v1, v0, v4

    if-nez v1, :cond_f

    .line 692
    return-void

    .line 615
    :cond_f
    const/4 v1, 0x1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_142

    .line 688
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_4

    .line 617
    :pswitch_1d
    aget v1, v0, v4

    if-ne v1, v6, :cond_31

    .line 618
    const-string v0, "currentTime"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 620
    :cond_31
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_4

    .line 624
    :pswitch_39
    aget v1, v0, v4

    if-ne v1, v5, :cond_4d

    .line 625
    const-string v0, "premium"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 627
    :cond_4d
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_4

    .line 631
    :pswitch_55
    aget v1, v0, v4

    if-ne v1, v5, :cond_69

    .line 632
    const-string v0, "premiumRecurring"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 634
    :cond_69
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_4

    .line 638
    :pswitch_71
    aget v1, v0, v4

    if-ne v1, v6, :cond_85

    .line 639
    const-string v0, "premiumExpirationDate"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 641
    :cond_85
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 645
    :pswitch_8e
    aget v1, v0, v4

    if-ne v1, v5, :cond_a3

    .line 646
    const-string v0, "premiumExtendable"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 648
    :cond_a3
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 652
    :pswitch_ac
    aget v1, v0, v4

    if-ne v1, v5, :cond_c1

    .line 653
    const-string v0, "premiumPending"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 655
    :cond_c1
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 659
    :pswitch_ca
    aget v1, v0, v4

    if-ne v1, v5, :cond_df

    .line 660
    const-string v0, "premiumCancellationPending"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 662
    :cond_df
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 666
    :pswitch_e8
    aget v1, v0, v4

    if-ne v1, v5, :cond_fd

    .line 667
    const-string v0, "canPurchaseUploadAllowance"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 669
    :cond_fd
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 673
    :pswitch_106
    aget v1, v0, v4

    const/16 v2, 0xb

    if-ne v1, v2, :cond_119

    .line 674
    const-string v0, "sponsoredGroupName"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 676
    :cond_119
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 680
    :pswitch_122
    aget v1, v0, v4

    const/16 v2, 0x8

    if-ne v1, v2, :cond_139

    .line 681
    iget-object v0, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 682
    const-string v1, "sponsoredGroupRole"

    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/l;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 684
    :cond_139
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 615
    :pswitch_data_142
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
        :pswitch_122
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
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

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
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_8

    .line 22
    :pswitch_21
    aget v2, v1, v3

    if-ne v2, v4, :cond_29

    .line 23
    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/l;->a(Ljava/util/HashMap;)V

    goto :goto_8

    .line 25
    :cond_29
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

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
    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/l;->b(Ljava/util/HashMap;)V

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
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

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
    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/l;->c(Ljava/util/HashMap;)V

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
    iget-object v2, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

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

    const/16 v7, 0xc

    const/16 v6, 0xa

    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 58
    :goto_9
    iget-object v0, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v0

    .line 59
    aget v1, v0, v4

    if-nez v1, :cond_14

    .line 174
    return-void

    .line 63
    :cond_14
    const/4 v1, 0x1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_1a6

    .line 170
    :pswitch_1a
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_9

    .line 65
    :pswitch_22
    aget v1, v0, v4

    if-ne v1, v8, :cond_36

    .line 66
    const-string v0, "id"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 68
    :cond_36
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_9

    .line 72
    :pswitch_3e
    aget v1, v0, v4

    if-ne v1, v5, :cond_4e

    .line 73
    const-string v0, "username"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 75
    :cond_4e
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_9

    .line 79
    :pswitch_56
    aget v1, v0, v4

    if-ne v1, v5, :cond_66

    .line 80
    const-string v0, "email"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 82
    :cond_66
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_9

    .line 86
    :pswitch_6e
    aget v1, v0, v4

    if-ne v1, v5, :cond_7e

    .line 87
    const-string v0, "name"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 89
    :cond_7e
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_9

    .line 93
    :pswitch_86
    aget v1, v0, v4

    if-ne v1, v5, :cond_97

    .line 94
    const-string v0, "timezone"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 96
    :cond_97
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_9

    .line 100
    :pswitch_a0
    aget v1, v0, v4

    if-ne v1, v8, :cond_b5

    .line 101
    iget-object v0, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 102
    const-string v1, "privilege"

    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/l;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 104
    :cond_b5
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_9

    .line 108
    :pswitch_be
    aget v1, v0, v4

    if-ne v1, v6, :cond_d3

    .line 109
    const-string v0, "created"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 111
    :cond_d3
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_9

    .line 115
    :pswitch_dc
    aget v1, v0, v4

    if-ne v1, v6, :cond_f1

    .line 116
    const-string v0, "updated"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 118
    :cond_f1
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_9

    .line 122
    :pswitch_fa
    aget v1, v0, v4

    if-ne v1, v6, :cond_10f

    .line 123
    const-string v0, "deleted"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 125
    :cond_10f
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_9

    .line 129
    :pswitch_118
    aget v1, v0, v4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12e

    .line 130
    const-string v0, "active"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 132
    :cond_12e
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_9

    .line 136
    :pswitch_137
    aget v1, v0, v4

    if-ne v1, v5, :cond_148

    .line 137
    const-string v0, "shardId"

    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 139
    :cond_148
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_9

    .line 143
    :pswitch_151
    aget v1, v0, v4

    if-ne v1, v7, :cond_164

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/l;->e(Ljava/util/HashMap;)V

    .line 146
    const-string v1, "attributes"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 148
    :cond_164
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_9

    .line 152
    :pswitch_16d
    aget v1, v0, v4

    if-ne v1, v7, :cond_180

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/l;->f(Ljava/util/HashMap;)V

    .line 155
    const-string v1, "accounting"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 157
    :cond_180
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_9

    .line 161
    :pswitch_189
    aget v1, v0, v4

    if-ne v1, v7, :cond_19c

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    invoke-direct {p0, v0}, Lcn/sharesdk/evernote/l;->g(Ljava/util/HashMap;)V

    .line 164
    const-string v1, "premiumInfo"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 166
    :cond_19c
    iget-object v1, p0, Lcn/sharesdk/evernote/l;->a:Lcn/sharesdk/evernote/b;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_9

    .line 63
    nop

    :pswitch_data_1a6
    .packed-switch 0x1
        :pswitch_22
        :pswitch_3e
        :pswitch_56
        :pswitch_6e
        :pswitch_1a
        :pswitch_86
        :pswitch_a0
        :pswitch_1a
        :pswitch_be
        :pswitch_dc
        :pswitch_fa
        :pswitch_1a
        :pswitch_118
        :pswitch_137
        :pswitch_151
        :pswitch_16d
        :pswitch_189
    .end packed-switch
.end method
