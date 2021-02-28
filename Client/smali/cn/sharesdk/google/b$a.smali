.class public Lcn/sharesdk/google/b$a;
.super Ljava/lang/Object;
.source "GooglePlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:[Ljava/lang/String;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 714
    const-string v0, "android.intent.action.SEND"

    invoke-direct {p0, v0}, Lcn/sharesdk/google/b$a;-><init>(Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    .line 723
    iput-object p1, p0, Lcn/sharesdk/google/b$a;->f:Landroid/content/Context;

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/google/b$a;->d:Ljava/util/ArrayList;

    .line 725
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->d:Ljava/util/ArrayList;

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    .line 719
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcn/sharesdk/google/b$a;
    .registers 4

    .prologue
    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/google/b$a;->b:Ljava/util/ArrayList;

    .line 778
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 779
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcn/sharesdk/google/b$a;
    .registers 4

    .prologue
    .line 772
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 773
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcn/sharesdk/google/b$a;
    .registers 3

    .prologue
    .line 767
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    return-object p0
.end method

.method public a([Ljava/lang/String;)Lcn/sharesdk/google/b$a;
    .registers 2

    .prologue
    .line 750
    iput-object p1, p0, Lcn/sharesdk/google/b$a;->e:[Ljava/lang/String;

    .line 751
    return-object p0
.end method

.method public a()Lcn/sharesdk/google/b;
    .registers 8

    .prologue
    .line 755
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->c:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 756
    const-string v0, "<<default account>>"

    iput-object v0, p0, Lcn/sharesdk/google/b$a;->c:Ljava/lang/String;

    .line 758
    :cond_8
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/sharesdk/google/b$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 759
    new-instance v0, Lcn/sharesdk/google/b;

    iget-object v1, p0, Lcn/sharesdk/google/b$a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcn/sharesdk/google/b$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/google/b$a;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/sharesdk/google/b$a;->e:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcn/sharesdk/google/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Landroid/content/Intent;
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 809
    iget-object v1, p0, Lcn/sharesdk/google/b$a;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcn/sharesdk/google/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_40

    move v1, v0

    .line 810
    :goto_f
    iget-object v3, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 811
    iget-object v4, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    const-string v5, "com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 812
    if-eqz v1, :cond_27

    if-nez v4, :cond_42

    :cond_27
    :goto_27
    const-string v5, "Call-to-action buttons are only available for URLs."

    invoke-static {v0, v5}, Lcn/sharesdk/google/b;->a(ZLjava/lang/Object;)V

    .line 813
    if-eqz v4, :cond_44

    iget-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    const-string v5, "com.google.android.apps.plus.CONTENT_URL"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 814
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The content URL is required for interactive posts."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    move v1, v2

    .line 809
    goto :goto_f

    :cond_42
    move v0, v2

    .line 812
    goto :goto_27

    .line 816
    :cond_44
    if-nez v1, :cond_6d

    if-eqz v3, :cond_6d

    .line 817
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcn/sharesdk/google/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 819
    iget-object v5, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    const-string v6, "android.intent.extra.STREAM"

    iget-object v0, p0, Lcn/sharesdk/google/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 823
    :goto_6a
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/google/b$a;->b:Ljava/util/ArrayList;

    .line 825
    :cond_6d
    if-eqz v1, :cond_8d

    if-nez v3, :cond_8d

    .line 826
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcn/sharesdk/google/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 828
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcn/sharesdk/google/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 833
    :cond_8d
    :goto_8d
    if-eqz v4, :cond_bb

    iget-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus.CONTENT_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

    .line 834
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 835
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set content URL or content deep-link ID to use a call-to-action button."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_ab
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_6a

    .line 830
    :cond_b3
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_8d

    .line 837
    :cond_bb
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    iget-object v0, p0, Lcn/sharesdk/google/b$a;->a:Landroid/content/Intent;

    return-object v0
.end method
