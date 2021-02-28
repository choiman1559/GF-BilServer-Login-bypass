.class Lcom/bsgamesdk/android/api/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/f;->a(Landroid/content/Context;Lcom/bsgamesdk/android/api/h;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/bsgamesdk/android/api/f;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/f;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/api/f$1;->b:Lcom/bsgamesdk/android/api/f;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/f$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/api/f$1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://tv.danmaku.bili.providers.BiliDataProvider/status/logged"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/api/f$1;->b:Lcom/bsgamesdk/android/api/f;

    invoke-static {v2}, Lcom/bsgamesdk/android/api/f;->a(Lcom/bsgamesdk/android/api/f;)[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_22

    iget-object v0, p0, Lcom/bsgamesdk/android/api/f$1;->b:Lcom/bsgamesdk/android/api/f;

    invoke-static {v0, v6}, Lcom/bsgamesdk/android/api/f;->a(Lcom/bsgamesdk/android/api/f;Z)Z

    :goto_21
    return-void

    :cond_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/bsgamesdk/android/api/f$1;->b:Lcom/bsgamesdk/android/api/f;

    const-string v2, "uid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bsgamesdk/android/api/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/f$1;->b:Lcom/bsgamesdk/android/api/f;

    const-string v0, "logged"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_4c

    const/4 v0, 0x1

    :goto_45
    invoke-static {v2, v0}, Lcom/bsgamesdk/android/api/f;->a(Lcom/bsgamesdk/android/api/f;Z)Z

    :cond_48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :cond_4c
    move v0, v6

    goto :goto_45
.end method
