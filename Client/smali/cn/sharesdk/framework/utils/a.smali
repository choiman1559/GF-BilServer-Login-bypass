.class public Lcn/sharesdk/framework/utils/a;
.super Ljava/lang/Object;
.source "Oauth1Signer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/utils/a$a;,
        Lcn/sharesdk/framework/utils/a$b;
    }
.end annotation


# instance fields
.field private a:Lcn/sharesdk/framework/utils/a$b;

.field private b:Lcn/sharesdk/framework/utils/b;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcn/sharesdk/framework/utils/a$b;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/a$b;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    .line 22
    new-instance v0, Lcn/sharesdk/framework/utils/b;

    const-string v1, "-._~"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/utils/b;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcn/sharesdk/framework/utils/a;->b:Lcn/sharesdk/framework/utils/b;

    .line 23
    return-void
.end method

.method private a(JLjava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "oauth_consumer_key"

    iget-object v3, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iget-object v3, v3, Lcn/sharesdk/framework/utils/a$b;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "oauth_signature_method"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "oauth_timestamp"

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "oauth_nonce"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "oauth_version"

    const-string v3, "1.0"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iget-object v1, v1, Lcn/sharesdk/framework/utils/a$b;->c:Ljava/lang/String;

    .line 163
    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5f

    .line 164
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_token"

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_5f
    return-object v0
.end method

.method private a(JLjava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
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
    const/4 v2, 0x0

    .line 105
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 106
    if-eqz p3, :cond_2a

    .line 107
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/network/KVPair;

    .line 108
    iget-object v4, v0, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 113
    :cond_2a
    invoke-direct {p0, p1, p2, p4}, Lcn/sharesdk/framework/utils/a;->a(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_52

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/network/KVPair;

    .line 116
    iget-object v4, v0, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 122
    :cond_52
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 124
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_61
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 127
    goto :goto_61

    .line 128
    :cond_79
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    array-length v1, v4

    :goto_82
    if-ge v2, v1, :cond_95

    aget-object v5, v4, v2

    .line 132
    new-instance v6, Lcom/mob/tools/network/KVPair;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .line 134
    :cond_95
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcn/sharesdk/framework/utils/a$a;",
            ")",
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
    const/4 v0, 0x0

    const/16 v7, 0x26

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 68
    sget-object v1, Lcn/sharesdk/framework/utils/a$1;->a:[I

    invoke-virtual {p4}, Lcn/sharesdk/framework/utils/a$a;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_d0

    move-object v1, v0

    .line 91
    :goto_13
    invoke-direct {p0, v2, v3, v0}, Lcn/sharesdk/framework/utils/a;->a(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_signature"

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-object v0

    .line 70
    :pswitch_22
    const-string v0, "HMAC-SHA1"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iget-object v4, v4, Lcn/sharesdk/framework/utils/a$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iget-object v4, v4, Lcn/sharesdk/framework/utils/a$b;->d:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string v4, "utf-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 73
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "HMAC-SHA1"

    invoke-direct {v4, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 74
    const-string v1, "HMAC-SHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 77
    invoke-direct {p0, v2, v3, p3, v0}, Lcn/sharesdk/framework/utils/a;->a(JLjava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 78
    invoke-direct {p0, v4}, Lcn/sharesdk/framework/utils/a;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 83
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 86
    :pswitch_a6
    const-string v0, "PLAINTEXT"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iget-object v4, v4, Lcn/sharesdk/framework/utils/a$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iget-object v4, v4, Lcn/sharesdk/framework/utils/a$b;->d:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 68
    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_22
        :pswitch_a6
    .end packed-switch
.end method

.method private b(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 138
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_b

    .line 139
    :cond_8
    const-string v0, ""

    .line 151
    :goto_a
    return-object v0

    .line 142
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/network/KVPair;

    .line 145
    if-lez v1, :cond_29

    .line 146
    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_29
    iget-object v4, v0, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 150
    goto :goto_16

    .line 151
    :cond_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public a()Lcn/sharesdk/framework/utils/a$b;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 97
    if-nez p1, :cond_5

    .line 98
    const-string v0, ""

    .line 100
    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcn/sharesdk/framework/utils/a;->b:Lcn/sharesdk/framework/utils/b;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/b;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
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
    .line 36
    sget-object v0, Lcn/sharesdk/framework/utils/a$a;->a:Lcn/sharesdk/framework/utils/a$a;

    invoke-virtual {p0, p1, p2, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcn/sharesdk/framework/utils/a$a;",
            ")",
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
    .line 40
    const-string v0, "POST"

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "OAuth "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/network/KVPair;

    .line 174
    if-lez v2, :cond_20

    .line 175
    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    :cond_20
    iget-object v1, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 180
    goto :goto_d

    .line 182
    :cond_41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "Authorization"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iput-object p1, v0, Lcn/sharesdk/framework/utils/a$b;->c:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iput-object p2, v0, Lcn/sharesdk/framework/utils/a$b;->d:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 26
    iget-object v0, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iput-object p1, v0, Lcn/sharesdk/framework/utils/a$b;->a:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iput-object p2, v0, Lcn/sharesdk/framework/utils/a$b;->b:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iput-object p3, v0, Lcn/sharesdk/framework/utils/a$b;->e:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
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
    .line 44
    sget-object v0, Lcn/sharesdk/framework/utils/a$a;->a:Lcn/sharesdk/framework/utils/a$a;

    invoke-virtual {p0, p1, p2, v0}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcn/sharesdk/framework/utils/a$a;",
            ")",
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
    .line 48
    const-string v0, "GET"

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcn/sharesdk/framework/utils/a$a;",
            ")",
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
    .line 56
    const-string v0, "PUT"

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
