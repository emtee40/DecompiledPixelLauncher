.class public Lcom/google/android/apps/nexuslauncher/reflection/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/reflection/a/c;


# instance fields
.field private final m:Lcom/google/android/gms/common/api/a;

.field private final n:Lcom/google/android/gms/location/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/location/a;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->m:Lcom/google/android/gms/common/api/a;

    .line 29
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->n:Lcom/google/android/gms/location/a;

    .line 30
    return-void
.end method


# virtual methods
.method public l(Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V
    .locals 6

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->n:Lcom/google/android/gms/location/a;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->m:Lcom/google/android/gms/common/api/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/a;->GD(Lcom/google/android/gms/common/api/a;)Landroid/location/Location;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/d/i;-><init>()V

    .line 41
    const-string/jumbo v2, "lat_long"

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aC:Ljava/lang/String;

    .line 42
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aD:J

    .line 43
    const/4 v2, 0x2

    new-array v2, v2, [D

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aG:[D

    .line 44
    iget-object v2, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aG:[D

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const/4 v3, 0x0

    aput-wide v4, v2, v3

    .line 45
    iget-object v2, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aG:[D

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v0, 0x1

    aput-wide v4, v2, v0

    .line 47
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/d/i;)V

    invoke-static {p1, v0}, Lcom/google/research/reflection/common/b;->Ta(Lcom/google/research/reflection/a/b;Lcom/google/research/reflection/a/a;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string/jumbo v1, "Reflection.LocReader"

    const-string/jumbo v2, "cannot read location due to lack of permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
