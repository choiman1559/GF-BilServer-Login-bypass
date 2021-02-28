.class Lcom/onevcat/uniwebview/UniWebView$1;
.super Ljava/lang/Object;
.source "UniWebView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebView;->onCreateContextMenu(Landroid/view/ContextMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebView;

.field final synthetic val$downloadUrl:Ljava/lang/String;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebView;Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebView;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebView$1;->this$0:Lcom/onevcat/uniwebview/UniWebView;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebView$1;->val$res:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebView$1;->val$downloadUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 16
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 160
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v10, v11, :cond_3e

    iget-object v10, p0, Lcom/onevcat/uniwebview/UniWebView$1;->this$0:Lcom/onevcat/uniwebview/UniWebView;

    invoke-static {v10}, Lcom/onevcat/uniwebview/UniWebView;->access$000(Lcom/onevcat/uniwebview/UniWebView;)Landroid/app/Activity;

    move-result-object v10

    const-string v11, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3e

    .line 161
    iget-object v10, p0, Lcom/onevcat/uniwebview/UniWebView$1;->this$0:Lcom/onevcat/uniwebview/UniWebView;

    invoke-static {v10}, Lcom/onevcat/uniwebview/UniWebView;->access$000(Lcom/onevcat/uniwebview/UniWebView;)Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 162
    iget-object v10, p0, Lcom/onevcat/uniwebview/UniWebView$1;->val$res:Landroid/content/res/Resources;

    sget v11, Lcom/onevcat/uniwebview/R$string;->EXTERNAL_WRITE_PERMISSION_LACK:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, "permissionText":Ljava/lang/String;
    iget-object v10, p0, Lcom/onevcat/uniwebview/UniWebView$1;->this$0:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v10}, Lcom/onevcat/uniwebview/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 164
    const/4 v10, 0x0

    .line 191
    .end local v7    # "permissionText":Ljava/lang/String;
    :goto_3d
    return v10

    .line 167
    :cond_3e
    iget-object v10, p0, Lcom/onevcat/uniwebview/UniWebView$1;->val$downloadUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c4

    .line 168
    iget-object v10, p0, Lcom/onevcat/uniwebview/UniWebView$1;->val$downloadUrl:Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/onevcat/uniwebview/UniWebView$1;->val$downloadUrl:Ljava/lang/String;

    invoke-static {v12}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "fileName":Ljava/lang/String;
    new-instance v8, Landroid/app/DownloadManager$Request;

    iget-object v10, p0, Lcom/onevcat/uniwebview/UniWebView$1;->val$downloadUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 170
    .local v8, "request":Landroid/app/DownloadManager$Request;
    invoke-virtual {v8}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 171
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 172
    invoke-virtual {v8, v3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 173
    invoke-virtual {v8, v3}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 174
    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v8, v10, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 176
    iget-object v10, p0, Lcom/onevcat/uniwebview/UniWebView$1;->this$0:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v10}, Lcom/onevcat/uniwebview/UniWebView;->getCustomizeHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 177
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 179
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 180
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v8, v6, v9}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    goto :goto_7e

    .line 183
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_9a
    iget-object v10, p0, Lcom/onevcat/uniwebview/UniWebView$1;->this$0:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v10}, Lcom/onevcat/uniwebview/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "download"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 184
    .local v0, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual {v0, v8}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 185
    iget-object v10, p0, Lcom/onevcat/uniwebview/UniWebView$1;->val$res:Landroid/content/res/Resources;

    sget v11, Lcom/onevcat/uniwebview/R$string;->DOWNLOAD_STARTED:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "downloadStartedText":Ljava/lang/String;
    iget-object v10, p0, Lcom/onevcat/uniwebview/UniWebView$1;->this$0:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v10}, Lcom/onevcat/uniwebview/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 191
    .end local v0    # "downloadManager":Landroid/app/DownloadManager;
    .end local v1    # "downloadStartedText":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "request":Landroid/app/DownloadManager$Request;
    :goto_c1
    const/4 v10, 0x0

    goto/16 :goto_3d

    .line 188
    :cond_c4
    iget-object v10, p0, Lcom/onevcat/uniwebview/UniWebView$1;->val$res:Landroid/content/res/Resources;

    sget v11, Lcom/onevcat/uniwebview/R$string;->INVALID_URL:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "invalidURLText":Ljava/lang/String;
    iget-object v10, p0, Lcom/onevcat/uniwebview/UniWebView$1;->this$0:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v10}, Lcom/onevcat/uniwebview/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v5, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_c1
.end method
