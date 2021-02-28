.class public Landroid/support/design/animation/MotionSpec;
.super Ljava/lang/Object;
.source "MotionSpec.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionSpec"


# instance fields
.field private final timings:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/design/animation/MotionTiming;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method private static addTimingFromAnimator(Landroid/support/design/animation/MotionSpec;Landroid/animation/Animator;)V
    .registers 6
    .param p0, "spec"    # Landroid/support/design/animation/MotionSpec;
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 149
    instance-of v1, p1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_13

    move-object v0, p1

    .line 150
    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 151
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/support/design/animation/MotionTiming;->createFromAnimator(Landroid/animation/ValueAnimator;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/support/design/animation/MotionSpec;->setTiming(Ljava/lang/String;Landroid/support/design/animation/MotionTiming;)V

    .line 155
    return-void

    .line 153
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animator must be an ObjectAnimator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/support/design/animation/MotionSpec;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributes"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 112
    .local v0, "resourceId":I
    if-eqz v0, :cond_12

    .line 113
    invoke-static {p0, v0}, Landroid/support/design/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Landroid/support/design/animation/MotionSpec;

    move-result-object v1

    .line 116
    .end local v0    # "resourceId":I
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static createFromResource(Landroid/content/Context;I)Landroid/support/design/animation/MotionSpec;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 123
    :try_start_1
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 124
    .local v1, "animator":Landroid/animation/Animator;
    instance-of v6, v1, Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_16

    .line 125
    move-object v0, v1

    check-cast v0, Landroid/animation/AnimatorSet;

    move-object v4, v0

    .line 126
    .local v4, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Landroid/support/design/animation/MotionSpec;->createSpecFromAnimators(Ljava/util/List;)Landroid/support/design/animation/MotionSpec;

    move-result-object v5

    .line 136
    .end local v1    # "animator":Landroid/animation/Animator;
    .end local v4    # "set":Landroid/animation/AnimatorSet;
    :cond_15
    :goto_15
    return-object v5

    .line 127
    .restart local v1    # "animator":Landroid/animation/Animator;
    :cond_16
    if-eqz v1, :cond_15

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v2}, Landroid/support/design/animation/MotionSpec;->createSpecFromAnimators(Ljava/util/List;)Landroid/support/design/animation/MotionSpec;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_25

    move-result-object v5

    goto :goto_15

    .line 134
    .end local v1    # "animator":Landroid/animation/Animator;
    .end local v2    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    :catch_25
    move-exception v3

    .line 135
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "MotionSpec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load animation resource ID #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private static createSpecFromAnimators(Ljava/util/List;)Landroid/support/design/animation/MotionSpec;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)",
            "Landroid/support/design/animation/MotionSpec;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v2, Landroid/support/design/animation/MotionSpec;

    invoke-direct {v2}, Landroid/support/design/animation/MotionSpec;-><init>()V

    .line 142
    .local v2, "spec":Landroid/support/design/animation/MotionSpec;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_a
    if-ge v1, v0, :cond_18

    .line 143
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v2, v3}, Landroid/support/design/animation/MotionSpec;->addTimingFromAnimator(Landroid/support/design/animation/MotionSpec;Landroid/animation/Animator;)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 145
    :cond_18
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 159
    if-ne p0, p1, :cond_4

    .line 160
    const/4 v1, 0x1

    .line 168
    :goto_3
    return v1

    .line 162
    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    .line 163
    :cond_10
    const/4 v1, 0x0

    goto :goto_3

    :cond_12
    move-object v0, p1

    .line 166
    check-cast v0, Landroid/support/design/animation/MotionSpec;

    .line 168
    .local v0, "that":Landroid/support/design/animation/MotionSpec;
    iget-object v1, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v2, v0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/support/design/animation/MotionSpec;->hasTiming(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 82
    :cond_c
    iget-object v0, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/animation/MotionTiming;

    return-object v0
.end method

.method public getTotalDuration()J
    .registers 11

    .prologue
    .line 95
    const-wide/16 v2, 0x0

    .line 96
    .local v2, "duration":J
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    .local v0, "count":I
    :goto_9
    if-ge v1, v0, :cond_23

    .line 97
    iget-object v5, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/animation/MotionTiming;

    .line 98
    .local v4, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v4}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 100
    .end local v4    # "timing":Landroid/support/design/animation/MotionTiming;
    :cond_23
    return-wide v2
.end method

.method public hasTiming(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public setTiming(Ljava/lang/String;Landroid/support/design/animation/MotionTiming;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timing"    # Landroid/support/design/animation/MotionTiming;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, "out":Ljava/lang/StringBuilder;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, " timings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
