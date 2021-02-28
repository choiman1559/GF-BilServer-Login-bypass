.class public Lcn/sharesdk/dingding/utils/DDMediaMessage$a;
.super Ljava/lang/Object;
.source "DDMediaMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/dingding/utils/DDMediaMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lcn/sharesdk/dingding/utils/DDMediaMessage;)Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    const-string v1, "android.intent.ding.EXTRA_AP_OBJECT_SDK_VERSION"

    iget v2, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->sdkVersion:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string v1, "android.intent.ding.EXTRA_AP_OBJECT_TITLE"

    iget-object v2, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "android.intent.ding.EXTRA_AP_OBJECT_DESCRIPTION"

    iget-object v2, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "android.intent.ding.EXTRA_AP_OBJECT_THUMB_DATA"

    iget-object v2, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 85
    const-string v1, "android.intent.ding.EXTRA_AP_OBJECT_THUMB_URL"

    iget-object v2, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    if-eqz v1, :cond_53

    .line 87
    const-string v1, "android.intent.ding.EXTRA_AP_OBJECT_IDENTIFIER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.dingtalk.share.ddsharemodule.message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    .line 88
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    invoke-interface {v1, v0}, Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;->serialize(Landroid/os/Bundle;)V

    .line 91
    :cond_53
    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcn/sharesdk/dingding/utils/DDMediaMessage;
    .registers 5

    .prologue
    .line 95
    new-instance v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/dingding/utils/DDMediaMessage;-><init>()V

    .line 96
    const-string v0, "android.intent.ding.EXTRA_AP_OBJECT_SDK_VERSION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->sdkVersion:I

    .line 97
    const-string v0, "android.intent.ding.EXTRA_AP_OBJECT_TITLE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->title:Ljava/lang/String;

    .line 98
    const-string v0, "android.intent.ding.EXTRA_AP_OBJECT_DESCRIPTION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->content:Ljava/lang/String;

    .line 99
    const-string v0, "android.intent.ding.EXTRA_AP_OBJECT_THUMB_DATA"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    .line 100
    const-string v0, "android.intent.ding.EXTRA_AP_OBJECT_THUMB_URL"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbUrl:Ljava/lang/String;

    .line 101
    const-string v0, "android.intent.ding.EXTRA_AP_OBJECT_IDENTIFIER"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3d

    :cond_3b
    move-object v0, v1

    .line 115
    :goto_3c
    return-object v0

    .line 107
    :cond_3d
    :try_start_3d
    const-string v2, "com.laiwang.ding.share.openapi"

    const-string v3, "cn.sharesdk.dingding.utils"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    .line 110
    iget-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    invoke-interface {v0, p0}, Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;->unserialize(Landroid/os/Bundle;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_56} :catch_58

    move-object v0, v1

    .line 111
    goto :goto_3c

    .line 112
    :catch_58
    move-exception v0

    .line 113
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 115
    goto :goto_3c
.end method
