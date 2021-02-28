.class public Lcom/mob/tools/utils/Hashon;
.super Ljava/lang/Object;
.source "Hashon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/Hashon$TabulateAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private arrayToList(Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 15
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 134
    instance-of v11, p1, [B

    if-eqz v11, :cond_1d

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    check-cast p1, [B

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [B

    array-length v11, p1

    :goto_f
    if-ge v10, v11, :cond_3a

    aget-byte v0, p1, v10

    .line 137
    .local v0, "item":B
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 140
    .end local v0    # "item":B
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1d
    instance-of v11, p1, [S

    if-eqz v11, :cond_3b

    .line 141
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    check-cast p1, [S

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [S

    array-length v11, p1

    :goto_2b
    if-ge v10, v11, :cond_39

    aget-short v0, p1, v10

    .line 143
    .local v0, "item":S
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    .end local v0    # "item":S
    :cond_39
    move-object v3, v9

    .line 185
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    :cond_3a
    :goto_3a
    return-object v3

    .line 146
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3b
    instance-of v11, p1, [I

    if-eqz v11, :cond_59

    .line 147
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast p1, [I

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [I

    array-length v11, p1

    :goto_49
    if-ge v10, v11, :cond_57

    aget v0, p1, v10

    .line 149
    .local v0, "item":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v10, v10, 0x1

    goto :goto_49

    .end local v0    # "item":I
    :cond_57
    move-object v3, v7

    .line 151
    goto :goto_3a

    .line 152
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_59
    instance-of v11, p1, [J

    if-eqz v11, :cond_77

    .line 153
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p1, [J

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [J

    array-length v11, p1

    :goto_67
    if-ge v10, v11, :cond_75

    aget-wide v0, p1, v10

    .line 155
    .local v0, "item":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v10, v10, 0x1

    goto :goto_67

    .end local v0    # "item":J
    :cond_75
    move-object v3, v8

    .line 157
    goto :goto_3a

    .line 158
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_77
    instance-of v11, p1, [F

    if-eqz v11, :cond_95

    .line 159
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    check-cast p1, [F

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [F

    array-length v11, p1

    :goto_85
    if-ge v10, v11, :cond_93

    aget v0, p1, v10

    .line 161
    .local v0, "item":F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v10, v10, 0x1

    goto :goto_85

    .end local v0    # "item":F
    :cond_93
    move-object v3, v6

    .line 163
    goto :goto_3a

    .line 164
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_95
    instance-of v11, p1, [D

    if-eqz v11, :cond_b3

    .line 165
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    check-cast p1, [D

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [D

    array-length v11, p1

    :goto_a3
    if-ge v10, v11, :cond_b1

    aget-wide v0, p1, v10

    .line 167
    .local v0, "item":D
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v10, v10, 0x1

    goto :goto_a3

    .end local v0    # "item":D
    :cond_b1
    move-object v3, v5

    .line 169
    goto :goto_3a

    .line 170
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_b3
    instance-of v11, p1, [C

    if-eqz v11, :cond_d2

    .line 171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Character;>;"
    check-cast p1, [C

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [C

    array-length v11, p1

    :goto_c1
    if-ge v10, v11, :cond_cf

    aget-char v0, p1, v10

    .line 173
    .local v0, "item":C
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v10, v10, 0x1

    goto :goto_c1

    .end local v0    # "item":C
    :cond_cf
    move-object v3, v4

    .line 175
    goto/16 :goto_3a

    .line 176
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Character;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_d2
    instance-of v11, p1, [Z

    if-eqz v11, :cond_f1

    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    check-cast p1, [Z

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [Z

    array-length v11, p1

    :goto_e0
    if-ge v10, v11, :cond_ee

    aget-boolean v0, p1, v10

    .line 179
    .local v0, "item":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v10, v10, 0x1

    goto :goto_e0

    .end local v0    # "item":Z
    :cond_ee
    move-object v3, v2

    .line 181
    goto/16 :goto_3a

    .line 182
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_f1
    instance-of v10, p1, [Ljava/lang/String;

    if-eqz v10, :cond_104

    .line 183
    new-instance v3, Ljava/util/ArrayList;

    check-cast p1, [Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_3a

    .line 185
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_104
    const/4 v3, 0x0

    goto/16 :goto_3a
.end method

.method private format(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 10
    .param p1, "sepStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v6, 0x22

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "[\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "mySepStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 245
    .local v0, "i":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 246
    .local v3, "value":Ljava/lang/Object;
    if-lez v0, :cond_35

    .line 247
    const-string v5, ",\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    instance-of v5, v3, Ljava/util/HashMap;

    if-eqz v5, :cond_48

    .line 251
    check-cast v3, Ljava/util/HashMap;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v1, v3}, Lcom/mob/tools/utils/Hashon;->format(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :goto_45
    add-int/lit8 v0, v0, 0x1

    .line 260
    goto :goto_24

    .line 252
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_48
    instance-of v5, v3, Ljava/util/ArrayList;

    if-eqz v5, :cond_56

    .line 253
    check-cast v3, Ljava/util/ArrayList;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v1, v3}, Lcom/mob/tools/utils/Hashon;->format(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 254
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_56
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_66

    .line 255
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 257
    :cond_66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 261
    .end local v3    # "value":Ljava/lang/Object;
    :cond_6a
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private format(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 12
    .param p1, "sepStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v8, 0x22

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v5, "{\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "mySepStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 218
    .local v1, "i":I
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-lez v1, :cond_3b

    .line 220
    const-string v5, ",\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_3b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 224
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/HashMap;

    if-eqz v5, :cond_66

    .line 225
    check-cast v4, Ljava/util/HashMap;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2, v4}, Lcom/mob/tools/utils/Hashon;->format(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :goto_63
    add-int/lit8 v1, v1, 0x1

    .line 234
    goto :goto_28

    .line 226
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_66
    instance-of v5, v4, Ljava/util/ArrayList;

    if-eqz v5, :cond_74

    .line 227
    check-cast v4, Ljava/util/ArrayList;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2, v4}, Lcom/mob/tools/utils/Hashon;->format(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 228
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_74
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_84

    .line 229
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 231
    :cond_84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 235
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "value":Ljava/lang/Object;
    :cond_88
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private fromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, "size":I
    :goto_a
    if-ge v0, v2, :cond_2b

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 78
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_20

    .line 79
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    .line 83
    :cond_1a
    :goto_1a
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 80
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_20
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_1a

    .line 81
    check-cast v3, Lorg/json/JSONArray;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "value":Ljava/util/ArrayList;
    goto :goto_1a

    .line 85
    .end local v3    # "value":Ljava/util/ArrayList;
    :cond_2b
    return-object v1
.end method

.method private fromJson(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 56
    .local v0, "iKey":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    .local v3, "value":Ljava/lang/Object;
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 60
    const/4 v3, 0x0

    .line 62
    .end local v3    # "value":Ljava/lang/Object;
    :cond_22
    if-eqz v3, :cond_9

    .line 63
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_32

    .line 64
    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    .line 68
    :cond_2e
    :goto_2e
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 65
    :cond_32
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_2e

    .line 66
    check-cast v3, Lorg/json/JSONArray;

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "value":Ljava/util/ArrayList;
    goto :goto_2e

    .line 71
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/util/ArrayList;
    :cond_3d
    return-object v2
.end method

.method private getJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 191
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 192
    .local v1, "value":Ljava/lang/Object;
    instance-of v3, v1, Ljava/util/HashMap;

    if-eqz v3, :cond_21

    .line 193
    check-cast v1, Ljava/util/HashMap;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/mob/tools/utils/Hashon;->getJSONObject(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v1

    .line 197
    :cond_1d
    :goto_1d
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    .line 194
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_21
    instance-of v3, v1, Ljava/util/ArrayList;

    if-eqz v3, :cond_1d

    .line 195
    check-cast v1, Ljava/util/ArrayList;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/mob/tools/utils/Hashon;->getJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    .local v1, "value":Lorg/json/JSONArray;
    goto :goto_1d

    .line 199
    .end local v1    # "value":Lorg/json/JSONArray;
    :cond_2c
    return-object v0
.end method

.method private getJSONObject(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 113
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/HashMap;

    if-eqz v3, :cond_31

    .line 114
    check-cast v2, Ljava/util/HashMap;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/mob/tools/utils/Hashon;->getJSONObject(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    .line 120
    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    .line 115
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_31
    instance-of v3, v2, Ljava/util/ArrayList;

    if-eqz v3, :cond_3c

    .line 116
    check-cast v2, Ljava/util/ArrayList;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/mob/tools/utils/Hashon;->getJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    .local v2, "value":Lorg/json/JSONArray;
    goto :goto_27

    .line 117
    .local v2, "value":Ljava/lang/Object;
    :cond_3c
    invoke-direct {p0, v2}, Lcom/mob/tools/utils/Hashon;->isBasicArray(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 118
    invoke-direct {p0, v2}, Lcom/mob/tools/utils/Hashon;->arrayToList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/Hashon;->getJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    .local v2, "value":Lorg/json/JSONArray;
    goto :goto_27

    .line 122
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    .end local v2    # "value":Lorg/json/JSONArray;
    :cond_4b
    return-object v1
.end method

.method private isBasicArray(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 126
    instance-of v0, p1, [B

    if-nez v0, :cond_24

    instance-of v0, p1, [S

    if-nez v0, :cond_24

    instance-of v0, p1, [I

    if-nez v0, :cond_24

    instance-of v0, p1, [J

    if-nez v0, :cond_24

    instance-of v0, p1, [F

    if-nez v0, :cond_24

    instance-of v0, p1, [D

    if-nez v0, :cond_24

    instance-of v0, p1, [C

    if-nez v0, :cond_24

    instance-of v0, p1, [Z

    if-nez v0, :cond_24

    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private tabulate(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 24
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 288
    if-eqz p1, :cond_2c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isPrimitive()Z

    move-result v17

    if-nez v17, :cond_2c

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v17, v0

    if-nez v17, :cond_2c

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v17, v0

    if-nez v17, :cond_2c

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Character;

    move/from16 v17, v0

    if-nez v17, :cond_2c

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v17, v0

    if-eqz v17, :cond_2f

    :cond_2c
    move-object/from16 v13, p1

    .line 343
    .end local p1    # "object":Ljava/lang/Object;
    :cond_2e
    :goto_2e
    return-object v13

    .line 291
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2f
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mob/tools/utils/Hashon$TabulateAdapter;

    move/from16 v17, v0

    if-eqz v17, :cond_46

    .line 292
    check-cast p1, Lcom/mob/tools/utils/Hashon$TabulateAdapter;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lcom/mob/tools/utils/Hashon$TabulateAdapter;->tabulate()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_2e

    .line 293
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_46
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Enum;

    move/from16 v17, v0

    if-eqz v17, :cond_63

    .line 294
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v13, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v17, "enum"

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 297
    .end local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_63
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isArray()Z

    move-result v17

    if-eqz v17, :cond_91

    .line 298
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    .local v11, "len":I
    :goto_77
    if-ge v9, v11, :cond_8f

    .line 300
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v9, v9, 0x1

    goto :goto_77

    :cond_8f
    move-object v13, v12

    .line 302
    goto :goto_2e

    .line 303
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_91
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v17, v0

    if-eqz v17, :cond_bd

    .line 304
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_a4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_ba

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 306
    .local v14, "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .end local v14    # "o":Ljava/lang/Object;
    :cond_ba
    move-object v13, v12

    .line 308
    goto/16 :goto_2e

    .line 309
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_bd
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v17, v0

    if-eqz v17, :cond_fc

    .line 310
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 311
    .restart local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast p1, Ljava/util/Map;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_d4
    :goto_d4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 312
    .local v5, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 313
    .local v10, "k":Ljava/lang/Object;
    instance-of v0, v10, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_d4

    .line 314
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 315
    .local v15, "v":Ljava/lang/Object;
    check-cast v10, Ljava/lang/String;

    .end local v10    # "k":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d4

    .line 320
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "v":Ljava/lang/Object;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_fc
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 321
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v3, "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    :goto_105
    const-class v17, Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_11b

    .line 323
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 324
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_105

    .line 327
    :cond_11b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v7, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_124
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_15d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 329
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .line 330
    .local v8, "flds":[Ljava/lang/reflect/Field;
    array-length v0, v8

    move/from16 v19, v0

    const/16 v17, 0x0

    :goto_139
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_124

    aget-object v6, v8, v17

    .line 331
    .local v6, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v20

    if-nez v20, :cond_15a

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "$"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_15a

    .line 332
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_15a
    add-int/lit8 v17, v17, 0x1

    goto :goto_139

    .line 337
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "flds":[Ljava/lang/reflect/Field;
    :cond_15d
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 338
    .restart local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_166
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    .line 339
    .restart local v6    # "f":Ljava/lang/reflect/Field;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 340
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 341
    .local v16, "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_166
.end method

.method private tabulate(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 41
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "genericTypes"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 371
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v33

    if-nez v33, :cond_1e

    const-class v33, Ljava/lang/Number;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v33

    if-nez v33, :cond_1e

    const-class v33, Ljava/lang/Character;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_104

    .line 372
    :cond_1e
    sget-object v33, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2b

    .line 506
    .end local p1    # "object":Ljava/lang/Object;
    :cond_2a
    :goto_2a
    return-object p1

    .line 374
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2b
    sget-object v33, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_43

    const-class v33, Ljava/lang/Character;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_52

    .line 375
    :cond_43
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_2a

    .line 377
    :cond_52
    sget-object v33, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_6a

    const-class v33, Ljava/lang/Byte;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_73

    .line 378
    :cond_6a
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_2a

    .line 379
    :cond_73
    sget-object v33, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_8b

    const-class v33, Ljava/lang/Short;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_94

    .line 380
    :cond_8b
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    goto :goto_2a

    .line 381
    :cond_94
    sget-object v33, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_ac

    const-class v33, Ljava/lang/Integer;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b6

    .line 382
    :cond_ac
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2a

    .line 383
    :cond_b6
    sget-object v33, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_ce

    const-class v33, Ljava/lang/Long;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_d8

    .line 384
    :cond_ce
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_2a

    .line 385
    :cond_d8
    sget-object v33, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_f0

    const-class v33, Ljava/lang/Float;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_fa

    .line 386
    :cond_f0
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_2a

    .line 388
    :cond_fa
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_2a

    .line 391
    :cond_104
    const-class v33, Lcom/mob/tools/utils/Hashon$TabulateAdapter;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v33

    if-eqz v33, :cond_135

    .line 393
    :try_start_110
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 394
    .local v9, "clzName":Ljava/lang/String;
    const-string v33, "valueOf"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object p1, v34, v35

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v9, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12d
    .catch Ljava/lang/Throwable; {:try_start_110 .. :try_end_12d} :catch_130

    move-result-object p1

    goto/16 :goto_2a

    .line 395
    .end local v9    # "clzName":Ljava/lang/String;
    :catch_130
    move-exception v33

    .line 396
    const/16 p1, 0x0

    goto/16 :goto_2a

    .line 397
    :cond_135
    const-class v33, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_2a

    const-class v33, Ljava/lang/Boolean;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_2a

    .line 399
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isEnum()Z

    move-result v33

    if-eqz v33, :cond_16f

    move-object/from16 v21, p1

    .line 400
    check-cast v21, Ljava/util/HashMap;

    .line 401
    .local v21, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v33, "enum"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    goto/16 :goto_2a

    .line 402
    .end local v21    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_16f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isArray()Z

    move-result v33

    if-eqz v33, :cond_1ae

    move-object/from16 v19, p1

    .line 403
    check-cast v19, Ljava/util/ArrayList;

    .line 404
    .local v19, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    .line 405
    .local v10, "elementClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    invoke-static {v10, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 406
    .local v4, "array":Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v28

    .local v28, "size":I
    :goto_18c
    move/from16 v0, v28

    if-ge v15, v0, :cond_1aa

    .line 407
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v10, v2}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v15, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 406
    add-int/lit8 v15, v15, 0x1

    goto :goto_18c

    :cond_1aa
    move-object/from16 p1, v4

    .line 409
    goto/16 :goto_2a

    .line 410
    .end local v4    # "array":Ljava/lang/Object;
    .end local v10    # "elementClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "i":I
    .end local v19    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v28    # "size":I
    :cond_1ae
    const-class v33, Ljava/util/Collection;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v33

    if-eqz v33, :cond_24f

    .line 412
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Collection;

    .line 413
    .local v18, "list":Ljava/util/Collection;
    const/4 v13, 0x0

    .line 414
    .local v13, "gType":Ljava/lang/reflect/Type;
    if-eqz p3, :cond_1ce

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v33, v0

    if-lez v33, :cond_1ce

    .line 415
    const/16 v33, 0x0

    aget-object v13, p3, v33

    :cond_1ce
    move-object/from16 v24, p1

    .line 417
    check-cast v24, Ljava/util/ArrayList;

    .line 418
    .local v24, "oList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    const/4 v15, 0x0

    .restart local v15    # "i":I
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v28

    .restart local v28    # "size":I
    :goto_1d7
    move/from16 v0, v28

    if-ge v15, v0, :cond_24b

    .line 419
    if-eqz v13, :cond_20f

    instance-of v0, v13, Ljava/lang/Class;

    move/from16 v33, v0

    if-eqz v33, :cond_20f

    const-class v33, Ljava/lang/Object;

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_20f

    .line 420
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v33, v13

    check-cast v33, Ljava/lang/Class;

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 418
    :goto_20c
    add-int/lit8 v15, v15, 0x1

    goto :goto_1d7

    .line 421
    :cond_20f
    if-eqz v13, :cond_23d

    instance-of v0, v13, Ljava/lang/reflect/ParameterizedType;

    move/from16 v33, v0

    if-eqz v33, :cond_23d

    move-object/from16 v26, v13

    .line 422
    check-cast v26, Ljava/lang/reflect/ParameterizedType;

    .line 423
    .local v26, "pType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface/range {v26 .. v26}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v14

    .line 424
    .local v14, "gTypes":[Ljava/lang/reflect/Type;
    invoke-interface/range {v26 .. v26}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v27

    check-cast v27, Ljava/lang/Class;

    .line 425
    .local v27, "rType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v14}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20c

    .line 427
    .end local v14    # "gTypes":[Ljava/lang/reflect/Type;
    .end local v26    # "pType":Ljava/lang/reflect/ParameterizedType;
    .end local v27    # "rType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_23d
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20c

    :cond_24b
    move-object/from16 p1, v18

    .line 430
    goto/16 :goto_2a

    .line 431
    .end local v13    # "gType":Ljava/lang/reflect/Type;
    .end local v15    # "i":I
    .end local v18    # "list":Ljava/util/Collection;
    .end local v24    # "oList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v28    # "size":I
    :cond_24f
    const-class v33, Ljava/util/Map;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v33

    if-eqz v33, :cond_34a

    .line 433
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    .line 434
    .local v20, "map":Ljava/util/Map;
    const/16 v17, 0x0

    .line 435
    .local v17, "keyType":Ljava/lang/reflect/Type;
    const/16 v32, 0x0

    .line 436
    .local v32, "valueType":Ljava/lang/reflect/Type;
    if-eqz p3, :cond_27c

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_27c

    .line 437
    const/16 v33, 0x0

    aget-object v17, p3, v33

    .line 438
    const/16 v33, 0x1

    aget-object v32, p3, v33

    :cond_27c
    move-object/from16 v25, p1

    .line 440
    check-cast v25, Ljava/util/HashMap;

    .line 441
    .local v25, "oMap":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_288
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_346

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    .line 443
    .local v23, "oKey":Ljava/lang/Object;
    if-eqz v17, :cond_2ec

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v33, v0

    if-eqz v33, :cond_2ec

    const-class v33, Ljava/lang/Object;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_2ec

    move-object/from16 v33, v17

    .line 444
    check-cast v33, Ljava/lang/Class;

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v16

    .line 454
    .local v16, "key":Ljava/lang/Object;
    :goto_2b6
    if-eqz v32, :cond_312

    move-object/from16 v0, v32

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v33, v0

    if-eqz v33, :cond_312

    const-class v33, Ljava/lang/Object;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_312

    .line 455
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v33, v32

    check-cast v33, Ljava/lang/Class;

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v31

    .line 464
    .local v31, "value":Ljava/lang/Object;
    :goto_2e2
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_288

    .line 445
    .end local v16    # "key":Ljava/lang/Object;
    .end local v31    # "value":Ljava/lang/Object;
    :cond_2ec
    if-eqz v17, :cond_30f

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v33, v0

    if-eqz v33, :cond_30f

    move-object/from16 v26, v17

    .line 446
    check-cast v26, Ljava/lang/reflect/ParameterizedType;

    .line 447
    .restart local v26    # "pType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface/range {v26 .. v26}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v14

    .line 448
    .restart local v14    # "gTypes":[Ljava/lang/reflect/Type;
    invoke-interface/range {v26 .. v26}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v27

    check-cast v27, Ljava/lang/Class;

    .line 449
    .restart local v27    # "rType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v14}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v16

    .line 450
    .restart local v16    # "key":Ljava/lang/Object;
    goto :goto_2b6

    .line 451
    .end local v14    # "gTypes":[Ljava/lang/reflect/Type;
    .end local v16    # "key":Ljava/lang/Object;
    .end local v26    # "pType":Ljava/lang/reflect/ParameterizedType;
    .end local v27    # "rType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_30f
    move-object/from16 v16, v23

    .restart local v16    # "key":Ljava/lang/Object;
    goto :goto_2b6

    .line 456
    :cond_312
    if-eqz v32, :cond_33d

    move-object/from16 v0, v32

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v33, v0

    if-eqz v33, :cond_33d

    move-object/from16 v26, v32

    .line 457
    check-cast v26, Ljava/lang/reflect/ParameterizedType;

    .line 458
    .restart local v26    # "pType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface/range {v26 .. v26}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v14

    .line 459
    .restart local v14    # "gTypes":[Ljava/lang/reflect/Type;
    invoke-interface/range {v26 .. v26}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v27

    check-cast v27, Ljava/lang/Class;

    .line 460
    .restart local v27    # "rType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v14}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v31

    .line 461
    .restart local v31    # "value":Ljava/lang/Object;
    goto :goto_2e2

    .line 462
    .end local v14    # "gTypes":[Ljava/lang/reflect/Type;
    .end local v26    # "pType":Ljava/lang/reflect/ParameterizedType;
    .end local v27    # "rType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v31    # "value":Ljava/lang/Object;
    :cond_33d
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    .restart local v31    # "value":Ljava/lang/Object;
    goto :goto_2e2

    .end local v16    # "key":Ljava/lang/Object;
    .end local v23    # "oKey":Ljava/lang/Object;
    .end local v31    # "value":Ljava/lang/Object;
    :cond_346
    move-object/from16 p1, v20

    .line 466
    goto/16 :goto_2a

    .line 468
    .end local v17    # "keyType":Ljava/lang/reflect/Type;
    .end local v20    # "map":Ljava/util/Map;
    .end local v25    # "oMap":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .end local v32    # "valueType":Ljava/lang/reflect/Type;
    :cond_34a
    move-object/from16 v8, p2

    .line 469
    .local v8, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v6, "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    :goto_351
    const-class v33, Ljava/lang/Object;

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_363

    .line 471
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    goto :goto_351

    :cond_363
    move-object/from16 v21, p1

    .line 475
    check-cast v21, Ljava/util/HashMap;

    .line 476
    .restart local v21    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 477
    .local v12, "fields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_374
    :goto_374
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_3a5

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 478
    .local v22, "name":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    if-eqz v34, :cond_374

    .line 479
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_38a
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_374

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 480
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v11, 0x0

    .line 482
    .local v11, "field":Ljava/lang/reflect/Field;
    :try_start_397
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_39c
    .catch Ljava/lang/Throwable; {:try_start_397 .. :try_end_39c} :catch_40b

    move-result-object v11

    .line 484
    :goto_39d
    if-eqz v11, :cond_38a

    .line 485
    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_374

    .line 492
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "field":Ljava/lang/reflect/Field;
    .end local v22    # "name":Ljava/lang/String;
    :cond_3a5
    invoke-static/range {p2 .. p2}, Lcom/mob/tools/utils/ReflectHelper;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 493
    .local v7, "clsName":Ljava/lang/String;
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v7, v0}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 494
    .local v29, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_3bf
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_407

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 495
    .restart local v22    # "name":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    .line 496
    .restart local v31    # "value":Ljava/lang/Object;
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Field;

    .line 497
    .restart local v11    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v30

    .line 498
    .local v30, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v26

    .line 499
    .local v26, "pType":Ljava/lang/reflect/Type;
    const/4 v14, 0x0

    .line 500
    .restart local v14    # "gTypes":[Ljava/lang/reflect/Type;
    move-object/from16 v0, v26

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v34, v0

    if-eqz v34, :cond_3ee

    .line 501
    check-cast v26, Ljava/lang/reflect/ParameterizedType;

    .end local v26    # "pType":Ljava/lang/reflect/Type;
    invoke-interface/range {v26 .. v26}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v14

    .line 503
    :cond_3ee
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 504
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v14}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3bf

    .end local v11    # "field":Ljava/lang/reflect/Field;
    .end local v14    # "gTypes":[Ljava/lang/reflect/Type;
    .end local v22    # "name":Ljava/lang/String;
    .end local v30    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v31    # "value":Ljava/lang/Object;
    :cond_407
    move-object/from16 p1, v29

    .line 506
    goto/16 :goto_2a

    .line 483
    .end local v7    # "clsName":Ljava/lang/String;
    .end local v29    # "t":Ljava/lang/Object;, "TT;"
    .restart local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "field":Ljava/lang/reflect/Field;
    .restart local v22    # "name":Ljava/lang/String;
    :catch_40b
    move-exception v35

    goto :goto_39d
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 205
    :try_start_0
    const-string v1, ""

    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mob/tools/utils/Hashon;->format(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 209
    :goto_a
    return-object v1

    .line 206
    :catch_b
    move-exception v0

    .line 207
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 209
    const-string v1, ""

    goto :goto_a
.end method

.method public fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/Hashon;->getJSONObject(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v0

    .line 96
    .local v0, "obj":Lorg/json/JSONObject;
    if-nez v0, :cond_9

    .line 97
    const-string v2, ""

    .line 104
    .end local v0    # "obj":Lorg/json/JSONObject;
    :goto_8
    return-object v2

    .line 100
    .restart local v0    # "obj":Lorg/json/JSONObject;
    :cond_9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v2

    goto :goto_8

    .line 101
    .end local v0    # "obj":Lorg/json/JSONObject;
    :catch_e
    move-exception v1

    .line 102
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 104
    const-string v2, ""

    goto :goto_8
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 10
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 349
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 350
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v3, v1

    .line 351
    .local v3, "oriObj":Ljava/util/HashMap;
    const-string v6, "["

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const-string v6, "]"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 352
    const-string v6, "fakelist"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 355
    .end local v3    # "oriObj":Ljava/util/HashMap;
    :cond_1b
    const/4 v2, 0x0

    .line 357
    .local v2, "object":Ljava/lang/Object;, "TT;"
    :try_start_1c
    invoke-virtual {p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 358
    .local v5, "type":Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .line 359
    .local v0, "genericTypes":[Ljava/lang/reflect/Type;
    instance-of v6, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_2b

    .line 360
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .end local v5    # "type":Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 362
    :cond_2b
    invoke-direct {p0, v3, p2, v0}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_2e} :catch_30

    move-result-object v2

    .line 366
    .end local v0    # "genericTypes":[Ljava/lang/reflect/Type;
    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    :goto_2f
    return-object v2

    .line 363
    .restart local v2    # "object":Ljava/lang/Object;, "TT;"
    :catch_30
    move-exception v4

    .line 364
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method public fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 6
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 34
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 48
    :goto_b
    return-object v2

    .line 38
    :cond_c
    :try_start_c
    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"fakelist\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    :cond_35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "json":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Lorg/json/JSONObject;)Ljava/util/HashMap;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_3d} :catch_3f

    move-result-object v2

    goto :goto_b

    .line 44
    .end local v0    # "json":Lorg/json/JSONObject;
    :catch_3f
    move-exception v1

    .line 45
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_b
.end method

.method public fromObject(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 268
    const/4 v3, 0x0

    .line 270
    .local v3, "tObject":Ljava/lang/Object;
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/Hashon;->tabulate(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_a

    move-result-object v3

    .line 275
    .end local v3    # "tObject":Ljava/lang/Object;
    :goto_5
    if-nez v3, :cond_13

    .line 276
    const-string v4, ""

    .line 283
    :goto_9
    return-object v4

    .line 271
    .restart local v3    # "tObject":Ljava/lang/Object;
    :catch_a
    move-exception v2

    .line 272
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_5

    .line 277
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "tObject":Ljava/lang/Object;
    :cond_13
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_3a

    .line 278
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 279
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "list"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {p0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "json":Ljava/lang/String;
    const-string v4, "{\"list\":"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 283
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3a
    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9
.end method
