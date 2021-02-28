.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_TWO:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 35
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 37
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 39
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 45
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 49
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 51
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 53
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 55
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 57
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 59
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 61
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 63
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 65
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 71
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static compare(BB)I
    .registers 3
    .param p0, "x"    # B
    .param p1, "y"    # B

    .prologue
    .line 1823
    sub-int v0, p0, p1

    return v0
.end method

.method public static compare(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 1772
    if-ne p0, p1, :cond_4

    .line 1773
    const/4 v0, 0x0

    .line 1775
    :goto_3
    return v0

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static compare(JJ)I
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 1789
    cmp-long v0, p0, p2

    if-nez v0, :cond_6

    .line 1790
    const/4 v0, 0x0

    .line 1792
    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-gez v0, :cond_c

    const/4 v0, -0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static compare(SS)I
    .registers 3
    .param p0, "x"    # S
    .param p1, "y"    # S

    .prologue
    .line 1806
    if-ne p0, p1, :cond_4

    .line 1807
    const/4 v0, 0x0

    .line 1809
    :goto_3
    return v0

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 983
    if-nez p0, :cond_4

    .line 984
    const/4 v0, 0x0

    .line 997
    :goto_3
    return-object v0

    .line 987
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 988
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 995
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_37
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 948
    if-nez p0, :cond_4

    .line 949
    const/4 v3, 0x0

    .line 970
    :cond_3
    :goto_3
    return-object v3

    .line 951
    :cond_4
    const/4 v1, 0x0

    .line 952
    .local v1, "pos":I
    const/16 v2, 0xa

    .line 953
    .local v2, "radix":I
    const/4 v0, 0x0

    .line 954
    .local v0, "negate":Z
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 955
    const/4 v0, 0x1

    .line 956
    const/4 v1, 0x1

    .line 958
    :cond_12
    const-string v4, "0x"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_22

    const-string v4, "0X"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 959
    :cond_22
    const/16 v2, 0x10

    .line 960
    add-int/lit8 v1, v1, 0x2

    .line 969
    :cond_26
    :goto_26
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 970
    .local v3, "value":Ljava/math/BigInteger;
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_3

    .line 961
    .end local v3    # "value":Ljava/math/BigInteger;
    :cond_36
    const-string v4, "#"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 962
    const/16 v2, 0x10

    .line 963
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 964
    :cond_43
    const-string v4, "0"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    if-le v4, v5, :cond_26

    .line 965
    const/16 v2, 0x8

    .line 966
    add-int/lit8 v1, v1, 0x1

    goto :goto_26
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 894
    if-nez p0, :cond_4

    .line 895
    const/4 v0, 0x0

    .line 897
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_3
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 878
    if-nez p0, :cond_4

    .line 879
    const/4 v0, 0x0

    .line 881
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_3
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 912
    if-nez p0, :cond_4

    .line 913
    const/4 v0, 0x0

    .line 916
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 931
    if-nez p0, :cond_4

    .line 932
    const/4 v0, 0x0

    .line 934
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 27
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 651
    if-nez p0, :cond_4

    .line 652
    const/4 v11, 0x0

    .line 816
    :cond_3
    :goto_3
    return-object v11

    .line 654
    :cond_4
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 655
    new-instance v21, Ljava/lang/NumberFormatException;

    const-string v22, "A blank string is not a valid number"

    invoke-direct/range {v21 .. v22}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 658
    :cond_12
    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v14, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "0x"

    aput-object v22, v14, v21

    const/16 v21, 0x1

    const-string v22, "0X"

    aput-object v22, v14, v21

    const/16 v21, 0x2

    const-string v22, "-0x"

    aput-object v22, v14, v21

    const/16 v21, 0x3

    const-string v22, "-0X"

    aput-object v22, v14, v21

    const/16 v21, 0x4

    const-string v22, "#"

    aput-object v22, v14, v21

    const/16 v21, 0x5

    const-string v22, "-#"

    aput-object v22, v14, v21

    .line 659
    .local v14, "hex_prefixes":[Ljava/lang/String;
    const/16 v20, 0x0

    .line 660
    .local v20, "pfxLen":I
    array-length v0, v14

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_43
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5b

    aget-object v19, v14, v21

    .line 661
    .local v19, "pfx":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_79

    .line 662
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    add-int v20, v20, v21

    .line 666
    .end local v19    # "pfx":Ljava/lang/String;
    :cond_5b
    if-lez v20, :cond_b8

    .line 667
    const/4 v12, 0x0

    .line 668
    .local v12, "firstSigDigit":C
    move/from16 v15, v20

    .local v15, "i":I
    :goto_60
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v15, v0, :cond_7c

    .line 669
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 670
    const/16 v21, 0x30

    move/from16 v0, v21

    if-ne v12, v0, :cond_7c

    .line 671
    add-int/lit8 v20, v20, 0x1

    .line 668
    add-int/lit8 v15, v15, 0x1

    goto :goto_60

    .line 660
    .end local v12    # "firstSigDigit":C
    .end local v15    # "i":I
    .restart local v19    # "pfx":Ljava/lang/String;
    :cond_79
    add-int/lit8 v21, v21, 0x1

    goto :goto_43

    .line 676
    .end local v19    # "pfx":Ljava/lang/String;
    .restart local v12    # "firstSigDigit":C
    .restart local v15    # "i":I
    :cond_7c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    sub-int v13, v21, v20

    .line 677
    .local v13, "hexDigits":I
    const/16 v21, 0x10

    move/from16 v0, v21

    if-gt v13, v0, :cond_94

    const/16 v21, 0x10

    move/from16 v0, v21

    if-ne v13, v0, :cond_9a

    const/16 v21, 0x37

    move/from16 v0, v21

    if-le v12, v0, :cond_9a

    .line 678
    :cond_94
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v11

    goto/16 :goto_3

    .line 680
    :cond_9a
    const/16 v21, 0x8

    move/from16 v0, v21

    if-gt v13, v0, :cond_ac

    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v13, v0, :cond_b2

    const/16 v21, 0x37

    move/from16 v0, v21

    if-le v12, v0, :cond_b2

    .line 681
    :cond_ac
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    goto/16 :goto_3

    .line 683
    :cond_b2
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_3

    .line 685
    .end local v12    # "firstSigDigit":C
    .end local v13    # "hexDigits":I
    .end local v15    # "i":I
    :cond_b8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 689
    .local v16, "lastChar":C
    const/16 v21, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 690
    .local v8, "decPos":I
    const/16 v21, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    const/16 v22, 0x45

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    add-int v21, v21, v22

    add-int/lit8 v10, v21, 0x1

    .line 694
    .local v10, "expPos":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v8, v0, :cond_1a5

    .line 695
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v10, v0, :cond_19a

    .line 696
    if-lt v10, v8, :cond_fe

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-le v10, v0, :cond_11b

    .line 697
    :cond_fe
    new-instance v21, Ljava/lang/NumberFormatException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not a valid number."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 699
    :cond_11b
    add-int/lit8 v21, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 703
    .local v7, "dec":Ljava/lang/String;
    :goto_125
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 715
    .local v17, "mant":Ljava/lang/String;
    :goto_12b
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isDigit(C)Z

    move-result v21

    if-nez v21, :cond_27a

    const/16 v21, 0x2e

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_27a

    .line 716
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v10, v0, :cond_1de

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v10, v0, :cond_1de

    .line 717
    add-int/lit8 v21, v10, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 722
    .local v9, "exp":Ljava/lang/String;
    :goto_15b
    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 723
    .local v18, "numeric":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1e1

    invoke-static {v9}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1e1

    const/4 v4, 0x1

    .line 724
    .local v4, "allZeros":Z
    :goto_17a
    sparse-switch v16, :sswitch_data_324

    .line 770
    :goto_17d
    new-instance v21, Ljava/lang/NumberFormatException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not a valid number."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 701
    .end local v4    # "allZeros":Z
    .end local v7    # "dec":Ljava/lang/String;
    .end local v9    # "exp":Ljava/lang/String;
    .end local v17    # "mant":Ljava/lang/String;
    .end local v18    # "numeric":Ljava/lang/String;
    :cond_19a
    add-int/lit8 v21, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "dec":Ljava/lang/String;
    goto :goto_125

    .line 705
    .end local v7    # "dec":Ljava/lang/String;
    :cond_1a5
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v10, v0, :cond_1d9

    .line 706
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-le v10, v0, :cond_1d0

    .line 707
    new-instance v21, Ljava/lang/NumberFormatException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not a valid number."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 709
    :cond_1d0
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 713
    .restart local v17    # "mant":Ljava/lang/String;
    :goto_1d6
    const/4 v7, 0x0

    .restart local v7    # "dec":Ljava/lang/String;
    goto/16 :goto_12b

    .line 711
    .end local v7    # "dec":Ljava/lang/String;
    .end local v17    # "mant":Ljava/lang/String;
    :cond_1d9
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "mant":Ljava/lang/String;
    goto :goto_1d6

    .line 719
    .restart local v7    # "dec":Ljava/lang/String;
    :cond_1de
    const/4 v9, 0x0

    .restart local v9    # "exp":Ljava/lang/String;
    goto/16 :goto_15b

    .line 723
    .restart local v18    # "numeric":Ljava/lang/String;
    :cond_1e1
    const/4 v4, 0x0

    goto :goto_17a

    .line 727
    .restart local v4    # "allZeros":Z
    :sswitch_1e3
    if-nez v7, :cond_222

    if-nez v9, :cond_222

    .line 729
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_20f

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x2d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_20f

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_215

    :cond_20f
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_222

    .line 731
    :cond_215
    :try_start_215
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_218
    .catch Ljava/lang/NumberFormatException; {:try_start_215 .. :try_end_218} :catch_21b

    move-result-object v11

    goto/16 :goto_3

    .line 732
    :catch_21b
    move-exception v21

    .line 735
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v11

    goto/16 :goto_3

    .line 738
    :cond_222
    new-instance v21, Ljava/lang/NumberFormatException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not a valid number."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 742
    :sswitch_23f
    :try_start_23f
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    .line 743
    .local v11, "f":Ljava/lang/Float;
    invoke-virtual {v11}, Ljava/lang/Float;->isInfinite()Z

    move-result v21

    if-nez v21, :cond_255

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F
    :try_end_24c
    .catch Ljava/lang/NumberFormatException; {:try_start_23f .. :try_end_24c} :catch_321

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-nez v21, :cond_3

    if-nez v4, :cond_3

    .line 756
    .end local v11    # "f":Ljava/lang/Float;
    :cond_255
    :goto_255
    :sswitch_255
    :try_start_255
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 757
    .local v6, "d":Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->isInfinite()Z

    move-result v21

    if-nez v21, :cond_274

    invoke-virtual {v6}, Ljava/lang/Double;->floatValue()F
    :try_end_262
    .catch Ljava/lang/NumberFormatException; {:try_start_255 .. :try_end_262} :catch_273

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmpl-double v21, v22, v24

    if-nez v21, :cond_270

    if-eqz v4, :cond_274

    :cond_270
    move-object v11, v6

    .line 758
    goto/16 :goto_3

    .line 760
    .end local v6    # "d":Ljava/lang/Double;
    :catch_273
    move-exception v21

    .line 764
    :cond_274
    :try_start_274
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_277
    .catch Ljava/lang/NumberFormatException; {:try_start_274 .. :try_end_277} :catch_31e

    move-result-object v11

    goto/16 :goto_3

    .line 776
    .end local v4    # "allZeros":Z
    .end local v9    # "exp":Ljava/lang/String;
    .end local v18    # "numeric":Ljava/lang/String;
    :cond_27a
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v10, v0, :cond_2a4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v10, v0, :cond_2a4

    .line 777
    add-int/lit8 v21, v10, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 781
    .restart local v9    # "exp":Ljava/lang/String;
    :goto_29a
    if-nez v7, :cond_2b4

    if-nez v9, :cond_2b4

    .line 784
    :try_start_29e
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_2a1
    .catch Ljava/lang/NumberFormatException; {:try_start_29e .. :try_end_2a1} :catch_2a6

    move-result-object v11

    goto/16 :goto_3

    .line 779
    .end local v9    # "exp":Ljava/lang/String;
    :cond_2a4
    const/4 v9, 0x0

    .restart local v9    # "exp":Ljava/lang/String;
    goto :goto_29a

    .line 785
    :catch_2a6
    move-exception v21

    .line 789
    :try_start_2a7
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_2aa
    .catch Ljava/lang/NumberFormatException; {:try_start_2a7 .. :try_end_2aa} :catch_2ad

    move-result-object v11

    goto/16 :goto_3

    .line 790
    :catch_2ad
    move-exception v21

    .line 793
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v11

    goto/16 :goto_3

    .line 797
    :cond_2b4
    invoke-static/range {v17 .. v17}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_312

    invoke-static {v9}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_312

    const/4 v4, 0x1

    .line 799
    .restart local v4    # "allZeros":Z
    :goto_2c1
    :try_start_2c1
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    .line 800
    .restart local v11    # "f":Ljava/lang/Float;
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 801
    .restart local v6    # "d":Ljava/lang/Double;
    invoke-virtual {v11}, Ljava/lang/Float;->isInfinite()Z

    move-result v21

    if-nez v21, :cond_2e9

    .line 802
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-nez v21, :cond_2db

    if-eqz v4, :cond_2e9

    .line 803
    :cond_2db
    invoke-virtual {v11}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 806
    :cond_2e9
    invoke-virtual {v6}, Ljava/lang/Double;->isInfinite()Z

    move-result v21

    if-nez v21, :cond_318

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v21, v22, v24

    if-nez v21, :cond_2fb

    if-eqz v4, :cond_318

    .line 807
    :cond_2fb
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 808
    .local v5, "b":Ljava/math/BigDecimal;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
    :try_end_30c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c1 .. :try_end_30c} :catch_317

    move-result v21

    if-nez v21, :cond_314

    move-object v11, v6

    .line 809
    goto/16 :goto_3

    .line 797
    .end local v4    # "allZeros":Z
    .end local v5    # "b":Ljava/math/BigDecimal;
    .end local v6    # "d":Ljava/lang/Double;
    .end local v11    # "f":Ljava/lang/Float;
    :cond_312
    const/4 v4, 0x0

    goto :goto_2c1

    .restart local v4    # "allZeros":Z
    .restart local v5    # "b":Ljava/math/BigDecimal;
    .restart local v6    # "d":Ljava/lang/Double;
    .restart local v11    # "f":Ljava/lang/Float;
    :cond_314
    move-object v11, v5

    .line 811
    goto/16 :goto_3

    .line 813
    .end local v5    # "b":Ljava/math/BigDecimal;
    .end local v6    # "d":Ljava/lang/Double;
    .end local v11    # "f":Ljava/lang/Float;
    :catch_317
    move-exception v21

    .line 816
    :cond_318
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v11

    goto/16 :goto_3

    .line 765
    .restart local v18    # "numeric":Ljava/lang/String;
    :catch_31e
    move-exception v21

    goto/16 :goto_17d

    .line 749
    :catch_321
    move-exception v21

    goto/16 :goto_255

    .line 724
    :sswitch_data_324
    .sparse-switch
        0x44 -> :sswitch_255
        0x46 -> :sswitch_23f
        0x4c -> :sswitch_1e3
        0x64 -> :sswitch_255
        0x66 -> :sswitch_23f
        0x6c -> :sswitch_1e3
    .end sparse-switch
.end method

.method private static getMantissa(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 828
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMantissa(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stopPos"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 841
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 842
    .local v0, "firstChar":C
    const/16 v4, 0x2d

    if-eq v0, v4, :cond_e

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_16

    :cond_e
    move v1, v3

    .line 844
    .local v1, "hasSign":Z
    :goto_f
    if-eqz v1, :cond_18

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_15
    return-object v2

    .end local v1    # "hasSign":Z
    :cond_16
    move v1, v2

    .line 842
    goto :goto_f

    .line 844
    .restart local v1    # "hasSign":Z
    :cond_18
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_15
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 856
    if-nez p0, :cond_5

    .line 864
    :cond_4
    :goto_4
    return v1

    .line 859
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1a

    .line 860
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_17

    move v1, v2

    .line 861
    goto :goto_4

    .line 859
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 864
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public static isCreatable(Ljava/lang/String;)Z
    .registers 16
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x39

    const/16 v13, 0x2e

    const/16 v12, 0x30

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1599
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1708
    :cond_e
    :goto_e
    return v9

    .line 1602
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1603
    .local v1, "chars":[C
    array-length v7, v1

    .line 1604
    .local v7, "sz":I
    const/4 v4, 0x0

    .line 1605
    .local v4, "hasExp":Z
    const/4 v3, 0x0

    .line 1606
    .local v3, "hasDecPoint":Z
    const/4 v0, 0x0

    .line 1607
    .local v0, "allowSigns":Z
    const/4 v2, 0x0

    .line 1609
    .local v2, "foundDigit":Z
    aget-char v10, v1, v9

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_24

    aget-char v10, v1, v9

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_6d

    :cond_24
    move v6, v8

    .line 1610
    .local v6, "start":I
    :goto_25
    add-int/lit8 v10, v6, 0x1

    if-le v7, v10, :cond_8f

    aget-char v10, v1, v6

    if-ne v10, v12, :cond_8f

    invoke-static {p0, v13}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result v10

    if-nez v10, :cond_8f

    .line 1611
    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    const/16 v11, 0x78

    if-eq v10, v11, :cond_43

    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    const/16 v11, 0x58

    if-ne v10, v11, :cond_71

    .line 1612
    :cond_43
    add-int/lit8 v5, v6, 0x2

    .line 1613
    .local v5, "i":I
    if-eq v5, v7, :cond_e

    .line 1617
    :goto_47
    array-length v10, v1

    if-ge v5, v10, :cond_6f

    .line 1618
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_52

    aget-char v10, v1, v5

    if-le v10, v14, :cond_6a

    :cond_52
    aget-char v10, v1, v5

    const/16 v11, 0x61

    if-lt v10, v11, :cond_5e

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-le v10, v11, :cond_6a

    :cond_5e
    aget-char v10, v1, v5

    const/16 v11, 0x41

    if-lt v10, v11, :cond_e

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-gt v10, v11, :cond_e

    .line 1617
    :cond_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .end local v5    # "i":I
    .end local v6    # "start":I
    :cond_6d
    move v6, v9

    .line 1609
    goto :goto_25

    .restart local v5    # "i":I
    .restart local v6    # "start":I
    :cond_6f
    move v9, v8

    .line 1624
    goto :goto_e

    .line 1625
    .end local v5    # "i":I
    :cond_71
    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_8f

    .line 1627
    add-int/lit8 v5, v6, 0x1

    .line 1628
    .restart local v5    # "i":I
    :goto_7d
    array-length v10, v1

    if-ge v5, v10, :cond_8d

    .line 1629
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_e

    aget-char v10, v1, v5

    const/16 v11, 0x37

    if-gt v10, v11, :cond_e

    .line 1628
    add-int/lit8 v5, v5, 0x1

    goto :goto_7d

    :cond_8d
    move v9, v8

    .line 1633
    goto :goto_e

    .line 1636
    .end local v5    # "i":I
    :cond_8f
    add-int/lit8 v7, v7, -0x1

    .line 1638
    move v5, v6

    .line 1641
    .restart local v5    # "i":I
    :goto_92
    if-lt v5, v7, :cond_9c

    add-int/lit8 v10, v7, 0x1

    if-ge v5, v10, :cond_d7

    if-eqz v0, :cond_d7

    if-nez v2, :cond_d7

    .line 1642
    :cond_9c
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_a9

    aget-char v10, v1, v5

    if-gt v10, v14, :cond_a9

    .line 1643
    const/4 v2, 0x1

    .line 1644
    const/4 v0, 0x0

    .line 1672
    :goto_a6
    add-int/lit8 v5, v5, 0x1

    goto :goto_92

    .line 1646
    :cond_a9
    aget-char v10, v1, v5

    if-ne v10, v13, :cond_b3

    .line 1647
    if-nez v3, :cond_e

    if-nez v4, :cond_e

    .line 1651
    const/4 v3, 0x1

    goto :goto_a6

    .line 1652
    :cond_b3
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_bf

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-ne v10, v11, :cond_c6

    .line 1654
    :cond_bf
    if-nez v4, :cond_e

    .line 1658
    if-eqz v2, :cond_e

    .line 1661
    const/4 v4, 0x1

    .line 1662
    const/4 v0, 0x1

    goto :goto_a6

    .line 1663
    :cond_c6
    aget-char v10, v1, v5

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_d2

    aget-char v10, v1, v5

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_e

    .line 1664
    :cond_d2
    if-eqz v0, :cond_e

    .line 1667
    const/4 v0, 0x0

    .line 1668
    const/4 v2, 0x0

    goto :goto_a6

    .line 1674
    :cond_d7
    array-length v10, v1

    if-ge v5, v10, :cond_130

    .line 1675
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_e5

    aget-char v10, v1, v5

    if-gt v10, v14, :cond_e5

    move v9, v8

    .line 1677
    goto/16 :goto_e

    .line 1679
    :cond_e5
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_e

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-eq v10, v11, :cond_e

    .line 1683
    aget-char v10, v1, v5

    if-ne v10, v13, :cond_fc

    .line 1684
    if-nez v3, :cond_e

    if-nez v4, :cond_e

    move v9, v2

    .line 1689
    goto/16 :goto_e

    .line 1691
    :cond_fc
    if-nez v0, :cond_119

    aget-char v10, v1, v5

    const/16 v11, 0x64

    if-eq v10, v11, :cond_116

    aget-char v10, v1, v5

    const/16 v11, 0x44

    if-eq v10, v11, :cond_116

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-eq v10, v11, :cond_116

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-ne v10, v11, :cond_119

    :cond_116
    move v9, v2

    .line 1696
    goto/16 :goto_e

    .line 1698
    :cond_119
    aget-char v10, v1, v5

    const/16 v11, 0x6c

    if-eq v10, v11, :cond_125

    aget-char v10, v1, v5

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_e

    .line 1701
    :cond_125
    if-eqz v2, :cond_12e

    if-nez v4, :cond_12e

    if-nez v3, :cond_12e

    :goto_12b
    move v9, v8

    goto/16 :goto_e

    :cond_12e
    move v8, v9

    goto :goto_12b

    .line 1708
    :cond_130
    if-nez v0, :cond_137

    if-eqz v2, :cond_137

    :goto_134
    move v9, v8

    goto/16 :goto_e

    :cond_137
    move v8, v9

    goto :goto_134
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1543
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1573
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->isCreatable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isParsable(Ljava/lang/String;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1729
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1741
    :cond_8
    :goto_8
    return v0

    .line 1732
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_8

    .line 1735
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2a

    .line 1736
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_8

    .line 1739
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_8

    .line 1741
    :cond_2a
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_8
.end method

.method public static max(BBB)B
    .registers 3
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .prologue
    .line 1490
    if-le p1, p0, :cond_3

    .line 1491
    move p0, p1

    .line 1493
    :cond_3
    if-le p2, p0, :cond_6

    .line 1494
    move p0, p2

    .line 1496
    :cond_6
    return p0
.end method

.method public static varargs max([B)B
    .registers 4
    .param p0, "array"    # [B

    .prologue
    .line 1239
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1242
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    .line 1243
    .local v1, "max":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 1244
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_10

    .line 1245
    aget-byte v1, p0, v0

    .line 1243
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1249
    :cond_13
    return v1
.end method

.method public static max(DDD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 1512
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs max([D)D
    .registers 7
    .param p0, "array"    # [D

    .prologue
    .line 1264
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1267
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 1268
    .local v2, "max":D
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 1269
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1270
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1277
    .end local v2    # "max":D
    :cond_14
    return-wide v2

    .line 1272
    .restart local v2    # "max":D
    :cond_15
    aget-wide v4, p0, v0

    cmpl-double v1, v4, v2

    if-lez v1, :cond_1d

    .line 1273
    aget-wide v2, p0, v0

    .line 1268
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static max(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 1528
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static varargs max([F)F
    .registers 4
    .param p0, "array"    # [F

    .prologue
    .line 1292
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1295
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 1296
    .local v1, "max":F
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_14

    .line 1297
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1298
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1305
    .end local v1    # "max":F
    :cond_14
    return v1

    .line 1300
    .restart local v1    # "max":F
    :cond_15
    aget v2, p0, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1d

    .line 1301
    aget v1, p0, v0

    .line 1296
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static max(III)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 1454
    if-le p1, p0, :cond_3

    .line 1455
    move p0, p1

    .line 1457
    :cond_3
    if-le p2, p0, :cond_6

    .line 1458
    move p0, p2

    .line 1460
    :cond_6
    return p0
.end method

.method public static varargs max([I)I
    .registers 4
    .param p0, "array"    # [I

    .prologue
    .line 1191
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1194
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 1195
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 1196
    aget v2, p0, v0

    if-le v2, v1, :cond_10

    .line 1197
    aget v1, p0, v0

    .line 1195
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1201
    :cond_13
    return v1
.end method

.method public static max(JJJ)J
    .registers 8
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 1436
    cmp-long v0, p2, p0

    if-lez v0, :cond_5

    .line 1437
    move-wide p0, p2

    .line 1439
    :cond_5
    cmp-long v0, p4, p0

    if-lez v0, :cond_a

    .line 1440
    move-wide p0, p4

    .line 1442
    :cond_a
    return-wide p0
.end method

.method public static varargs max([J)J
    .registers 7
    .param p0, "array"    # [J

    .prologue
    .line 1167
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1170
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 1171
    .local v2, "max":J
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_15

    .line 1172
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_12

    .line 1173
    aget-wide v2, p0, v0

    .line 1171
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1177
    :cond_15
    return-wide v2
.end method

.method public static max(SSS)S
    .registers 3
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .prologue
    .line 1472
    if-le p1, p0, :cond_3

    .line 1473
    move p0, p1

    .line 1475
    :cond_3
    if-le p2, p0, :cond_6

    .line 1476
    move p0, p2

    .line 1478
    :cond_6
    return p0
.end method

.method public static varargs max([S)S
    .registers 4
    .param p0, "array"    # [S

    .prologue
    .line 1215
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1218
    const/4 v2, 0x0

    aget-short v1, p0, v2

    .line 1219
    .local v1, "max":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 1220
    aget-short v2, p0, v0

    if-le v2, v1, :cond_10

    .line 1221
    aget-short v1, p0, v0

    .line 1219
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1225
    :cond_13
    return v1
.end method

.method public static min(BBB)B
    .registers 3
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .prologue
    .line 1384
    if-ge p1, p0, :cond_3

    .line 1385
    move p0, p1

    .line 1387
    :cond_3
    if-ge p2, p0, :cond_6

    .line 1388
    move p0, p2

    .line 1390
    :cond_6
    return p0
.end method

.method public static varargs min([B)B
    .registers 4
    .param p0, "array"    # [B

    .prologue
    .line 1085
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1088
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    .line 1089
    .local v1, "min":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 1090
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_10

    .line 1091
    aget-byte v1, p0, v0

    .line 1089
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1095
    :cond_13
    return v1
.end method

.method public static min(DDD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 1406
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs min([D)D
    .registers 7
    .param p0, "array"    # [D

    .prologue
    .line 1110
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1113
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 1114
    .local v2, "min":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 1115
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1116
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1123
    .end local v2    # "min":D
    :cond_14
    return-wide v2

    .line 1118
    .restart local v2    # "min":D
    :cond_15
    aget-wide v4, p0, v0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_1d

    .line 1119
    aget-wide v2, p0, v0

    .line 1114
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static min(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 1422
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static varargs min([F)F
    .registers 4
    .param p0, "array"    # [F

    .prologue
    .line 1138
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1141
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 1142
    .local v1, "min":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_14

    .line 1143
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1144
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1151
    .end local v1    # "min":F
    :cond_14
    return v1

    .line 1146
    .restart local v1    # "min":F
    :cond_15
    aget v2, p0, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1d

    .line 1147
    aget v1, p0, v0

    .line 1142
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static min(III)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 1348
    if-ge p1, p0, :cond_3

    .line 1349
    move p0, p1

    .line 1351
    :cond_3
    if-ge p2, p0, :cond_6

    .line 1352
    move p0, p2

    .line 1354
    :cond_6
    return p0
.end method

.method public static varargs min([I)I
    .registers 4
    .param p0, "array"    # [I

    .prologue
    .line 1037
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1040
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 1041
    .local v1, "min":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 1042
    aget v2, p0, v0

    if-ge v2, v1, :cond_10

    .line 1043
    aget v1, p0, v0

    .line 1041
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1047
    :cond_13
    return v1
.end method

.method public static min(JJJ)J
    .registers 8
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 1330
    cmp-long v0, p2, p0

    if-gez v0, :cond_5

    .line 1331
    move-wide p0, p2

    .line 1333
    :cond_5
    cmp-long v0, p4, p0

    if-gez v0, :cond_a

    .line 1334
    move-wide p0, p4

    .line 1336
    :cond_a
    return-wide p0
.end method

.method public static varargs min([J)J
    .registers 7
    .param p0, "array"    # [J

    .prologue
    .line 1013
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1016
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 1017
    .local v2, "min":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_15

    .line 1018
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_12

    .line 1019
    aget-wide v2, p0, v0

    .line 1017
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1023
    :cond_15
    return-wide v2
.end method

.method public static min(SSS)S
    .registers 3
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .prologue
    .line 1366
    if-ge p1, p0, :cond_3

    .line 1367
    move p0, p1

    .line 1369
    :cond_3
    if-ge p2, p0, :cond_6

    .line 1370
    move p0, p2

    .line 1372
    :cond_6
    return p0
.end method

.method public static varargs min([S)S
    .registers 4
    .param p0, "array"    # [S

    .prologue
    .line 1061
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1064
    const/4 v2, 0x0

    aget-short v1, p0, v2

    .line 1065
    .local v1, "min":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 1066
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_10

    .line 1067
    aget-short v1, p0, v0

    .line 1065
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1071
    :cond_13
    return v1
.end method

.method public static toByte(Ljava/lang/String;)B
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # B

    .prologue
    .line 369
    if-nez p0, :cond_3

    .line 375
    .end local p1    # "defaultValue":B
    :goto_2
    return p1

    .line 373
    .restart local p1    # "defaultValue":B
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    .line 374
    :catch_8
    move-exception v0

    .line 375
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method public static toDouble(Ljava/lang/String;)D
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 255
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 278
    if-nez p0, :cond_3

    .line 284
    .end local p1    # "defaultValue":D
    :goto_2
    return-wide p1

    .line 282
    .restart local p1    # "defaultValue":D
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-wide p1

    goto :goto_2

    .line 283
    :catch_8
    move-exception v0

    .line 284
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method public static toDouble(Ljava/math/BigDecimal;)D
    .registers 3
    .param p0, "value"    # Ljava/math/BigDecimal;

    .prologue
    .line 305
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/math/BigDecimal;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/math/BigDecimal;D)D
    .registers 4
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "defaultValue"    # D

    .prologue
    .line 326
    if-nez p0, :cond_3

    .end local p1    # "defaultValue":D
    :goto_2
    return-wide p1

    .restart local p1    # "defaultValue":D
    :cond_3
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    goto :goto_2
.end method

.method public static toFloat(Ljava/lang/String;)F
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 226
    if-nez p0, :cond_3

    .line 232
    .end local p1    # "defaultValue":F
    :goto_2
    return p1

    .line 230
    .restart local p1    # "defaultValue":F
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    .line 231
    :catch_8
    move-exception v0

    .line 232
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method public static toInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 125
    if-nez p0, :cond_3

    .line 131
    .end local p1    # "defaultValue":I
    :goto_2
    return p1

    .line 129
    .restart local p1    # "defaultValue":I
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    .line 130
    :catch_8
    move-exception v0

    .line 131
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method public static toLong(Ljava/lang/String;)J
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 153
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 174
    if-nez p0, :cond_3

    .line 180
    .end local p1    # "defaultValue":J
    :goto_2
    return-wide p1

    .line 178
    .restart local p1    # "defaultValue":J
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-wide p1

    goto :goto_2

    .line 179
    :catch_8
    move-exception v0

    .line 180
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;
    .registers 3
    .param p0, "value"    # Ljava/lang/Double;

    .prologue
    .line 518
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 5
    .param p0, "value"    # Ljava/lang/Double;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 534
    if-nez p0, :cond_5

    .line 535
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 537
    :goto_4
    return-object v0

    .line 538
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 537
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_4
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;)Ljava/math/BigDecimal;
    .registers 3
    .param p0, "value"    # Ljava/lang/Float;

    .prologue
    .line 479
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 5
    .param p0, "value"    # Ljava/lang/Float;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 495
    if-nez p0, :cond_5

    .line 496
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 498
    :goto_4
    return-object v0

    .line 499
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 498
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_4
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 557
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 573
    if-nez p0, :cond_5

    .line 574
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 576
    :goto_4
    return-object v0

    .line 577
    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 576
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_4
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3
    .param p0, "value"    # Ljava/math/BigDecimal;

    .prologue
    .line 441
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 4
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 457
    if-nez p0, :cond_5

    .line 458
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 460
    .end local p2    # "roundingMode":Ljava/math/RoundingMode;
    :goto_4
    return-object v0

    .restart local p2    # "roundingMode":Ljava/math/RoundingMode;
    :cond_5
    if-nez p2, :cond_9

    sget-object p2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .end local p2    # "roundingMode":Ljava/math/RoundingMode;
    :cond_9
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_4
.end method

.method public static toShort(Ljava/lang/String;)S
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # S

    .prologue
    .line 418
    if-nez p0, :cond_3

    .line 424
    .end local p1    # "defaultValue":S
    :goto_2
    return p1

    .line 422
    .restart local p1    # "defaultValue":S
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    .line 423
    :catch_8
    move-exception v0

    .line 424
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method private static validateArray(Ljava/lang/Object;)V
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1315
    if-eqz p0, :cond_1a

    move v0, v1

    :goto_5
    const-string v3, "The Array must not be null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1316
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1c

    :goto_12
    const-string v0, "Array cannot be empty."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1317
    return-void

    :cond_1a
    move v0, v2

    .line 1315
    goto :goto_5

    :cond_1c
    move v1, v2

    .line 1316
    goto :goto_12
.end method

.method private static withDecimalsParsing(Ljava/lang/String;I)Z
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "beginIdx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1745
    const/4 v0, 0x0

    .line 1746
    .local v0, "decimalPoints":I
    move v1, p1

    .local v1, "i":I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2b

    .line 1747
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_1a

    move v2, v4

    .line 1748
    .local v2, "isDecimalPoint":Z
    :goto_13
    if-eqz v2, :cond_17

    .line 1749
    add-int/lit8 v0, v0, 0x1

    .line 1751
    :cond_17
    if-le v0, v4, :cond_1c

    .line 1758
    .end local v2    # "isDecimalPoint":Z
    :cond_19
    :goto_19
    return v3

    :cond_1a
    move v2, v3

    .line 1747
    goto :goto_13

    .line 1754
    .restart local v2    # "isDecimalPoint":Z
    :cond_1c
    if-nez v2, :cond_28

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1746
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v2    # "isDecimalPoint":Z
    :cond_2b
    move v3, v4

    .line 1758
    goto :goto_19
.end method
