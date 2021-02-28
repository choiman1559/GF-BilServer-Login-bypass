.class Lcn/sharesdk/dropbox/b$2;
.super Ljava/lang/Object;
.source "DropboxImpl.java"

# interfaces
.implements Lcn/sharesdk/dropbox/UploadViewCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/dropbox/b;->f(Ljava/lang/String;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcn/sharesdk/dropbox/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/dropbox/b;Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 241
    iput-object p1, p0, Lcn/sharesdk/dropbox/b$2;->c:Lcn/sharesdk/dropbox/b;

    iput-object p2, p0, Lcn/sharesdk/dropbox/b$2;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcn/sharesdk/dropbox/b$2;->b:J

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
    .line 244
    iget-object v0, p0, Lcn/sharesdk/dropbox/b$2;->c:Lcn/sharesdk/dropbox/b;

    iget-object v1, p0, Lcn/sharesdk/dropbox/b$2;->c:Lcn/sharesdk/dropbox/b;

    invoke-static {v1}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/dropbox/b;)Lcn/sharesdk/twitter/MappedFileReader;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/dropbox/b;Lcn/sharesdk/twitter/MappedFileReader;)[B

    move-result-object v1

    .line 245
    iget-object v0, p0, Lcn/sharesdk/dropbox/b$2;->c:Lcn/sharesdk/dropbox/b;

    iget-object v2, p0, Lcn/sharesdk/dropbox/b$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/dropbox/b$2;->c:Lcn/sharesdk/dropbox/b;

    invoke-static {v3}, Lcn/sharesdk/dropbox/b;->b(Lcn/sharesdk/dropbox/b;)I

    move-result v3

    int-to-long v3, v3

    iget-wide v6, p0, Lcn/sharesdk/dropbox/b$2;->b:J

    move-object v5, p0

    invoke-static/range {v0 .. v7}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/dropbox/b;[BLjava/lang/String;JLcn/sharesdk/dropbox/UploadViewCallBack;J)Ljava/util/HashMap;

    .line 246
    return-void
.end method
