.class public Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Hs:[I

.field private final Ht:I

.field private final Hu:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;[I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->Ht:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->Hu:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->Hs:[I

    return-void
.end method


# virtual methods
.method public MI()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->Hu:Ljava/util/ArrayList;

    return-object v0
.end method

.method public MJ()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->Hs:[I

    return-object v0
.end method

.method MK()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->Ht:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->Hu:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->Hu:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    move v0, v1

    :cond_0
    return v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->Hs:[I

    iget-object v3, p1, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->Hs:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->Hu:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->Hs:[I

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/g;->MH(Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;Landroid/os/Parcel;I)V

    return-void
.end method