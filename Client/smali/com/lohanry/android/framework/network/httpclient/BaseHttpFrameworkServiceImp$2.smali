.class Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$2;
.super Ljava/lang/Object;
.source "BaseHttpFrameworkServiceImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->delayRequest(Lcom/lohanry/android/framework/network/httprequest/BaseRequest;Lokhttp3/Callback;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

.field final synthetic val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

.field final synthetic val$callback:Lokhttp3/Callback;

.field final synthetic val$delay:J


# direct methods
.method constructor <init>(Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;JLcom/lohanry/android/framework/network/httprequest/BaseRequest;Lokhttp3/Callback;)V
    .registers 6
    .param p1, "this$0"    # Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$2;->this$0:Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

    iput-wide p2, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$2;->val$delay:J

    iput-object p4, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$2;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    iput-object p5, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$2;->val$callback:Lokhttp3/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 84
    :try_start_0
    iget-wide v2, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$2;->val$delay:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 85
    iget-object v1, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$2;->this$0:Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

    iget-object v2, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$2;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    iget-object v3, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$2;->val$callback:Lokhttp3/Callback;

    invoke-virtual {v1, v2, v3}, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->request(Lcom/lohanry/android/framework/network/httprequest/BaseRequest;Lokhttp3/Callback;)Lokhttp3/Call;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_f

    .line 90
    :goto_e
    return-void

    .line 86
    :catch_f
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 88
    iget-object v1, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$2;->val$callback:Lokhttp3/Callback;

    const/4 v2, 0x0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "InterruptedException"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_e
.end method
