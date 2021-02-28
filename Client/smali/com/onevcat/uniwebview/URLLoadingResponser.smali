.class Lcom/onevcat/uniwebview/URLLoadingResponser;
.super Ljava/lang/Object;
.source "URLLoadingResponser.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

.field private final logger:Lcom/onevcat/uniwebview/Logger;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    .line 32
    iput-object p3, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    .line 34
    return-void
.end method

.method private explicitlyIntent()Landroid/content/Intent;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 69
    invoke-direct {p0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->getLowerUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "intent:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    move-object v2, v5

    .line 89
    :cond_e
    :goto_e
    return-object v2

    .line 72
    :cond_f
    iget-object v6, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    const-string v7, "Received intent url..."

    invoke-virtual {v6, v7}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 74
    :try_start_16
    iget-object v6, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 75
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 76
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_e

    .line 79
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "intentId":Ljava/lang/String;
    if-nez v3, :cond_33

    move-object v2, v5

    .line 81
    goto :goto_e

    .line 83
    :cond_33
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v4, "marketIntent":Landroid/content/Intent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "market://details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_54} :catch_56

    move-object v2, v4

    .line 85
    goto :goto_e

    .line 87
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intentId":Ljava/lang/String;
    .end local v4    # "marketIntent":Landroid/content/Intent;
    :catch_56
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parsing intent url error. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    move-object v2, v5

    .line 89
    goto :goto_e
.end method

.method private getLowerUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mailToIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->getLowerUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 62
    const/4 v0, 0x0

    .line 65
    :goto_d
    return-object v0

    .line 64
    :cond_e
    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    const-string v1, "Received mailto url..."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    iget-object v2, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_d
.end method

.method private marketIntent()Landroid/content/Intent;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->getLowerUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "market:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 102
    :goto_d
    return-object v1

    .line 97
    :cond_e
    iget-object v2, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    const-string v3, "Received market url..."

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 99
    :try_start_15
    iget-object v2, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1b
    .catch Ljava/net/URISyntaxException; {:try_start_15 .. :try_end_1b} :catch_1d

    move-result-object v1

    goto :goto_d

    .line 100
    :catch_1d
    move-exception v0

    .line 101
    .local v0, "e":Ljava/net/URISyntaxException;
    iget-object v2, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing market url error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    goto :goto_d
.end method

.method private telIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->getLowerUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 54
    const/4 v0, 0x0

    .line 57
    :goto_d
    return-object v0

    .line 56
    :cond_e
    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    const-string v1, "Received tel url..."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    iget-object v2, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_d
.end method

.method private thirdPartyAppIntent()Landroid/content/Intent;
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-direct {p0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->getLowerUrl()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "loweredUrl":Ljava/lang/String;
    const-string v6, "http:"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_25

    const-string v6, "https:"

    .line 109
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_25

    const-string v6, "file:"

    .line 110
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_25

    const-string v6, "about:blank"

    .line 111
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    :cond_25
    move-object v1, v5

    .line 123
    :cond_26
    :goto_26
    return-object v1

    .line 115
    :cond_27
    iget-object v6, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 116
    .local v4, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 119
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_26

    move-object v1, v5

    .line 121
    goto :goto_26
.end method

.method private tryToRunIntent(Landroid/content/Intent;)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    if-eqz p1, :cond_2b

    .line 128
    iget-object v1, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->context:Landroid/content/Context;

    if-eqz v1, :cond_b

    .line 130
    :try_start_6
    iget-object v1, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_d

    .line 135
    :cond_b
    :goto_b
    const/4 v1, 0x1

    .line 137
    :goto_c
    return v1

    .line 131
    :catch_d
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Activity found to handle Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    goto :goto_b

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_c
.end method


# virtual methods
.method canResponseBuiltinScheme()Z
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    const-string v1, "uniwebviewinternal://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 169
    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    const-string v1, "__uniwebview_internal_video_end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 170
    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->notifyVideoEnd()V

    .line 172
    :cond_1d
    const/4 v0, 0x1

    .line 174
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method canResponseDefinedScheme()Z
    .registers 6

    .prologue
    .line 155
    iget-object v1, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking url could match with a defined url scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getSchemes()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "scheme":Ljava/lang/String;
    iget-object v2, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 158
    iget-object v1, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found url match scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 159
    const/4 v1, 0x1

    .line 164
    .end local v0    # "scheme":Ljava/lang/String;
    :goto_66
    return v1

    .line 163
    :cond_67
    iget-object v1, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not find a matched scheme for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 164
    const/4 v1, 0x0

    goto :goto_66
.end method

.method handleWithIntent()Z
    .registers 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking url could be handled with any intents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->mailToIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->tryToRunIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 143
    invoke-direct {p0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->telIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->tryToRunIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 144
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->smsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->tryToRunIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 145
    invoke-direct {p0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->explicitlyIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->tryToRunIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 146
    invoke-direct {p0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->marketIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->tryToRunIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_4c
    const/4 v0, 0x1

    .line 142
    :goto_4d
    return v0

    .line 146
    :cond_4e
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method handleWithThirdPartyApp()Z
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking url could be handled with any third party apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->thirdPartyAppIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->tryToRunIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method smsIntent()Landroid/content/Intent;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Lcom/onevcat/uniwebview/URLLoadingResponser;->getLowerUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sms:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    move-object v1, v2

    .line 48
    :goto_e
    return-object v1

    .line 40
    :cond_f
    iget-object v3, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    const-string v4, "Received sms url..."

    invoke-virtual {v3, v4}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 42
    :try_start_16
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 43
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2d} :catch_2e

    goto :goto_e

    .line 46
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_2e
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/onevcat/uniwebview/URLLoadingResponser;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms url intent open exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    move-object v1, v2

    .line 48
    goto :goto_e
.end method
