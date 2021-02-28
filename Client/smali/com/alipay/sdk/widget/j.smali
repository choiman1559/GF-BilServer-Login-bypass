.class public Lcom/alipay/sdk/widget/j;
.super Lcom/alipay/sdk/widget/g;

# interfaces
.implements Lcom/alipay/sdk/widget/p$a;
.implements Lcom/alipay/sdk/widget/p$b;
.implements Lcom/alipay/sdk/widget/p$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/widget/j$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "alipayjsbridge://"

.field public static final c:Ljava/lang/String; = "onBack"

.field public static final d:Ljava/lang/String; = "setTitle"

.field public static final e:Ljava/lang/String; = "onRefresh"

.field public static final f:Ljava/lang/String; = "showBackButton"

.field public static final g:Ljava/lang/String; = "onExit"

.field public static final h:Ljava/lang/String; = "onLoadJs"

.field public static final i:Ljava/lang/String; = "callNativeFunc"

.field public static final j:Ljava/lang/String; = "back"

.field public static final k:Ljava/lang/String; = "title"

.field public static final l:Ljava/lang/String; = "refresh"

.field public static final m:Ljava/lang/String; = "backButton"

.field public static final n:Ljava/lang/String; = "refreshButton"

.field public static final o:Ljava/lang/String; = "exit"

.field public static final p:Ljava/lang/String; = "action"

.field public static final q:Ljava/lang/String; = "pushWindow"

.field public static final r:Ljava/lang/String; = "h5JsFuncCallback"

.field private static final s:Ljava/lang/String; = "sdk_result_code:"


# instance fields
.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Z

.field private final w:Lcom/alipay/sdk/sys/a;

.field private x:Lcom/alipay/sdk/widget/p;

.field private y:Lcom/alipay/sdk/widget/u;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/g;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/widget/j;->t:Z

    const-string v0, "GET"

    iput-object v0, p0, Lcom/alipay/sdk/widget/j;->u:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/widget/j;->v:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    new-instance v0, Lcom/alipay/sdk/widget/u;

    invoke-direct {v0}, Lcom/alipay/sdk/widget/u;-><init>()V

    iput-object v0, p0, Lcom/alipay/sdk/widget/j;->y:Lcom/alipay/sdk/widget/u;

    iput-object p2, p0, Lcom/alipay/sdk/widget/j;->w:Lcom/alipay/sdk/sys/a;

    invoke-direct {p0}, Lcom/alipay/sdk/widget/j;->c()Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/widget/j;)Lcom/alipay/sdk/widget/p;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v5, 0x0

    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {p3}, Lcom/alipay/sdk/util/n;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/p;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    const-string v3, "refresh"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/p;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_29

    :cond_3c
    const-string v3, "back"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-direct {p0}, Lcom/alipay/sdk/widget/j;->e()V

    goto :goto_29

    :cond_48
    const-string v3, "exit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    const-string v1, "result"

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V

    const-string v1, "success"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/sdk/widget/j;->a(Z)V

    goto :goto_29

    :cond_63
    const-string v3, "backButton"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    const-string v3, "show"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v3}, Lcom/alipay/sdk/widget/p;->getBackButton()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v2, :cond_7d

    :goto_79
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_29

    :cond_7d
    move v0, v1

    goto :goto_79

    :cond_7f
    const-string v3, "refreshButton"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    const-string v3, "show"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v3}, Lcom/alipay/sdk/widget/p;->getRefreshButton()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v2, :cond_99

    :goto_95
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_29

    :cond_99
    move v0, v1

    goto :goto_95

    :cond_9b
    const-string v0, "pushWindow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "url"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    const-string v0, "url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/sdk/widget/j;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_29
.end method

.method private a(Z)V
    .registers 3

    invoke-static {p1}, Lcom/alipay/sdk/app/j;->a(Z)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/widget/j;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/alipay/sdk/widget/j;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/sdk/widget/j;)Lcom/alipay/sdk/sys/a;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->w:Lcom/alipay/sdk/sys/a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->w:Lcom/alipay/sdk/sys/a;

    invoke-static {v0, p1}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const-string v0, "callNativeFunc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "func"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "cbId"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "data"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/sdk/widget/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    const-string v0, "onBack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lcom/alipay/sdk/widget/j;->e()V

    goto :goto_29

    :cond_36
    const-string v0, "setTitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "title"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/p;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    const-string v0, "title"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    :cond_58
    const-string v0, "onRefresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/p;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_29

    :cond_6a
    const-string v0, "showBackButton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    const-string v0, "bshow"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    const-string v1, "true"

    const-string v0, "bshow"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v1}, Lcom/alipay/sdk/widget/p;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v0, :cond_95

    const/4 v0, 0x0

    :goto_91
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_29

    :cond_95
    const/4 v0, 0x4

    goto :goto_91

    :cond_97
    const-string v0, "onExit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    const-string v0, "result"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V

    const-string v1, "true"

    const-string v0, "bsucc"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/sdk/widget/j;->a(Z)V

    goto/16 :goto_29

    :cond_bd
    const-string v0, "onLoadJs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    const-string v1, "javascript:(function() {\n    if (window.AlipayJSBridge) {\n        return\n    }\n\n    function alipayjsbridgeFunc(url) {\n        var iframe = document.createElement(\"iframe\");\n        iframe.style.width = \"1px\";\n        iframe.style.height = \"1px\";\n        iframe.style.display = \"none\";\n        iframe.src = url;\n        document.body.appendChild(iframe);\n        setTimeout(function() {\n            document.body.removeChild(iframe)\n        }, 100)\n    }\n    window.alipayjsbridgeSetTitle = function(title) {\n        document.title = title;\n        alipayjsbridgeFunc(\"alipayjsbridge://setTitle?title=\" + encodeURIComponent(title))\n    };\n    window.alipayjsbridgeRefresh = function() {\n        alipayjsbridgeFunc(\"alipayjsbridge://onRefresh?\")\n    };\n    window.alipayjsbridgeBack = function() {\n        alipayjsbridgeFunc(\"alipayjsbridge://onBack?\")\n    };\n    window.alipayjsbridgeExit = function(bsucc) {\n        alipayjsbridgeFunc(\"alipayjsbridge://onExit?bsucc=\" + bsucc)\n    };\n    window.alipayjsbridgeShowBackButton = function(bshow) {\n        alipayjsbridgeFunc(\"alipayjsbridge://showBackButton?bshow=\" + bshow)\n    };\n    window.AlipayJSBridge = {\n        version: \"2.0\",\n        addListener: addListener,\n        hasListener: hasListener,\n        callListener: callListener,\n        callNativeFunc: callNativeFunc,\n        callBackFromNativeFunc: callBackFromNativeFunc\n    };\n    var uniqueId = 1;\n    var h5JsCallbackMap = {};\n\n    function iframeCall(paramStr) {\n        setTimeout(function() {\n        \tvar iframe = document.createElement(\"iframe\");\n        \tiframe.style.width = \"1px\";\n        \tiframe.style.height = \"1px\";\n        \tiframe.style.display = \"none\";\n        \tiframe.src = \"alipayjsbridge://callNativeFunc?\" + paramStr;\n        \tvar parent = document.body || document.documentElement;\n        \tparent.appendChild(iframe);\n        \tsetTimeout(function() {\n            \tparent.removeChild(iframe)\n        \t}, 0)\n        }, 0)\n    }\n\n    function callNativeFunc(nativeFuncName, data, h5JsCallback) {\n        var h5JsCallbackId = \"\";\n        if (h5JsCallback) {\n            h5JsCallbackId = \"cb_\" + (uniqueId++) + \"_\" + new Date().getTime();\n            h5JsCallbackMap[h5JsCallbackId] = h5JsCallback\n        }\n        var dataStr = \"\";\n        if (data) {\n            dataStr = encodeURIComponent(JSON.stringify(data))\n        }\n        var paramStr = \"func=\" + nativeFuncName + \"&cbId=\" + h5JsCallbackId + \"&data=\" + dataStr;\n        iframeCall(paramStr)\n    }\n\n    function callBackFromNativeFunc(h5JsCallbackId, data) {\n        var h5JsCallback = h5JsCallbackMap[h5JsCallbackId];\n        if (h5JsCallback) {\n            h5JsCallback(data);\n            delete h5JsCallbackMap[h5JsCallbackId]\n        }\n    }\n    var h5ListenerMap = {};\n\n    function addListener(jsFuncName, jsFunc) {\n        h5ListenerMap[jsFuncName] = jsFunc\n    }\n\n    function hasListener(jsFuncName) {\n        var jsFunc = h5ListenerMap[jsFuncName];\n        if (!jsFunc) {\n            return false\n        }\n        return true\n    }\n\n    function callListener(h5JsFuncName, data, nativeCallbackId) {\n        var responseCallback;\n        if (nativeCallbackId) {\n            responseCallback = function(responseData) {\n                var dataStr = \"\";\n                if (responseData) {\n                    dataStr = encodeURIComponent(JSON.stringify(responseData))\n                }\n                var paramStr = \"func=h5JsFuncCallback\" + \"&cbId=\" + nativeCallbackId + \"&data=\" + dataStr;\n                iframeCall(paramStr)\n            }\n        }\n        var h5JsFunc = h5ListenerMap[h5JsFuncName];\n        if (h5JsFunc) {\n            h5JsFunc(data, responseCallback)\n        } else if (h5JsFuncName == \"h5BackAction\") {\n            if (!window.alipayjsbridgeH5BackAction || !alipayjsbridgeH5BackAction()) {\n                var paramStr = \"func=back\";\n                iframeCall(paramStr)\n            }\n        } else {\n            console.log(\"AlipayJSBridge: no h5JsFunc \" + h5JsFuncName + data)\n        }\n    }\n    var event;\n    if (window.CustomEvent) {\n        event = new CustomEvent(\"alipayjsbridgeready\")\n    } else {\n        event = document.createEvent(\"Event\");\n        event.initEvent(\"alipayjsbridgeready\", true, true)\n    }\n    document.dispatchEvent(event);\n    setTimeout(excuteH5InitFuncs, 0);\n\n    function excuteH5InitFuncs() {\n        if (window.AlipayJSBridgeInitArray) {\n            var h5InitFuncs = window.AlipayJSBridgeInitArray;\n            delete window.AlipayJSBridgeInitArray;\n            for (var i = 0; i < h5InitFuncs.length; i++) {\n                try {\n                    h5InitFuncs[i](AlipayJSBridge)\n                } catch (e) {\n                    setTimeout(function() {\n                        throw e\n                    })\n                }\n            }\n        }\n    }\n})();\n"

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/widget/p;->a(Ljava/lang/String;)V

    goto/16 :goto_29
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v10, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    :try_start_5
    new-instance v0, Lcom/alipay/sdk/widget/p;

    iget-object v2, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/sdk/widget/j;->w:Lcom/alipay/sdk/sys/a;

    invoke-direct {v0, v2, v3}, Lcom/alipay/sdk/widget/p;-><init>(Landroid/content/Context;Lcom/alipay/sdk/sys/a;)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/widget/p;->setChromeProxy(Lcom/alipay/sdk/widget/p$a;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/widget/p;->setWebClientProxy(Lcom/alipay/sdk/widget/p$b;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/widget/p;->setWebEventProxy(Lcom/alipay/sdk/widget/p$c;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/p;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2e} :catch_5c

    :cond_2e
    iput-boolean v1, p0, Lcom/alipay/sdk/widget/j;->v:Z

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->y:Lcom/alipay/sdk/widget/u;

    invoke-virtual {v0, v10}, Lcom/alipay/sdk/widget/u;->a(Lcom/alipay/sdk/widget/p;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v2, Lcom/alipay/sdk/widget/m;

    invoke-direct {v2, p0, v10, p1}, Lcom/alipay/sdk/widget/m;-><init>(Lcom/alipay/sdk/widget/j;Lcom/alipay/sdk/widget/p;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v2, v0}, Lcom/alipay/sdk/widget/p;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/widget/j;->addView(Landroid/view/View;)V

    :goto_5b
    return v1

    :catch_5c
    move-exception v0

    move v1, v9

    goto :goto_5b
.end method

.method private c()Z
    .registers 4

    :try_start_0
    new-instance v0, Lcom/alipay/sdk/widget/p;

    iget-object v1, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/sdk/widget/j;->w:Lcom/alipay/sdk/sys/a;

    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/widget/p;-><init>(Landroid/content/Context;Lcom/alipay/sdk/sys/a;)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/widget/p;->setChromeProxy(Lcom/alipay/sdk/widget/p$a;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/widget/p;->setWebClientProxy(Lcom/alipay/sdk/widget/p$b;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/widget/p;->setWebEventProxy(Lcom/alipay/sdk/widget/p$c;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/widget/j;->addView(Landroid/view/View;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :catch_21
    move-exception v0

    const/4 v0, 0x0

    goto :goto_20
.end method

.method private d()V
    .registers 3

    iget-boolean v0, p0, Lcom/alipay/sdk/widget/j;->t:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    const-string v1, "javascript:window.AlipayJSBridge.callListener(\'h5BackAction\');"

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/widget/p;->a(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/p;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->y:Lcom/alipay/sdk/widget/u;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->y:Lcom/alipay/sdk/widget/u;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/u;->b()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/alipay/sdk/widget/j;->f()Z

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/sdk/widget/j;->a(Z)V

    goto :goto_f
.end method

.method private f()Z
    .registers 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->y:Lcom/alipay/sdk/widget/u;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/u;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_f
    return v1

    :cond_10
    iput-boolean v1, p0, Lcom/alipay/sdk/widget/j;->v:Z

    iget-object v9, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->y:Lcom/alipay/sdk/widget/u;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/u;->a()Lcom/alipay/sdk/widget/p;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v2, Lcom/alipay/sdk/widget/l;

    invoke-direct {v2, p0, v9}, Lcom/alipay/sdk/widget/l;-><init>(Lcom/alipay/sdk/widget/j;Lcom/alipay/sdk/widget/p;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v9, v0}, Lcom/alipay/sdk/widget/p;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v9}, Lcom/alipay/sdk/widget/j;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/widget/j;->addView(Landroid/view/View;)V

    goto :goto_f
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/p;->a()V

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->y:Lcom/alipay/sdk/widget/u;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/u;->c()V

    return-void
.end method

.method public a(Lcom/alipay/sdk/widget/p;)V
    .registers 2

    invoke-direct {p0}, Lcom/alipay/sdk/widget/j;->d()V

    return-void
.end method

.method public a(Lcom/alipay/sdk/widget/p;Ljava/lang/String;)V
    .registers 4

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Lcom/alipay/sdk/widget/p;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/p;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "POST"

    iget-object v1, p0, Lcom/alipay/sdk/widget/j;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/sdk/widget/p;->a(Ljava/lang/String;[B)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/widget/p;->a(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    iput-object p2, p0, Lcom/alipay/sdk/widget/j;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/p;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean p3, p0, Lcom/alipay/sdk/widget/j;->t:Z

    return-void
.end method

.method public a(Lcom/alipay/sdk/widget/p;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->w:Lcom/alipay/sdk/sys/a;

    const-string v1, "net"

    const-string v2, "SSLError"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceivedError:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/sdk/widget/p;->getRefreshButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    return v5
.end method

.method public a(Lcom/alipay/sdk/widget/p;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Z
    .registers 9

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->w:Lcom/alipay/sdk/sys/a;

    const-string v1, "net"

    const-string v2, "SSLError"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/sdk/widget/n;

    invoke-direct {v1, p0, p2}, Lcom/alipay/sdk/widget/n;-><init>(Lcom/alipay/sdk/widget/j;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/alipay/sdk/widget/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 8

    const-string v0, "<head>"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "sdk_result_code:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/alipay/sdk/widget/k;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/widget/k;-><init>(Lcom/alipay/sdk/widget/j;)V

    iget-object v1, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1a
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/alipay/sdk/widget/p;)V
    .registers 4

    invoke-virtual {p1}, Lcom/alipay/sdk/widget/p;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    invoke-virtual {p1}, Lcom/alipay/sdk/widget/p;->getRefreshButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/sdk/widget/j;->v:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/alipay/sdk/widget/j;->d()V

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/alipay/sdk/widget/p;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const-string v1, "alipayjsbridge://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v0, "alipayjsbridge://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/sdk/widget/j;->b(Ljava/lang/String;)V

    :goto_1d
    const/4 v0, 0x1

    goto :goto_7

    :cond_1f
    const-string v1, "sdklite://h5quit"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, v0}, Lcom/alipay/sdk/widget/j;->a(Z)V

    goto :goto_1d

    :cond_2b
    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_3b
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0, p2}, Lcom/alipay/sdk/widget/p;->a(Ljava/lang/String;)V

    goto :goto_1d

    :cond_41
    :try_start_41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_57} :catch_58

    goto :goto_1d

    :catch_58
    move-exception v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/j;->w:Lcom/alipay/sdk/sys/a;

    const-string v2, "biz"

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d
.end method

.method public c(Lcom/alipay/sdk/widget/p;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "javascript:window.prompt(\'<head>\'+document.getElementsByTagName(\'html\')[0].innerHTML+\'</head>\');(function() {\n    if (window.AlipayJSBridge) {\n        return\n    }\n\n    function alipayjsbridgeFunc(url) {\n        var iframe = document.createElement(\"iframe\");\n        iframe.style.width = \"1px\";\n        iframe.style.height = \"1px\";\n        iframe.style.display = \"none\";\n        iframe.src = url;\n        document.body.appendChild(iframe);\n        setTimeout(function() {\n            document.body.removeChild(iframe)\n        }, 100)\n    }\n    window.alipayjsbridgeSetTitle = function(title) {\n        document.title = title;\n        alipayjsbridgeFunc(\"alipayjsbridge://setTitle?title=\" + encodeURIComponent(title))\n    };\n    window.alipayjsbridgeRefresh = function() {\n        alipayjsbridgeFunc(\"alipayjsbridge://onRefresh?\")\n    };\n    window.alipayjsbridgeBack = function() {\n        alipayjsbridgeFunc(\"alipayjsbridge://onBack?\")\n    };\n    window.alipayjsbridgeExit = function(bsucc) {\n        alipayjsbridgeFunc(\"alipayjsbridge://onExit?bsucc=\" + bsucc)\n    };\n    window.alipayjsbridgeShowBackButton = function(bshow) {\n        alipayjsbridgeFunc(\"alipayjsbridge://showBackButton?bshow=\" + bshow)\n    };\n    window.AlipayJSBridge = {\n        version: \"2.0\",\n        addListener: addListener,\n        hasListener: hasListener,\n        callListener: callListener,\n        callNativeFunc: callNativeFunc,\n        callBackFromNativeFunc: callBackFromNativeFunc\n    };\n    var uniqueId = 1;\n    var h5JsCallbackMap = {};\n\n    function iframeCall(paramStr) {\n        setTimeout(function() {\n        \tvar iframe = document.createElement(\"iframe\");\n        \tiframe.style.width = \"1px\";\n        \tiframe.style.height = \"1px\";\n        \tiframe.style.display = \"none\";\n        \tiframe.src = \"alipayjsbridge://callNativeFunc?\" + paramStr;\n        \tvar parent = document.body || document.documentElement;\n        \tparent.appendChild(iframe);\n        \tsetTimeout(function() {\n            \tparent.removeChild(iframe)\n        \t}, 0)\n        }, 0)\n    }\n\n    function callNativeFunc(nativeFuncName, data, h5JsCallback) {\n        var h5JsCallbackId = \"\";\n        if (h5JsCallback) {\n            h5JsCallbackId = \"cb_\" + (uniqueId++) + \"_\" + new Date().getTime();\n            h5JsCallbackMap[h5JsCallbackId] = h5JsCallback\n        }\n        var dataStr = \"\";\n        if (data) {\n            dataStr = encodeURIComponent(JSON.stringify(data))\n        }\n        var paramStr = \"func=\" + nativeFuncName + \"&cbId=\" + h5JsCallbackId + \"&data=\" + dataStr;\n        iframeCall(paramStr)\n    }\n\n    function callBackFromNativeFunc(h5JsCallbackId, data) {\n        var h5JsCallback = h5JsCallbackMap[h5JsCallbackId];\n        if (h5JsCallback) {\n            h5JsCallback(data);\n            delete h5JsCallbackMap[h5JsCallbackId]\n        }\n    }\n    var h5ListenerMap = {};\n\n    function addListener(jsFuncName, jsFunc) {\n        h5ListenerMap[jsFuncName] = jsFunc\n    }\n\n    function hasListener(jsFuncName) {\n        var jsFunc = h5ListenerMap[jsFuncName];\n        if (!jsFunc) {\n            return false\n        }\n        return true\n    }\n\n    function callListener(h5JsFuncName, data, nativeCallbackId) {\n        var responseCallback;\n        if (nativeCallbackId) {\n            responseCallback = function(responseData) {\n                var dataStr = \"\";\n                if (responseData) {\n                    dataStr = encodeURIComponent(JSON.stringify(responseData))\n                }\n                var paramStr = \"func=h5JsFuncCallback\" + \"&cbId=\" + nativeCallbackId + \"&data=\" + dataStr;\n                iframeCall(paramStr)\n            }\n        }\n        var h5JsFunc = h5ListenerMap[h5JsFuncName];\n        if (h5JsFunc) {\n            h5JsFunc(data, responseCallback)\n        } else if (h5JsFuncName == \"h5BackAction\") {\n            if (!window.alipayjsbridgeH5BackAction || !alipayjsbridgeH5BackAction()) {\n                var paramStr = \"func=back\";\n                iframeCall(paramStr)\n            }\n        } else {\n            console.log(\"AlipayJSBridge: no h5JsFunc \" + h5JsFuncName + data)\n        }\n    }\n    var event;\n    if (window.CustomEvent) {\n        event = new CustomEvent(\"alipayjsbridgeready\")\n    } else {\n        event = document.createEvent(\"Event\");\n        event.initEvent(\"alipayjsbridgeready\", true, true)\n    }\n    document.dispatchEvent(event);\n    setTimeout(excuteH5InitFuncs, 0);\n\n    function excuteH5InitFuncs() {\n        if (window.AlipayJSBridgeInitArray) {\n            var h5InitFuncs = window.AlipayJSBridgeInitArray;\n            delete window.AlipayJSBridgeInitArray;\n            for (var i = 0; i < h5InitFuncs.length; i++) {\n                try {\n                    h5InitFuncs[i](AlipayJSBridge)\n                } catch (e) {\n                    setTimeout(function() {\n                        throw e\n                    })\n                }\n            }\n        }\n    }\n})();\n;window.AlipayJSBridge.callListener(\'h5PageFinished\');"

    invoke-virtual {p1, v0}, Lcom/alipay/sdk/widget/p;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/sdk/widget/p;->getRefreshButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/alipay/sdk/widget/j;->v:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Lcom/alipay/sdk/widget/g;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method
