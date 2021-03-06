.class Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field private final mRotationPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/preference/Preference;Landroid/content/ContentResolver;)V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 155
    iput-object p1, p0, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;->mRotationPref:Landroid/preference/Preference;

    .line 156
    iput-object p2, p0, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;->mResolver:Landroid/content/ContentResolver;

    .line 157
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 161
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;->mResolver:Landroid/content/ContentResolver;

    .line 162
    const-string/jumbo v2, "accelerometer_rotation"

    .line 161
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;->mRotationPref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 164
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;->mRotationPref:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 165
    const v0, 0x7f0c0055

    .line 164
    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 166
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :cond_1
    const v0, 0x7f0c0056

    goto :goto_1
.end method
