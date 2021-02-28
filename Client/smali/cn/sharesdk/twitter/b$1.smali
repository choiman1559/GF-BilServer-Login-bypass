.class Lcn/sharesdk/twitter/b$1;
.super Ljava/lang/Object;
.source "TwitterHelper.java"

# interfaces
.implements Lcn/sharesdk/twitter/UpLoadViewCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/twitter/b;->b(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcn/sharesdk/twitter/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/twitter/b;Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 368
    iput-object p1, p0, Lcn/sharesdk/twitter/b$1;->c:Lcn/sharesdk/twitter/b;

    iput-object p2, p0, Lcn/sharesdk/twitter/b$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcn/sharesdk/twitter/b$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResule(Ljava/lang/String;)V
    .registers 10
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcn/sharesdk/twitter/b$1;->c:Lcn/sharesdk/twitter/b;

    iget-object v1, p0, Lcn/sharesdk/twitter/b$1;->c:Lcn/sharesdk/twitter/b;

    invoke-static {v1}, Lcn/sharesdk/twitter/b;->a(Lcn/sharesdk/twitter/b;)Lcn/sharesdk/twitter/MappedFileReader;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/sharesdk/twitter/b;->a(Lcn/sharesdk/twitter/b;Lcn/sharesdk/twitter/MappedFileReader;)[B

    move-result-object v0

    .line 372
    if-eqz v0, :cond_1e

    .line 373
    invoke-static {v0}, Lcn/sharesdk/twitter/MappedFileReader;->byteToBase64([B)Ljava/lang/String;

    move-result-object v2

    .line 374
    iget-object v1, p0, Lcn/sharesdk/twitter/b$1;->c:Lcn/sharesdk/twitter/b;

    const/4 v3, 0x1

    iget-object v5, p0, Lcn/sharesdk/twitter/b$1;->a:Ljava/lang/String;

    iget-wide v6, p0, Lcn/sharesdk/twitter/b$1;->b:J

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Lcn/sharesdk/twitter/b;->a(Lcn/sharesdk/twitter/b;Ljava/lang/String;ZLcn/sharesdk/twitter/UpLoadViewCallBack;Ljava/lang/String;J)V

    .line 380
    :cond_1d
    :goto_1d
    return-void

    .line 376
    :cond_1e
    iget-object v0, p0, Lcn/sharesdk/twitter/b$1;->c:Lcn/sharesdk/twitter/b;

    invoke-static {v0}, Lcn/sharesdk/twitter/b;->a(Lcn/sharesdk/twitter/b;)Lcn/sharesdk/twitter/MappedFileReader;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 377
    iget-object v0, p0, Lcn/sharesdk/twitter/b$1;->c:Lcn/sharesdk/twitter/b;

    invoke-static {v0}, Lcn/sharesdk/twitter/b;->a(Lcn/sharesdk/twitter/b;)Lcn/sharesdk/twitter/MappedFileReader;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/twitter/MappedFileReader;->close()V

    goto :goto_1d
.end method
