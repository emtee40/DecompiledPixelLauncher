.class public Landroid/support/v4/app/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final acr:Ljava/util/List;

.field private final acs:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/support/v4/app/ax;->acr:Ljava/util/List;

    .line 40
    iput-object p2, p0, Landroid/support/v4/app/ax;->acs:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method anZ()Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v4/app/ax;->acr:Ljava/util/List;

    return-object v0
.end method

.method aoa()Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v4/app/ax;->acs:Ljava/util/List;

    return-object v0
.end method
