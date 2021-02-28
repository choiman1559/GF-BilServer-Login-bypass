.class public abstract Lcom/mob/tools/gui/ViewPagerAdapter;
.super Ljava/lang/Object;
.source "ViewPagerAdapter.java"


# instance fields
.field private parent:Lcom/mob/tools/gui/MobViewPager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mob/tools/gui/ViewPagerAdapter;->parent:Lcom/mob/tools/gui/MobViewPager;

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, p0, Lcom/mob/tools/gui/ViewPagerAdapter;->parent:Lcom/mob/tools/gui/MobViewPager;

    invoke-virtual {v0, p0}, Lcom/mob/tools/gui/MobViewPager;->setAdapter(Lcom/mob/tools/gui/ViewPagerAdapter;)V

    .line 29
    :cond_9
    return-void
.end method

.method public onScreenChange(II)V
    .registers 3
    .param p1, "currentScreen"    # I
    .param p2, "lastScreen"    # I

    .prologue
    .line 21
    return-void
.end method

.method public onScreenChanging(F)V
    .registers 2
    .param p1, "position"    # F

    .prologue
    .line 17
    return-void
.end method

.method final setMobViewPager(Lcom/mob/tools/gui/MobViewPager;)V
    .registers 2
    .param p1, "mvp"    # Lcom/mob/tools/gui/MobViewPager;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/mob/tools/gui/ViewPagerAdapter;->parent:Lcom/mob/tools/gui/MobViewPager;

    .line 11
    return-void
.end method
