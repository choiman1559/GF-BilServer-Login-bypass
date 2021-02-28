.class public Lcom/mob/tools/gui/PullToRequestView;
.super Landroid/widget/RelativeLayout;
.source "PullToRequestView.java"


# static fields
.field private static final MIN_REF_TIME:J = 0x3e8L


# instance fields
.field private adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

.field private bodyView:Landroid/view/View;

.field private downY:F

.field private footerHeight:I

.field private footerView:Landroid/view/View;

.field private headerHeight:I

.field private headerView:Landroid/view/View;

.field private pullTime:J

.field private pullingDownLock:Z

.field private pullingUpLock:Z

.field private state:I

.field private stopAct:Ljava/lang/Runnable;

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->init()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/gui/PullToRequestView;)V
    .registers 1
    .param p0, "x0"    # Lcom/mob/tools/gui/PullToRequestView;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->reversePulling()V

    return-void
.end method

.method private canPullDown()Z
    .registers 2

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingDownLock:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->isPullDownReady()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private canPullUp()Z
    .registers 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingUpLock:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->isPullUpReady()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x3

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    .line 203
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .registers 2

    .prologue
    .line 46
    new-instance v0, Lcom/mob/tools/gui/PullToRequestView$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/PullToRequestView$1;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->stopAct:Ljava/lang/Runnable;

    .line 51
    return-void
.end method

.method private performRequestNext()V
    .registers 3

    .prologue
    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullTime:J

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    .line 245
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v0, :cond_12

    .line 246
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->onRequestNext()V

    .line 248
    :cond_12
    return-void
.end method

.method private reversePulling()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 252
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 253
    invoke-virtual {p0, v0, v0}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 254
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    .line 255
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v0, :cond_11

    .line 256
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->onReversed()V

    .line 258
    :cond_11
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x64

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1be

    .line 199
    :cond_c
    :goto_c
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 90
    :pswitch_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    goto :goto_c

    .line 93
    :pswitch_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 94
    .local v0, "curY":F
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    packed-switch v1, :pswitch_data_1ca

    .line 112
    :pswitch_21
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    if-lez v1, :cond_92

    .line 113
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    sub-float v2, v0, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 114
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    if-gez v1, :cond_37

    .line 115
    iput v3, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 117
    :cond_37
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 118
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v1, :cond_51

    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    if-eqz v1, :cond_51

    .line 119
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullDown(I)V

    .line 121
    :cond_51
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 153
    :cond_55
    :goto_55
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    goto :goto_c

    .line 96
    :pswitch_58
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    sub-float v2, v0, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 97
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    if-gez v1, :cond_6a

    .line 98
    iput v3, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 100
    :cond_6a
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 101
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 102
    goto :goto_55

    .line 104
    :pswitch_75
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    sub-float v2, v0, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 105
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    if-lez v1, :cond_87

    .line 106
    iput v3, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 108
    :cond_87
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 109
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 110
    goto :goto_55

    .line 122
    :cond_92
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    if-gez v1, :cond_c8

    .line 123
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    sub-float v2, v0, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 124
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    if-lez v1, :cond_a8

    .line 125
    iput v3, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 127
    :cond_a8
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 128
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v1, :cond_c3

    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    if-eqz v1, :cond_c3

    .line 129
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    .line 131
    :cond_c3
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_55

    .line 132
    :cond_c8
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_101

    .line 133
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->canPullDown()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 134
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    sub-float v2, v0, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 135
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 136
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v1, :cond_fb

    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    if-eqz v1, :cond_fb

    .line 137
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    .line 139
    :cond_fb
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto/16 :goto_55

    .line 141
    :cond_101
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_55

    .line 142
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->canPullUp()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 143
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    sub-float v2, v0, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 144
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 145
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v1, :cond_134

    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    if-eqz v1, :cond_134

    .line 146
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    .line 148
    :cond_134
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto/16 :goto_55

    .line 157
    .end local v0    # "curY":F
    :pswitch_13a
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    packed-switch v1, :pswitch_data_1d4

    goto/16 :goto_c

    .line 192
    :pswitch_141
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    neg-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 193
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    goto/16 :goto_c

    .line 159
    :pswitch_14e
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    if-le v1, v2, :cond_170

    .line 160
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 161
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 162
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v1, :cond_167

    .line 163
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    invoke-virtual {v1, v5}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullDown(I)V

    .line 165
    :cond_167
    invoke-virtual {p0}, Lcom/mob/tools/gui/PullToRequestView;->performFresh()V

    .line 166
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto/16 :goto_c

    .line 167
    :cond_170
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_194

    .line 168
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    neg-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 169
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 170
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v1, :cond_18b

    .line 171
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    invoke-virtual {v1, v5}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    .line 173
    :cond_18b
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->performRequestNext()V

    .line 174
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto/16 :goto_c

    .line 175
    :cond_194
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    if-eqz v1, :cond_c

    .line 176
    invoke-virtual {p0, v3, v3}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 177
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v1, :cond_1a8

    .line 178
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    if-lez v1, :cond_1ac

    .line 179
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    invoke-virtual {v1, v3}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullDown(I)V

    .line 184
    :cond_1a8
    :goto_1a8
    iput v3, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    goto/16 :goto_c

    .line 181
    :cond_1ac
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    invoke-virtual {v1, v3}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    goto :goto_1a8

    .line 188
    :pswitch_1b2
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 189
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    goto/16 :goto_c

    .line 88
    :pswitch_data_1be
    .packed-switch 0x0
        :pswitch_11
        :pswitch_13a
        :pswitch_18
        :pswitch_13a
    .end packed-switch

    .line 94
    :pswitch_data_1ca
    .packed-switch -0x1
        :pswitch_75
        :pswitch_21
        :pswitch_58
    .end packed-switch

    .line 157
    :pswitch_data_1d4
    .packed-switch -0x1
        :pswitch_141
        :pswitch_14e
        :pswitch_1b2
    .end packed-switch
.end method

.method public lockPullingDown()V
    .registers 2

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingDownLock:Z

    .line 274
    return-void
.end method

.method public lockPullingUp()V
    .registers 2

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingUpLock:Z

    .line 279
    return-void
.end method

.method protected performFresh()V
    .registers 3

    .prologue
    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullTime:J

    .line 223
    const/4 v0, 0x1

    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    .line 224
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v0, :cond_12

    .line 225
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->onRefresh()V

    .line 227
    :cond_12
    return-void
.end method

.method public performPullingDown(Z)V
    .registers 4
    .param p1, "request"    # Z

    .prologue
    .line 214
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 215
    const/4 v0, 0x0

    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 216
    if-eqz p1, :cond_10

    .line 217
    invoke-virtual {p0}, Lcom/mob/tools/gui/PullToRequestView;->performFresh()V

    .line 219
    :cond_10
    return-void
.end method

.method public performPullingUp(Z)V
    .registers 4
    .param p1, "request"    # Z

    .prologue
    .line 235
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    neg-int v0, v0

    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 236
    const/4 v0, 0x0

    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 237
    if-eqz p1, :cond_11

    .line 238
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->performRequestNext()V

    .line 240
    :cond_11
    return-void
.end method

.method public releasePullingDownLock()V
    .registers 2

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingDownLock:Z

    .line 284
    return-void
.end method

.method public releasePullingUpLock()V
    .registers 2

    .prologue
    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingUpLock:Z

    .line 289
    return-void
.end method

.method public setAdapter(Lcom/mob/tools/gui/PullToRequestAdatper;)V
    .registers 11
    .param p1, "adapter"    # Lcom/mob/tools/gui/PullToRequestAdatper;

    .prologue
    const/4 v4, -0x1

    const/16 v8, 0xb

    const/16 v7, 0x9

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 54
    iput-object p1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 55
    invoke-virtual {p0}, Lcom/mob/tools/gui/PullToRequestView;->removeAllViews()V

    .line 57
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRequestAdatper;->getBodyView()Lcom/mob/tools/gui/Scrollable;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->bodyView:Landroid/view/View;

    .line 58
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v0, "lpBody":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->bodyView:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Lcom/mob/tools/gui/PullToRequestView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRequestAdatper;->getHeaderView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerView:Landroid/view/View;

    .line 65
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerView:Landroid/view/View;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerView:Landroid/view/View;

    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 67
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    .line 68
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v2, "lpHead":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    neg-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 73
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerView:Landroid/view/View;

    invoke-virtual {p0, v3, v2}, Lcom/mob/tools/gui/PullToRequestView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRequestAdatper;->getFooterView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->footerView:Landroid/view/View;

    .line 76
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->footerView:Landroid/view/View;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->footerView:Landroid/view/View;

    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 78
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->footerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    .line 79
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    invoke-direct {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v1, "lpFooter":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    neg-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 84
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->footerView:Landroid/view/View;

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    return-void
.end method

.method public stopPulling()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x3e8

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 263
    .local v0, "curTime":J
    iget-wide v4, p0, Lcom/mob/tools/gui/PullToRequestView;->pullTime:J

    sub-long v2, v0, v4

    .line 264
    .local v2, "delta":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_15

    .line 265
    iget-object v4, p0, Lcom/mob/tools/gui/PullToRequestView;->stopAct:Ljava/lang/Runnable;

    sub-long/2addr v6, v2

    invoke-virtual {p0, v4, v6, v7}, Lcom/mob/tools/gui/PullToRequestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    :goto_14
    return-void

    .line 267
    :cond_15
    iget-object v4, p0, Lcom/mob/tools/gui/PullToRequestView;->stopAct:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/mob/tools/gui/PullToRequestView;->post(Ljava/lang/Runnable;)Z

    goto :goto_14
.end method
