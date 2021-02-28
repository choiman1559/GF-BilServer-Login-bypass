.class public Lnet/agasper/unitynotification/UnityNotificationManager;
.super Landroid/content/BroadcastReceiver;
.source "UnityNotificationManager.java"


# static fields
.field private static final activity:Ljava/lang/String; = "activity"

.field private static final channel:Ljava/lang/String; = "channel"

.field private static channels:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final color:Ljava/lang/String; = "color"

.field private static final id:Ljava/lang/String; = "id"

.field private static final l_icon:Ljava/lang/String; = "l_icon"

.field private static final lights:Ljava/lang/String; = "lights"

.field private static final message:Ljava/lang/String; = "message"

.field private static final s_icon:Ljava/lang/String; = "s_icon"

.field private static final sound:Ljava/lang/String; = "sound"

.field private static final ticker:Ljava/lang/String; = "ticker"

.field private static final title:Ljava/lang/String; = "title"

.field private static final vibrate:Ljava/lang/String; = "vibrate"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lnet/agasper/unitynotification/UnityNotificationManager;->channels:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    return-void
.end method

.method public static CancelAll()V
    .registers 3

    .prologue
    .line 232
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 233
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_13

    .line 234
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 236
    :cond_13
    return-void
.end method

.method public static CancelNotification(I)V
    .registers 6
    .param p0, "id"    # I

    .prologue
    .line 220
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 221
    .local v1, "currentActivity":Landroid/app/Activity;
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 222
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lnet/agasper/unitynotification/UnityNotificationManager;

    invoke-direct {v2, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-static {v1, p0, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 224
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_21

    if-eqz v0, :cond_21

    .line 225
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 226
    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V

    .line 229
    :cond_21
    return-void
.end method

.method public static CreateChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIZ)V
    .registers 14
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "importance"    # I
    .param p4, "isSound"    # Z
    .param p5, "enableLights"    # Z
    .param p6, "lightColor"    # I
    .param p7, "enableVibration"    # Z

    .prologue
    const/4 v5, 0x2

    .line 49
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_8

    .line 70
    :cond_7
    :goto_7
    return-void

    .line 52
    :cond_8
    sget-object v3, Lnet/agasper/unitynotification/UnityNotificationManager;->channels:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 55
    .local v2, "nm":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/NotificationChannel;

    invoke-direct {v1, p0, p1, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 56
    .local v1, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v1, p2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 57
    if-eqz p4, :cond_3b

    .line 58
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 59
    .local v0, "audioAttributes":Landroid/media/AudioAttributes;
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 61
    .end local v0    # "audioAttributes":Landroid/media/AudioAttributes;
    :cond_3b
    invoke-virtual {v1, p5}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 62
    invoke-virtual {v1, p6}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 63
    invoke-virtual {v1, p7}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 64
    if-eqz p7, :cond_4e

    .line 65
    new-array v3, v5, [J

    fill-array-data v3, :array_54

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 67
    :cond_4e
    if-eqz v2, :cond_7

    .line 68
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_7

    .line 65
    :array_54
    .array-data 8
        0x3e8
        0x3e8
    .end array-data
.end method

.method public static SetNotification(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 29
    .param p0, "id"    # I
    .param p1, "delayMs"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;
    .param p6, "sound"    # I
    .param p7, "vibrate"    # I
    .param p8, "lights"    # I
    .param p9, "largeIconResource"    # Ljava/lang/String;
    .param p10, "smallIconResource"    # Ljava/lang/String;
    .param p11, "bgColor"    # I
    .param p12, "executeMode"    # I
    .param p13, "unityClass"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v14, "default"

    move v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p13

    invoke-static/range {v1 .. v14}, Lnet/agasper/unitynotification/UnityNotificationManager;->SetNotification(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static SetNotification(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 23
    .param p0, "id"    # I
    .param p1, "delayMs"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;
    .param p6, "sound"    # I
    .param p7, "vibrate"    # I
    .param p8, "lights"    # I
    .param p9, "largeIconResource"    # Ljava/lang/String;
    .param p10, "smallIconResource"    # Ljava/lang/String;
    .param p11, "bgColor"    # I
    .param p12, "unityClass"    # Ljava/lang/String;
    .param p13, "channel"    # Ljava/lang/String;

    .prologue
    .line 91
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_21

    .line 92
    if-nez p13, :cond_a

    .line 93
    const-string p13, "default"

    .line 94
    :cond_a
    const/4 v5, 0x1

    if-ne p6, v5, :cond_8b

    const/4 v5, 0x1

    move v7, v5

    :goto_f
    const/4 v5, 0x1

    move/from16 v0, p8

    if-ne v0, v5, :cond_8e

    const/4 v5, 0x1

    move v6, v5

    :goto_16
    const/4 v5, 0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_91

    const/4 v5, 0x1

    :goto_1c
    move-object/from16 v0, p13

    invoke-static {v0, p3, v7, v6, v5}, Lnet/agasper/unitynotification/UnityNotificationManager;->createChannelIfNeeded(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 97
    :cond_21
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 98
    .local v3, "currentActivity":Landroid/app/Activity;
    const-string v5, "alarm"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 99
    .local v2, "am":Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lnet/agasper/unitynotification/UnityNotificationManager;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "ticker"

    invoke-virtual {v4, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v5, "title"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v5, "message"

    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v5, "id"

    invoke-virtual {v4, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v5, "color"

    move/from16 v0, p11

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const-string v6, "sound"

    const/4 v5, 0x1

    if-ne p6, v5, :cond_93

    const/4 v5, 0x1

    :goto_53
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    const-string v6, "vibrate"

    const/4 v5, 0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_95

    const/4 v5, 0x1

    :goto_5e
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    const-string v6, "lights"

    const/4 v5, 0x1

    move/from16 v0, p8

    if-ne v0, v5, :cond_97

    const/4 v5, 0x1

    :goto_69
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    const-string v5, "l_icon"

    move-object/from16 v0, p9

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v5, "s_icon"

    move-object/from16 v0, p10

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v5, "channel"

    move-object/from16 v0, p13

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v5, "activity"

    move-object/from16 v0, p12

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    if-nez v2, :cond_99

    .line 118
    :goto_8a
    return-void

    .line 94
    .end local v2    # "am":Landroid/app/AlarmManager;
    .end local v3    # "currentActivity":Landroid/app/Activity;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_8b
    const/4 v5, 0x0

    move v7, v5

    goto :goto_f

    :cond_8e
    const/4 v5, 0x0

    move v6, v5

    goto :goto_16

    :cond_91
    const/4 v5, 0x0

    goto :goto_1c

    .line 105
    .restart local v2    # "am":Landroid/app/AlarmManager;
    .restart local v3    # "currentActivity":Landroid/app/Activity;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_93
    const/4 v5, 0x0

    goto :goto_53

    .line 106
    :cond_95
    const/4 v5, 0x0

    goto :goto_5e

    .line 107
    :cond_97
    const/4 v5, 0x0

    goto :goto_69

    .line 114
    :cond_99
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_af

    .line 115
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p1

    const/high16 v8, 0x8000000

    invoke-static {v3, p0, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_8a

    .line 117
    :cond_af
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p1

    const/high16 v8, 0x8000000

    invoke-static {v3, p0, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_8a
.end method

.method public static SetRepeatingNotification(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 26
    .param p0, "id"    # I
    .param p1, "delay"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;
    .param p6, "rep"    # J
    .param p8, "sound"    # I
    .param p9, "vibrate"    # I
    .param p10, "lights"    # I
    .param p11, "largeIconResource"    # Ljava/lang/String;
    .param p12, "smallIconResource"    # Ljava/lang/String;
    .param p13, "bgColor"    # I
    .param p14, "unityClass"    # Ljava/lang/String;

    .prologue
    .line 121
    sget-object v9, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 122
    .local v9, "currentActivity":Landroid/app/Activity;
    const-string v3, "alarm"

    invoke-virtual {v9, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 123
    .local v2, "am":Landroid/app/AlarmManager;
    new-instance v10, Landroid/content/Intent;

    const-class v3, Lnet/agasper/unitynotification/UnityNotificationManager;

    invoke-direct {v10, v9, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v10, "intent":Landroid/content/Intent;
    const-string v3, "ticker"

    move-object/from16 v0, p5

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v3, "title"

    invoke-virtual {v10, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v3, "message"

    invoke-virtual {v10, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v3, "id"

    invoke-virtual {v10, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string v3, "color"

    move/from16 v0, p13

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v4, "sound"

    const/4 v3, 0x1

    move/from16 v0, p8

    if-ne v0, v3, :cond_7f

    const/4 v3, 0x1

    :goto_36
    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    const-string v4, "vibrate"

    const/4 v3, 0x1

    move/from16 v0, p9

    if-ne v0, v3, :cond_81

    const/4 v3, 0x1

    :goto_41
    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    const-string v4, "lights"

    const/4 v3, 0x1

    move/from16 v0, p10

    if-ne v0, v3, :cond_83

    const/4 v3, 0x1

    :goto_4c
    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    const-string v3, "l_icon"

    move-object/from16 v0, p11

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v3, "s_icon"

    move-object/from16 v0, p12

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v3, "channel"

    const-string v4, "channel"

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v3, "activity"

    move-object/from16 v0, p14

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    if-eqz v2, :cond_7e

    .line 137
    const/4 v3, 0x0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p1

    const/high16 v6, 0x8000000

    .line 140
    invoke-static {v9, p0, v10, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-wide/from16 v6, p6

    .line 137
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 141
    :cond_7e
    return-void

    .line 129
    :cond_7f
    const/4 v3, 0x0

    goto :goto_36

    .line 130
    :cond_81
    const/4 v3, 0x0

    goto :goto_41

    .line 131
    :cond_83
    const/4 v3, 0x0

    goto :goto_4c
.end method

.method private static createChannelIfNeeded(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 13
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enableSound"    # Z
    .param p3, "enableLights"    # Z
    .param p4, "enableVibration"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lnet/agasper/unitynotification/UnityNotificationManager;->channels:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    :goto_8
    return-void

    .line 77
    :cond_9
    sget-object v0, Lnet/agasper/unitynotification/UnityNotificationManager;->channels:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " notifications"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const v6, -0xff0100

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lnet/agasper/unitynotification/UnityNotificationManager;->CreateChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIZ)V

    goto :goto_8
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    const-string v22, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 145
    .local v14, "notificationManager":Landroid/app/NotificationManager;
    const-string v22, "ticker"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 146
    .local v18, "ticker":Ljava/lang/String;
    const-string v22, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 147
    .local v19, "title":Ljava/lang/String;
    const-string v22, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 148
    .local v11, "message":Ljava/lang/String;
    const-string v22, "s_icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 149
    .local v16, "s_icon":Ljava/lang/String;
    const-string v22, "l_icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, "l_icon":Ljava/lang/String;
    const-string v22, "color"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 151
    .local v6, "color":I
    const-string v22, "activity"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 152
    .local v20, "unityClass":Ljava/lang/String;
    const-string v22, "sound"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 153
    .local v17, "sound":Ljava/lang/Boolean;
    const-string v22, "vibrate"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 154
    .local v21, "vibrate":Ljava/lang/Boolean;
    const-string v22, "lights"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 155
    .local v10, "lights":Ljava/lang/Boolean;
    const-string v22, "id"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 156
    .local v8, "id":I
    const-string v22, "channel"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "channel":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 158
    .local v15, "res":Landroid/content/res/Resources;
    if-eqz v20, :cond_b0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_b1

    .line 217
    :cond_b0
    :goto_b0
    return-void

    .line 161
    :cond_b1
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v13, "notificationIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const/16 v22, 0x0

    const/high16 v23, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 166
    .local v7, "contentIntent":Landroid/app/PendingIntent;
    const/4 v12, 0x0

    .line 167
    .local v12, "notification":Landroid/app/Notification;
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1c8

    .line 168
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v4, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 170
    if-eqz v18, :cond_10d

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_10d

    .line 171
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 174
    :cond_10d
    if-eqz v16, :cond_12a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_12a

    .line 175
    const-string v22, "drawable"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 178
    :cond_12a
    if-eqz v9, :cond_14b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_14b

    .line 179
    const-string v22, "drawable"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v9, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-static {v15, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 182
    :cond_14b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_15c

    .line 183
    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 186
    :cond_15c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_172

    .line 187
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v22, v0

    fill-array-data v22, :array_1ca

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 190
    :cond_172
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_188

    .line 191
    const v22, -0xff0100

    const/16 v23, 0xbb8

    const/16 v24, 0xbb8

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 194
    :cond_188
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x17

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_195

    .line 195
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 198
    :cond_195
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x1a

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1a2

    .line 199
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 202
    :cond_1a2
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1b9

    .line 203
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 214
    .end local v4    # "builder":Landroid/app/Notification$Builder;
    :cond_1b0
    :goto_1b0
    if-eqz v14, :cond_b0

    if-eqz v12, :cond_b0

    .line 215
    invoke-virtual {v14, v8, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_b0

    .line 204
    .restart local v4    # "builder":Landroid/app/Notification$Builder;
    :cond_1b9
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1b0

    .line 205
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v12

    goto :goto_1b0

    .line 209
    .end local v4    # "builder":Landroid/app/Notification$Builder;
    :cond_1c8
    const/4 v12, 0x0

    goto :goto_1b0

    .line 187
    :array_1ca
    .array-data 8
        0x3e8
        0x3e8
    .end array-data
.end method
