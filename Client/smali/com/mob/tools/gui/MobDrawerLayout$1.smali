.class Lcom/mob/tools/gui/MobDrawerLayout$1;
.super Ljava/lang/Object;
.source "MobDrawerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/MobDrawerLayout;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/gui/MobDrawerLayout;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/MobDrawerLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mob/tools/gui/MobDrawerLayout;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout$1;->this$0:Lcom/mob/tools/gui/MobDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    return-void
.end method
