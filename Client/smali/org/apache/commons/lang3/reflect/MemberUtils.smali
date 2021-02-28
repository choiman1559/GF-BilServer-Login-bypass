.class abstract Lorg/apache/commons/lang3/reflect/MemberUtils;
.super Ljava/lang/Object;
.source "MemberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    }
.end annotation


# static fields
.field private static final ACCESS_TEST:I = 0x7

.field private static final ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareConstructorFit(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "left":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p1, "right":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p2, "actual":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$000(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$000(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/lang3/reflect/MemberUtils;->compareParameterTypes(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method static compareMethodFit(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;[Ljava/lang/Class;)I
    .registers 5
    .param p0, "left"    # Ljava/lang/reflect/Method;
    .param p1, "right"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "actual":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$100(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$100(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/lang3/reflect/MemberUtils;->compareParameterTypes(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method private static compareParameterTypes(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I
    .registers 6
    .param p0, "left"    # Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .param p1, "right"    # Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, "actual":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p2, p0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;)F

    move-result v0

    .line 137
    .local v0, "leftCost":F
    invoke-static {p2, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;)F

    move-result v1

    .line 138
    .local v1, "rightCost":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_e

    const/4 v2, -0x1

    :goto_d
    return v2

    :cond_e
    cmpg-float v2, v1, v0

    if-gez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_d

    :cond_14
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private static getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 196
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v0

    .line 219
    :cond_a
    :goto_a
    return v0

    .line 198
    :cond_b
    const/4 v0, 0x0

    .line 199
    .local v0, "cost":F
    :goto_c
    if-eqz p0, :cond_23

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 200
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 206
    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    .line 216
    :cond_23
    if-nez p0, :cond_a

    .line 217
    const/high16 v1, 0x3fc00000    # 1.5f

    add-float/2addr v0, v1

    goto :goto_a

    .line 209
    :cond_29
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 210
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_c
.end method

.method private static getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    .prologue
    .local p0, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const v5, 0x3dcccccd    # 0.1f

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "cost":F
    move-object v0, p0

    .line 232
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_10

    .line 234
    add-float/2addr v1, v5

    .line 235
    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 237
    :cond_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-eq v0, p1, :cond_2f

    sget-object v3, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v3, v3

    if-ge v2, v3, :cond_2f

    .line 238
    sget-object v3, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    aget-object v3, v3, v2

    if-ne v0, v3, :cond_2c

    .line 239
    add-float/2addr v1, v5

    .line 240
    sget-object v3, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2c

    .line 241
    sget-object v3, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    add-int/lit8 v4, v2, 0x1

    aget-object v0, v3, v4

    .line 237
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 245
    :cond_2f
    return v1
.end method

.method private static getTotalTransformationCost([Ljava/lang/Class;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;)F
    .registers 16
    .param p1, "executable"    # Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            ")F"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "srcArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 150
    .local v0, "destArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->isVarArgs()Z

    move-result v4

    .line 153
    .local v4, "isVarArgs":Z
    const/4 v10, 0x0

    .line 154
    .local v10, "totalCost":F
    if-eqz v4, :cond_19

    array-length v12, v0

    add-int/lit8 v12, v12, -0x1

    int-to-long v6, v12

    .line 155
    .local v6, "normalArgsLen":J
    :goto_f
    array-length v12, p0

    int-to-long v12, v12

    cmp-long v12, v12, v6

    if-gez v12, :cond_1c

    .line 156
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    .line 183
    :goto_18
    return v12

    .line 154
    .end local v6    # "normalArgsLen":J
    :cond_19
    array-length v12, v0

    int-to-long v6, v12

    goto :goto_f

    .line 158
    .restart local v6    # "normalArgsLen":J
    :cond_1c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    int-to-long v12, v3

    cmp-long v12, v12, v6

    if-gez v12, :cond_2e

    .line 159
    aget-object v12, p0, v3

    aget-object v13, v0, v3

    invoke-static {v12, v13}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v12

    add-float/2addr v10, v12

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 161
    :cond_2e
    if-eqz v4, :cond_5e

    .line 164
    array-length v12, p0

    array-length v13, v0

    if-ge v12, v13, :cond_60

    const/4 v5, 0x1

    .line 165
    .local v5, "noVarArgsPassed":Z
    :goto_35
    array-length v12, p0

    array-length v13, v0

    if-ne v12, v13, :cond_62

    array-length v12, p0

    add-int/lit8 v12, v12, -0x1

    aget-object v12, p0, v12

    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v12

    if-eqz v12, :cond_62

    const/4 v2, 0x1

    .line 167
    .local v2, "explicitArrayForVarags":Z
    :goto_45
    const v11, 0x3a83126f    # 0.001f

    .line 168
    .local v11, "varArgsCost":F
    array-length v12, v0

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v0, v12

    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 169
    .local v1, "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_64

    .line 171
    const-class v12, Ljava/lang/Object;

    invoke-static {v1, v12}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v12

    const v13, 0x3a83126f    # 0.001f

    add-float/2addr v12, v13

    add-float/2addr v10, v12

    .end local v1    # "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "explicitArrayForVarags":Z
    .end local v5    # "noVarArgsPassed":Z
    .end local v11    # "varArgsCost":F
    :cond_5e
    :goto_5e
    move v12, v10

    .line 183
    goto :goto_18

    .line 164
    :cond_60
    const/4 v5, 0x0

    goto :goto_35

    .line 165
    .restart local v5    # "noVarArgsPassed":Z
    :cond_62
    const/4 v2, 0x0

    goto :goto_45

    .line 172
    .restart local v1    # "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "explicitArrayForVarags":Z
    .restart local v11    # "varArgsCost":F
    :cond_64
    if-eqz v2, :cond_79

    .line 173
    array-length v12, p0

    add-int/lit8 v12, v12, -0x1

    aget-object v12, p0, v12

    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    .line 174
    .local v8, "sourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v8, v1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v12

    const v13, 0x3a83126f    # 0.001f

    add-float/2addr v12, v13

    add-float/2addr v10, v12

    .line 175
    goto :goto_5e

    .line 177
    .end local v8    # "sourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_79
    array-length v12, v0

    add-int/lit8 v3, v12, -0x1

    :goto_7c
    array-length v12, p0

    if-ge v3, v12, :cond_5e

    .line 178
    aget-object v9, p0, v3

    .line 179
    .local v9, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v9, v1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v12

    const v13, 0x3a83126f    # 0.001f

    add-float/2addr v12, v13

    add-float/2addr v10, v12

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c
.end method

.method static isAccessible(Ljava/lang/reflect/Member;)Z
    .registers 2
    .param p0, "m"    # Ljava/lang/reflect/Member;

    .prologue
    .line 86
    if-eqz p0, :cond_14

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static isMatchingConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "method":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$000(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isMatchingExecutable(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static isMatchingExecutable(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z
    .registers 9
    .param p0, "method"    # Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 257
    invoke-virtual {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 258
    .local v1, "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1, v1, v3}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 278
    :cond_c
    :goto_c
    return v3

    .line 262
    :cond_d
    invoke-virtual {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->isVarArgs()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_2b

    array-length v5, p1

    if-ge v0, v5, :cond_2b

    .line 265
    aget-object v5, p1, v0

    aget-object v6, v1, v0

    invoke-static {v5, v6, v3}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v5

    if-nez v5, :cond_28

    move v3, v4

    .line 266
    goto :goto_c

    .line 264
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 269
    :cond_2b
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 270
    .local v2, "varArgParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_34
    array-length v5, p1

    if-ge v0, v5, :cond_c

    .line 271
    aget-object v5, p1, v0

    invoke-static {v5, v2, v3}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v5

    if-nez v5, :cond_41

    move v3, v4

    .line 272
    goto :goto_c

    .line 270
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .end local v0    # "i":I
    .end local v2    # "varArgParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_44
    move v3, v4

    .line 278
    goto :goto_c
.end method

.method static isMatchingMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Z
    .registers 3
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$100(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isMatchingExecutable(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static isPackageAccess(I)Z
    .registers 2
    .param p0, "modifiers"    # I

    .prologue
    .line 77
    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Z
    .registers 5
    .param p0, "o"    # Ljava/lang/reflect/AccessibleObject;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    move v1, v2

    .line 68
    :goto_b
    return v1

    :cond_c
    move-object v0, p0

    .line 59
    check-cast v0, Ljava/lang/reflect/Member;

    .line 60
    .local v0, "m":Ljava/lang/reflect/Member;
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_33

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isPackageAccess(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 62
    const/4 v3, 0x1

    :try_start_2e
    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_b

    .line 64
    :catch_32
    move-exception v1

    :cond_33
    move v1, v2

    .line 68
    goto :goto_b
.end method
