.class Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;
.super Ljava/lang/Object;
.source "BaseHttpFrameworkServiceImp.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->requestHttp(Lcom/lohanry/android/framework/network/httprequest/BaseRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

.field final synthetic val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;


# direct methods
.method constructor <init>(Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;Lcom/lohanry/android/framework/network/httprequest/BaseRequest;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->this$0:Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

    iput-object p2, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 10
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v5, 0x1

    .line 50
    iget-object v6, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-virtual {v6}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->getTotalRequestTime()I

    move-result v4

    .line 51
    .local v4, "times":I
    iget-object v6, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-virtual {v6}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->getMaxRequestTime()I

    move-result v3

    .line 52
    .local v3, "maxTimes":I
    iget-object v6, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-virtual {v6}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->getDelayTime()J

    move-result-wide v0

    .line 53
    .local v0, "delay":J
    if-lt v4, v3, :cond_2d

    move v2, v5

    .line 54
    .local v2, "finalRequest":Z
    :goto_16
    iget-object v6, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-virtual {v6, p1, p2, v2}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->onFailure(Lokhttp3/Call;Ljava/io/IOException;Z)Z

    move-result v6

    if-nez v6, :cond_2f

    if-nez v2, :cond_2f

    .line 55
    iget-object v6, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-virtual {v6, v5}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->addTotalRequestTime(I)V

    .line 56
    iget-object v5, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->this$0:Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

    iget-object v6, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-static {v5, v6, p0, v0, v1}, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->access$000(Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;Lcom/lohanry/android/framework/network/httprequest/BaseRequest;Lokhttp3/Callback;J)V

    .line 60
    :goto_2c
    return-void

    .line 53
    .end local v2    # "finalRequest":Z
    :cond_2d
    const/4 v2, 0x0

    goto :goto_16

    .line 58
    .restart local v2    # "finalRequest":Z
    :cond_2f
    iget-object v5, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-virtual {v5}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->clearTotalRequestTime()V

    goto :goto_2c
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 10
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 64
    iget-object v6, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-virtual {v6}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->getTotalRequestTime()I

    move-result v4

    .line 65
    .local v4, "times":I
    iget-object v6, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-virtual {v6}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->getMaxRequestTime()I

    move-result v3

    .line 66
    .local v3, "maxTimes":I
    iget-object v6, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-virtual {v6}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->getDelayTime()J

    move-result-wide v0

    .line 67
    .local v0, "delay":J
    if-lt v4, v3, :cond_2d

    move v2, v5

    .line 68
    .local v2, "finalRequest":Z
    :goto_16
    iget-object v6, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-virtual {v6, p1, p2, v2}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->onResponse(Lokhttp3/Call;Lokhttp3/Response;Z)Z

    move-result v6

    if-nez v6, :cond_2f

    if-nez v2, :cond_2f

    .line 69
    iget-object v6, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-virtual {v6, v5}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->addTotalRequestTime(I)V

    .line 70
    iget-object v5, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->this$0:Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

    iget-object v6, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-static {v5, v6, p0, v0, v1}, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->access$000(Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;Lcom/lohanry/android/framework/network/httprequest/BaseRequest;Lokhttp3/Callback;J)V

    .line 74
    :goto_2c
    return-void

    .line 67
    .end local v2    # "finalRequest":Z
    :cond_2d
    const/4 v2, 0x0

    goto :goto_16

    .line 72
    .restart local v2    # "finalRequest":Z
    :cond_2f
    iget-object v5, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;->val$baseRequest:Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-virtual {v5}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->clearTotalRequestTime()V

    goto :goto_2c
.end method
