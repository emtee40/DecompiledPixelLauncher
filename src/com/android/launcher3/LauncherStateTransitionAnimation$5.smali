.class final Lcom/android/launcher3/LauncherStateTransitionAnimation$5;
.super Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;F)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    .line 393
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>(F)V

    .line 1
    return-void
.end method


# virtual methods
.method public getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .prologue
    .line 402
    new-instance v0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation$5;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method getMaterialRevealViewStartFinalRadius()F
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsButtonVisualSize:I

    .line 397
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method onTransitionComplete()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedContainerMillis()V

    .line 421
    return-void
.end method
