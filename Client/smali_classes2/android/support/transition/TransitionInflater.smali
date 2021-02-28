.class public Landroid/support/transition/TransitionInflater;
.super Ljava/lang/Object;
.source "TransitionInflater.java"


# static fields
.field private static final CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 45
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 12
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "expectedType"    # Ljava/lang/Class;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v4, 0x0

    const-string v5, "class"

    invoke-interface {p1, v4, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "className":Ljava/lang/String;
    if-nez v1, :cond_22

    .line 196
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tag must have a \'class\' attribute"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 200
    :cond_22
    :try_start_22
    sget-object v5, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    monitor-enter v5
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_62

    .line 201
    :try_start_25
    sget-object v4, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 202
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    if-nez v2, :cond_4e

    .line 204
    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 205
    invoke-virtual {v4, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 206
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_4e

    .line 207
    sget-object v4, Landroid/support/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 208
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 209
    sget-object v4, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4e
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object p1, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 214
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :catchall_5f
    move-exception v4

    monitor-exit v5
    :try_end_61
    .catchall {:try_start_25 .. :try_end_61} :catchall_5f

    :try_start_61
    throw v4
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_62} :catch_62

    .line 215
    :catch_62
    move-exception v3

    .line 216
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not instantiate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)Landroid/support/transition/Transition;
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parent"    # Landroid/support/transition/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v2, 0x0

    .line 120
    .local v2, "transition":Landroid/support/transition/Transition;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 122
    .local v0, "depth":I
    instance-of v5, p3, Landroid/support/transition/TransitionSet;

    if-eqz v5, :cond_45

    move-object v5, p3

    check-cast v5, Landroid/support/transition/TransitionSet;

    move-object v3, v5

    .line 125
    .local v3, "transitionSet":Landroid/support/transition/TransitionSet;
    :cond_d
    :goto_d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_17f

    :cond_1a
    const/4 v5, 0x1

    if-eq v4, v5, :cond_17f

    .line 128
    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    .line 132
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "name":Ljava/lang/String;
    const-string v5, "fade"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 134
    new-instance v2, Landroid/support/transition/Fade;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/Fade;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    .restart local v2    # "transition":Landroid/support/transition/Transition;
    :goto_33
    if-eqz v2, :cond_d

    .line 177
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 178
    invoke-direct {p0, p1, p2, v2}, Landroid/support/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)Landroid/support/transition/Transition;

    .line 180
    :cond_3e
    if-eqz v3, :cond_175

    .line 181
    invoke-virtual {v3, v2}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 182
    const/4 v2, 0x0

    goto :goto_d

    .line 122
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "transitionSet":Landroid/support/transition/TransitionSet;
    .end local v4    # "type":I
    :cond_45
    const/4 v3, 0x0

    goto :goto_d

    .line 135
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "transitionSet":Landroid/support/transition/TransitionSet;
    .restart local v4    # "type":I
    :cond_47
    const-string v5, "changeBounds"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 136
    new-instance v2, Landroid/support/transition/ChangeBounds;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/ChangeBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto :goto_33

    .line 137
    :cond_57
    const-string v5, "slide"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 138
    new-instance v2, Landroid/support/transition/Slide;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/Slide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto :goto_33

    .line 139
    :cond_67
    const-string v5, "explode"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 140
    new-instance v2, Landroid/support/transition/Explode;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/Explode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto :goto_33

    .line 141
    :cond_77
    const-string v5, "changeImageTransform"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 142
    new-instance v2, Landroid/support/transition/ChangeImageTransform;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/ChangeImageTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto :goto_33

    .line 143
    :cond_87
    const-string v5, "changeTransform"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 144
    new-instance v2, Landroid/support/transition/ChangeTransform;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/ChangeTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto :goto_33

    .line 145
    :cond_97
    const-string v5, "changeClipBounds"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 146
    new-instance v2, Landroid/support/transition/ChangeClipBounds;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/ChangeClipBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto :goto_33

    .line 147
    :cond_a7
    const-string v5, "autoTransition"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 148
    new-instance v2, Landroid/support/transition/AutoTransition;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/AutoTransition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto/16 :goto_33

    .line 149
    :cond_b8
    const-string v5, "changeScroll"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 150
    new-instance v2, Landroid/support/transition/ChangeScroll;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/ChangeScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto/16 :goto_33

    .line 151
    :cond_c9
    const-string v5, "transitionSet"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 152
    new-instance v2, Landroid/support/transition/TransitionSet;

    .end local v2    # "transition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/support/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto/16 :goto_33

    .line 153
    :cond_da
    const-string v5, "transition"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 154
    const-class v5, Landroid/support/transition/Transition;

    const-string v6, "transition"

    invoke-direct {p0, p2, v5, v6}, Landroid/support/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "transition":Landroid/support/transition/Transition;
    check-cast v2, Landroid/support/transition/Transition;

    .restart local v2    # "transition":Landroid/support/transition/Transition;
    goto/16 :goto_33

    .line 155
    :cond_ee
    const-string v5, "targets"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fb

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/TransitionInflater;->getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)V

    goto/16 :goto_33

    .line 157
    :cond_fb
    const-string v5, "arcMotion"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_119

    .line 158
    if-nez p3, :cond_10d

    .line 159
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid use of arcMotion element"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 161
    :cond_10d
    new-instance v5, Landroid/support/transition/ArcMotion;

    iget-object v6, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/support/transition/ArcMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p3, v5}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    goto/16 :goto_33

    .line 162
    :cond_119
    const-string v5, "pathMotion"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13a

    .line 163
    if-nez p3, :cond_12b

    .line 164
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid use of pathMotion element"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 166
    :cond_12b
    const-class v5, Landroid/support/transition/PathMotion;

    const-string v6, "pathMotion"

    invoke-direct {p0, p2, v5, v6}, Landroid/support/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/PathMotion;

    invoke-virtual {p3, v5}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    goto/16 :goto_33

    .line 168
    :cond_13a
    const-string v5, "patternPathMotion"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_158

    .line 169
    if-nez p3, :cond_14c

    .line 170
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid use of patternPathMotion element"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 172
    :cond_14c
    new-instance v5, Landroid/support/transition/PatternPathMotion;

    iget-object v6, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/support/transition/PatternPathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p3, v5}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    goto/16 :goto_33

    .line 174
    :cond_158
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown scene name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 183
    :cond_175
    if-eqz p3, :cond_d

    .line 184
    new-instance v5, Landroid/view/InflateException;

    const-string v6, "Could not add transition to another transition."

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 189
    .end local v1    # "name":Ljava/lang/String;
    :cond_17f
    return-object v2
.end method

.method private createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/support/transition/TransitionManager;
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "sceneRoot"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 286
    .local v0, "depth":I
    const/4 v2, 0x0

    .line 288
    .local v2, "transitionManager":Landroid/support/transition/TransitionManager;
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_55

    :cond_12
    const/4 v4, 0x1

    if-eq v3, v4, :cond_55

    .line 291
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 295
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "name":Ljava/lang/String;
    const-string v4, "transitionManager"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 297
    new-instance v2, Landroid/support/transition/TransitionManager;

    .end local v2    # "transitionManager":Landroid/support/transition/TransitionManager;
    invoke-direct {v2}, Landroid/support/transition/TransitionManager;-><init>()V

    .restart local v2    # "transitionManager":Landroid/support/transition/TransitionManager;
    goto :goto_5

    .line 298
    :cond_2a
    const-string v4, "transition"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    if-eqz v2, :cond_38

    .line 299
    invoke-direct {p0, p2, p1, p3, v2}, Landroid/support/transition/TransitionInflater;->loadTransition(Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroid/support/transition/TransitionManager;)V

    goto :goto_5

    .line 301
    :cond_38
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown scene name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 304
    .end local v1    # "name":Ljava/lang/String;
    :cond_55
    return-object v2
.end method

.method public static from(Landroid/content/Context;)Landroid/support/transition/TransitionInflater;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v0, Landroid/support/transition/TransitionInflater;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)V
    .registers 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "transition"    # Landroid/support/transition/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 228
    .local v3, "depth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x3

    if-ne v8, v9, :cond_11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_c3

    :cond_11
    const/4 v9, 0x1

    if-eq v8, v9, :cond_c3

    .line 231
    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 235
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, "name":Ljava/lang/String;
    const-string v9, "target"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a6

    .line 237
    iget-object v9, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/support/transition/Styleable;->TRANSITION_TARGET:[I

    invoke-virtual {v9, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 238
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v9, "targetId"

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v0, p1, v9, v10, v11}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    .line 241
    .local v5, "id":I
    if-eqz v5, :cond_3c

    .line 242
    invoke-virtual {p3, v5}, Landroid/support/transition/Transition;->addTarget(I)Landroid/support/transition/Transition;

    .line 269
    :cond_38
    :goto_38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    .line 243
    :cond_3c
    const-string v9, "excludeId"

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v0, p1, v9, v10, v11}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_4b

    .line 245
    const/4 v9, 0x1

    invoke-virtual {p3, v5, v9}, Landroid/support/transition/Transition;->excludeTarget(IZ)Landroid/support/transition/Transition;

    goto :goto_38

    .line 246
    :cond_4b
    const-string v9, "targetName"

    const/4 v10, 0x4

    invoke-static {v0, p1, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .local v7, "transitionName":Ljava/lang/String;
    if-eqz v7, :cond_58

    .line 248
    invoke-virtual {p3, v7}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    goto :goto_38

    .line 249
    :cond_58
    const-string v9, "excludeName"

    const/4 v10, 0x5

    invoke-static {v0, p1, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_66

    .line 251
    const/4 v9, 0x1

    invoke-virtual {p3, v7, v9}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/support/transition/Transition;

    goto :goto_38

    .line 253
    :cond_66
    const-string v9, "excludeClass"

    const/4 v10, 0x3

    invoke-static {v0, p1, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_95

    .line 257
    :try_start_6f
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 258
    .local v2, "clazz":Ljava/lang/Class;
    const/4 v9, 0x1

    invoke-virtual {p3, v2, v9}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    :try_end_77
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6f .. :try_end_77} :catch_78

    goto :goto_38

    .line 264
    .end local v2    # "clazz":Ljava/lang/Class;
    :catch_78
    move-exception v4

    .line 265
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not create "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 259
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :cond_95
    :try_start_95
    const-string v9, "targetClass"

    const/4 v10, 0x0

    invoke-static {v0, p1, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 261
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 262
    .restart local v2    # "clazz":Ljava/lang/Class;
    invoke-virtual {p3, v2}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    :try_end_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_95 .. :try_end_a5} :catch_78

    goto :goto_38

    .line 271
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v5    # "id":I
    .end local v7    # "transitionName":Ljava/lang/String;
    :cond_a6
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown scene name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 274
    .end local v6    # "name":Ljava/lang/String;
    :cond_c3
    return-void
.end method

.method private loadTransition(Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroid/support/transition/TransitionManager;)V
    .registers 16
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p4, "transitionManager"    # Landroid/support/transition/TransitionManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 310
    iget-object v8, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/support/transition/Styleable;->TRANSITION_MANAGER:[I

    invoke-virtual {v8, p1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 311
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v8, "transition"

    const/4 v9, 0x2

    invoke-static {v0, p2, v8, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    .line 313
    .local v6, "transitionId":I
    const-string v8, "fromScene"

    const/4 v9, 0x0

    invoke-static {v0, p2, v8, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 315
    .local v1, "fromId":I
    if-gez v1, :cond_48

    move-object v2, v7

    .line 317
    .local v2, "fromScene":Landroid/support/transition/Scene;
    :goto_1b
    const-string v8, "toScene"

    const/4 v9, 0x1

    invoke-static {v0, p2, v8, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 319
    .local v3, "toId":I
    if-gez v3, :cond_4f

    move-object v4, v7

    .line 321
    .local v4, "toScene":Landroid/support/transition/Scene;
    :goto_25
    if-ltz v6, :cond_5b

    .line 322
    invoke-virtual {p0, v6}, Landroid/support/transition/TransitionInflater;->inflateTransition(I)Landroid/support/transition/Transition;

    move-result-object v5

    .line 323
    .local v5, "transition":Landroid/support/transition/Transition;
    if-eqz v5, :cond_5b

    .line 324
    if-nez v4, :cond_56

    .line 325
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No toScene for transition ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 315
    .end local v2    # "fromScene":Landroid/support/transition/Scene;
    .end local v3    # "toId":I
    .end local v4    # "toScene":Landroid/support/transition/Scene;
    .end local v5    # "transition":Landroid/support/transition/Transition;
    :cond_48
    iget-object v8, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p3, v1, v8}, Landroid/support/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/Scene;

    move-result-object v2

    goto :goto_1b

    .line 319
    .restart local v2    # "fromScene":Landroid/support/transition/Scene;
    .restart local v3    # "toId":I
    :cond_4f
    iget-object v7, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p3, v3, v7}, Landroid/support/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/Scene;

    move-result-object v4

    goto :goto_25

    .line 327
    .restart local v4    # "toScene":Landroid/support/transition/Scene;
    .restart local v5    # "transition":Landroid/support/transition/Transition;
    :cond_56
    if-nez v2, :cond_5f

    .line 328
    invoke-virtual {p4, v4, v5}, Landroid/support/transition/TransitionManager;->setTransition(Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V

    .line 334
    .end local v5    # "transition":Landroid/support/transition/Transition;
    :cond_5b
    :goto_5b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 335
    return-void

    .line 330
    .restart local v5    # "transition":Landroid/support/transition/Transition;
    :cond_5f
    invoke-virtual {p4, v2, v4, v5}, Landroid/support/transition/TransitionManager;->setTransition(Landroid/support/transition/Scene;Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V

    goto :goto_5b
.end method


# virtual methods
.method public inflateTransition(I)Landroid/support/transition/Transition;
    .registers 7
    .param p1, "resource"    # I

    .prologue
    .line 69
    iget-object v2, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 71
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_a
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/support/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)Landroid/support/transition/Transition;
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_12} :catch_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_27
    .catchall {:try_start_a .. :try_end_12} :catchall_22

    move-result-object v2

    .line 78
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v2

    .line 72
    :catch_17
    move-exception v0

    .line 73
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_18
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_22

    .line 78
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_22
    move-exception v2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2

    .line 74
    :catch_27
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    :try_start_28
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4d
    .catchall {:try_start_28 .. :try_end_4d} :catchall_22
.end method

.method public inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/support/transition/TransitionManager;
    .registers 8
    .param p1, "resource"    # I
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    iget-object v3, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 93
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_a
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Landroid/support/transition/TransitionInflater;->createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/support/transition/TransitionManager;
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_11} :catch_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_29
    .catchall {:try_start_a .. :try_end_11} :catchall_24

    move-result-object v3

    .line 105
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v3

    .line 94
    :catch_16
    move-exception v0

    .line 95
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_17
    new-instance v1, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "ex":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 97
    throw v1
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_24

    .line 105
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1    # "ex":Landroid/view/InflateException;
    :catchall_24
    move-exception v3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3

    .line 98
    :catch_29
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    :try_start_2a
    new-instance v1, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 101
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 102
    .restart local v1    # "ex":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 103
    throw v1
    :try_end_52
    .catchall {:try_start_2a .. :try_end_52} :catchall_24
.end method
