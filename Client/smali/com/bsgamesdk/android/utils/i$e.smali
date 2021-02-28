.class public Lcom/bsgamesdk/android/utils/i$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/utils/i$e;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/i$e;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/bsgamesdk/android/utils/i$e;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
