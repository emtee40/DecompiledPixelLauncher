.class public Landroid/support/v4/app/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/X;
.implements Landroid/support/v4/app/C;


# instance fields
.field private acW:Landroid/app/Notification$Builder;

.field private acX:Ljava/util/List;

.field private acY:Landroid/widget/RemoteViews;

.field private acZ:Landroid/widget/RemoteViews;

.field private final ada:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 8

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/bc;->acX:Ljava/util/List;

    .line 85
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v6, p2, Landroid/app/Notification;->when:J

    .line 86
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->icon:I

    iget v6, p2, Landroid/app/Notification;->iconLevel:I

    .line 87
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 88
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {v4, v5, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v6, p2, Landroid/app/Notification;->audioStreamType:I

    .line 90
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->vibrate:[J

    .line 91
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->ledARGB:I

    iget v6, p2, Landroid/app/Notification;->ledOnMS:I

    iget v7, p2, Landroid/app/Notification;->ledOffMS:I

    .line 92
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 93
    :goto_0
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 94
    :goto_1
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 95
    :goto_2
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->defaults:I

    .line 96
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 97
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 98
    invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 99
    move-object/from16 v0, p16

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 100
    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 101
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 102
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_3

    const/4 v4, 0x0

    .line 103
    :goto_3
    move-object/from16 v0, p9

    invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 105
    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 106
    invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 107
    move/from16 v0, p14

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 108
    move/from16 v0, p15

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 109
    move/from16 v0, p11

    move/from16 v1, p12

    move/from16 v2, p13

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/app/bc;->acW:Landroid/app/Notification$Builder;

    .line 110
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/bc;->ada:Landroid/os/Bundle;

    .line 111
    if-nez p18, :cond_4

    .line 114
    :goto_4
    if-nez p17, :cond_5

    .line 117
    :goto_5
    if-nez p19, :cond_6

    .line 125
    :goto_6
    if-nez p21, :cond_8

    .line 128
    :goto_7
    move-object/from16 v0, p22

    iput-object v0, p0, Landroid/support/v4/app/bc;->acZ:Landroid/widget/RemoteViews;

    .line 129
    move-object/from16 v0, p23

    iput-object v0, p0, Landroid/support/v4/app/bc;->acY:Landroid/widget/RemoteViews;

    .line 130
    return-void

    .line 92
    :cond_0
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 93
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 94
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 102
    :cond_3
    const/4 v4, 0x1

    goto :goto_3

    .line 112
    :cond_4
    iget-object v4, p0, Landroid/support/v4/app/bc;->ada:Landroid/os/Bundle;

    move-object/from16 v0, p18

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_4

    .line 115
    :cond_5
    iget-object v4, p0, Landroid/support/v4/app/bc;->ada:Landroid/os/Bundle;

    const-string/jumbo v5, "android.support.localOnly"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    .line 118
    :cond_6
    iget-object v4, p0, Landroid/support/v4/app/bc;->ada:Landroid/os/Bundle;

    const-string/jumbo v5, "android.support.groupKey"

    move-object/from16 v0, p19

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-nez p20, :cond_7

    .line 122
    iget-object v4, p0, Landroid/support/v4/app/bc;->ada:Landroid/os/Bundle;

    const-string/jumbo v5, "android.support.useSideChannel"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6

    .line 120
    :cond_7
    iget-object v4, p0, Landroid/support/v4/app/bc;->ada:Landroid/os/Bundle;

    const-string/jumbo v5, "android.support.isGroupSummary"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6

    .line 126
    :cond_8
    iget-object v4, p0, Landroid/support/v4/app/bc;->ada:Landroid/os/Bundle;

    const-string/jumbo v5, "android.support.sortKey"

    move-object/from16 v0, p21

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method public aim(Landroid/support/v4/app/S;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v4/app/bc;->acX:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v4/app/bc;->acW:Landroid/app/Notification$Builder;

    invoke-static {v1, p1}, Landroid/support/v4/app/aJ;->ann(Landroid/app/Notification$Builder;Landroid/support/v4/app/S;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public ain()Landroid/app/Notification$Builder;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v4/app/bc;->acW:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public build()Landroid/app/Notification;
    .locals 6

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v4/app/bc;->acW:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 147
    invoke-static {v1}, Landroid/support/v4/app/aJ;->anj(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    .line 148
    new-instance v3, Landroid/os/Bundle;

    iget-object v0, p0, Landroid/support/v4/app/bc;->ada:Landroid/os/Bundle;

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 149
    iget-object v0, p0, Landroid/support/v4/app/bc;->ada:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 155
    iget-object v0, p0, Landroid/support/v4/app/bc;->acX:Ljava/util/List;

    invoke-static {v0}, Landroid/support/v4/app/aJ;->ank(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    .line 156
    if-nez v0, :cond_2

    .line 160
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/bc;->acZ:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    .line 163
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/bc;->acY:Landroid/widget/RemoteViews;

    if-nez v0, :cond_4

    .line 166
    :goto_3
    return-object v1

    .line 149
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_2
    invoke-static {v1}, Landroid/support/v4/app/aJ;->anj(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.support.actionExtras"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 161
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/bc;->acZ:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_2

    .line 164
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/bc;->acY:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_3
.end method