.class public Lcom/smali/tools/SmaliTools;
.super Ljava/lang/Object;
.source "SmaliTools.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOverlayPermissionAndRequest(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_31

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 41
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_31
    return-void
.end method

.method public static closeTechnicalDemoOverlay(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smali/tools/TechnicalDemoOverlay;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 37
    return-void
.end method

.method public static doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;)Z
    .registers 11
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "platform"    # Ljava/lang/String;
    .param p2, "mThirdpartySDKListener"    # Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    .line 48
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 50
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0xa

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 54
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 55
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    const-string v5, "Set login method"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 58
    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, "login_origin":Landroid/widget/Button;
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    const-string v5, "Original method"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 68
    .local v5, "login_alter":Landroid/widget/Button;
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const-string v6, "Alternative method"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 73
    .local v6, "dialog":Landroid/app/Dialog;
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 75
    new-instance v7, Lcom/smali/tools/-$$Lambda$SmaliTools$BQhnA25TkLyCLOQMmXdWVZQ93U4;

    invoke-direct {v7, p2, p1, v6}, Lcom/smali/tools/-$$Lambda$SmaliTools$BQhnA25TkLyCLOQMmXdWVZQ93U4;-><init>(Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v7, Lcom/smali/tools/-$$Lambda$SmaliTools$MU0L7-l0cp6LyEFPHkbAxn87_JY;

    invoke-direct {v7, p0, v6}, Lcom/smali/tools/-$$Lambda$SmaliTools$MU0L7-l0cp6LyEFPHkbAxn87_JY;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 87
    return v2
.end method

.method static synthetic lambda$doLogin$0(Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;Ljava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 4
    .param p0, "mThirdpartySDKListener"    # Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;
    .param p1, "platform"    # Ljava/lang/String;
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "v"    # Landroid/view/View;

    .line 76
    if-eqz p0, :cond_5

    .line 77
    invoke-interface {p0, p1}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->doLogin(Ljava/lang/String;)Z

    .line 79
    :cond_5
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 80
    return-void
.end method

.method static synthetic lambda$doLogin$1(Landroid/app/Activity;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "v"    # Landroid/view/View;

    .line 83
    invoke-static {p0}, Lcom/smali/tools/SmaliTools;->showLoginDialog(Landroid/app/Activity;)V

    .line 84
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 85
    return-void
.end method

.method static synthetic lambda$null$2(Landroid/content/DialogInterface;I)V
    .registers 2
    .param p0, "dialog1"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 148
    return-void
.end method

.method static synthetic lambda$showLoginDialog$3(Landroid/app/ProgressDialog;Landroid/app/Activity;Landroid/app/Dialog;Lorg/json/JSONObject;)V
    .registers 9
    .param p0, "progressDialog"    # Landroid/app/ProgressDialog;
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "result"    # Lorg/json/JSONObject;

    .line 133
    const-string v0, "username"

    const-string v1, "token"

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 134
    const-class v2, Lcom/smali/tools/SmaliTools;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doLogin http request result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :try_start_27
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 137
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v2, "r3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "openid"

    const-string v4, "uid"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "access_token"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "expire_times"

    const-string v1, "time"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "refresh_token"

    const-string v1, "sid"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->doLoginVerify(Ljava/util/HashMap;)V

    .line 144
    .end local v2    # "r3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_b4

    .line 145
    :cond_6b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Login Error!"

    .line 146
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ret"

    .line 147
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nError message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\uc544\uc774\ub514\uc640 \ube44\ubc00\ubc88\ud638 \ud655\uc778 \ud6c4 \uc7ac\uc2dc\ub3c4 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    sget-object v2, Lcom/smali/tools/-$$Lambda$SmaliTools$dHY4_onXRspC0833UPPwrFlGMU8;->INSTANCE:Lcom/smali/tools/-$$Lambda$SmaliTools$dHY4_onXRspC0833UPPwrFlGMU8;

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_b4} :catch_b5

    .line 152
    :goto_b4
    goto :goto_b9

    .line 150
    :catch_b5
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b9
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 154
    return-void
.end method

.method static synthetic lambda$showLoginDialog$4(Landroid/widget/EditText;Landroid/widget/EditText;Llib/xdsdk/passport/CometPassport;Landroid/app/Activity;Landroid/app/ProgressDialog;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 11
    .param p0, "ID"    # Landroid/widget/EditText;
    .param p1, "PW"    # Landroid/widget/EditText;
    .param p2, "passport"    # Llib/xdsdk/passport/CometPassport;
    .param p3, "context"    # Landroid/app/Activity;
    .param p4, "progressDialog"    # Landroid/app/ProgressDialog;
    .param p5, "dialog"    # Landroid/app/Dialog;
    .param p6, "v1"    # Landroid/view/View;

    .line 157
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "Id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "Pw":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_29

    .line 164
    :cond_1f
    invoke-virtual {p2, p3, v0, v1}, Llib/xdsdk/passport/CometPassport;->signInWithXdg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p4}, Landroid/app/ProgressDialog;->show()V

    .line 166
    invoke-virtual {p5}, Landroid/app/Dialog;->dismiss()V

    goto :goto_3f

    .line 161
    :cond_29
    :goto_29
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v3, "Input ID"

    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 162
    :cond_34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string v2, "Input PW"

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 168
    :cond_3f
    :goto_3f
    return-void
.end method

.method public static showLoginDialog(Landroid/app/Activity;)V
    .registers 18
    .param p0, "context"    # Landroid/app/Activity;

    .line 92
    move-object/from16 v7, p0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v8, v0

    .line 93
    .local v8, "layout":Landroid/widget/LinearLayout;
    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v9, v2

    .line 97
    .local v9, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v10, v2

    .line 98
    .local v10, "textView":Landroid/widget/TextView;
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    const-string v2, "Xdg Global Login"

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 101
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v11, v0

    .line 104
    .local v11, "ID":Landroid/widget/EditText;
    invoke-virtual {v11, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setEms(I)V

    .line 106
    invoke-virtual {v11, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 107
    const-string v2, "\uc544\uc774\ub514"

    invoke-virtual {v11, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v12, v2

    .line 111
    .local v12, "PW":Landroid/widget/EditText;
    invoke-virtual {v12, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setEms(I)V

    .line 113
    invoke-virtual {v12, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 114
    const-string v1, "\ube44\ubc00\ubc88\ud638"

    invoke-virtual {v12, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v13, v1

    .line 118
    .local v13, "login":Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v9, v1, v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 119
    invoke-virtual {v13, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    const-string v0, "\ub85c\uadf8\uc778"

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    .line 124
    .local v14, "dialog":Landroid/app/Dialog;
    invoke-virtual {v14, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 126
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    .line 127
    .local v15, "progressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {v15, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 128
    const-string v0, "getting login information..."

    invoke-virtual {v15, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 129
    const-string v0, "Please wait..."

    invoke-virtual {v15, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    invoke-static {}, Llib/xdsdk/passport/CometPassport;->model()Llib/xdsdk/passport/CometPassport;

    move-result-object v6

    .line 132
    .local v6, "passport":Llib/xdsdk/passport/CometPassport;
    new-instance v0, Lcom/smali/tools/-$$Lambda$SmaliTools$HKclyHPG4Vx_evdTMoHocSS-oYc;

    invoke-direct {v0, v15, v7, v14}, Lcom/smali/tools/-$$Lambda$SmaliTools$HKclyHPG4Vx_evdTMoHocSS-oYc;-><init>(Landroid/app/ProgressDialog;Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Llib/xdsdk/passport/CometPassport;->setOnXdgLoginCompleteListener(Llib/xdsdk/passport/CometPassport$OnXdgLoginCompleteListener;)V

    .line 156
    new-instance v5, Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;

    move-object v0, v5

    move-object v1, v11

    move-object v3, v6

    move-object/from16 v4, p0

    move-object v7, v5

    move-object v5, v15

    move-object/from16 v16, v6

    .end local v6    # "passport":Llib/xdsdk/passport/CometPassport;
    .local v16, "passport":Llib/xdsdk/passport/CometPassport;
    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Llib/xdsdk/passport/CometPassport;Landroid/app/Activity;Landroid/app/ProgressDialog;Landroid/app/Dialog;)V

    invoke-virtual {v13, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {v14}, Landroid/app/Dialog;->show()V

    .line 170
    return-void
.end method

.method public static showTechnicalDemoOverlay(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smali/tools/TechnicalDemoOverlay;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 33
    return-void
.end method
