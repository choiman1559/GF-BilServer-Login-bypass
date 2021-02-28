.class Lcn/sharesdk/vkontakte/b$1;
.super Ljava/lang/Thread;
.source "VKontakteImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/vkontakte/b;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLcn/sharesdk/framework/PlatformActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:F

.field final synthetic h:F

.field final synthetic i:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic j:Lcn/sharesdk/vkontakte/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/vkontakte/b;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLcn/sharesdk/framework/PlatformActionListener;)V
    .registers 11

    .prologue
    .line 258
    iput-object p1, p0, Lcn/sharesdk/vkontakte/b$1;->j:Lcn/sharesdk/vkontakte/b;

    iput-object p2, p0, Lcn/sharesdk/vkontakte/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/sharesdk/vkontakte/b$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcn/sharesdk/vkontakte/b$1;->c:Z

    iput-object p5, p0, Lcn/sharesdk/vkontakte/b$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/sharesdk/vkontakte/b$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcn/sharesdk/vkontakte/b$1;->f:Ljava/lang/String;

    iput p8, p0, Lcn/sharesdk/vkontakte/b$1;->g:F

    iput p9, p0, Lcn/sharesdk/vkontakte/b$1;->h:F

    iput-object p10, p0, Lcn/sharesdk/vkontakte/b$1;->i:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 261
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/vkontakte/b$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    iget-object v0, p0, Lcn/sharesdk/vkontakte/b$1;->j:Lcn/sharesdk/vkontakte/b;

    iget-object v1, p0, Lcn/sharesdk/vkontakte/b$1;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcn/sharesdk/vkontakte/b$1;->c:Z

    iget-object v3, p0, Lcn/sharesdk/vkontakte/b$1;->d:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcn/sharesdk/vkontakte/b$1;->e:Ljava/lang/String;

    iget-object v7, p0, Lcn/sharesdk/vkontakte/b$1;->f:Ljava/lang/String;

    iget v8, p0, Lcn/sharesdk/vkontakte/b$1;->g:F

    iget v9, p0, Lcn/sharesdk/vkontakte/b$1;->h:F

    iget-object v10, p0, Lcn/sharesdk/vkontakte/b$1;->i:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual/range {v0 .. v10}, Lcn/sharesdk/vkontakte/b;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_21

    .line 268
    :cond_20
    :goto_20
    return-void

    .line 263
    :catch_21
    move-exception v0

    .line 264
    iget-object v1, p0, Lcn/sharesdk/vkontakte/b$1;->i:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_20

    .line 265
    iget-object v1, p0, Lcn/sharesdk/vkontakte/b$1;->i:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/vkontakte/b$1;->j:Lcn/sharesdk/vkontakte/b;

    invoke-static {v2}, Lcn/sharesdk/vkontakte/b;->a(Lcn/sharesdk/vkontakte/b;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_20
.end method
