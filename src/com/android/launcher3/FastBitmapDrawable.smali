.class public Lcom/android/launcher3/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final BRIGHTNESS:Landroid/util/Property;

.field public static final CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final sCachedFilter:Landroid/util/SparseArray;

.field private static final sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

.field private static final sTempFilterMatrix:Landroid/graphics/ColorMatrix;


# instance fields
.field private mAlpha:I

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mBrightness:I

.field private mBrightnessAnimator:Landroid/animation/ObjectAnimator;

.field private mDesaturation:I

.field private mIconPalette:Lcom/android/launcher3/graphics/IconPalette;

.field private mIsDisabled:Z

.field private mIsPressed:Z

.field protected final mPaint:Landroid/graphics/Paint;

.field private mPrevUpdateKey:I


# direct methods
.method static synthetic -wrap0(Lcom/android/launcher3/FastBitmapDrawable;)F
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBrightness()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/launcher3/FastBitmapDrawable;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->setBrightness(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable$1;

    invoke-direct {v0}, Lcom/android/launcher3/FastBitmapDrawable$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    .line 68
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    .line 79
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable$2;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "brightness"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/FastBitmapDrawable$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 78
    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->BRIGHTNESS:Landroid/util/Property;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 93
    iput v2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    .line 94
    iput v2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    .line 95
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mAlpha:I

    .line 96
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPrevUpdateKey:I

    .line 102
    iput-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 104
    return-void
.end method

.method private getBrightness()F
    .locals 2

    .prologue
    .line 254
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getExpectedBrightness()F
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    return v0

    .line 217
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsPressed:Z

    if-eqz v0, :cond_1

    const v0, 0x3ec8c8c9

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invalidateDesaturationAndBrightness()V
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/FastBitmapDrawable;->setDesaturation(F)V

    .line 212
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getExpectedBrightness()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/FastBitmapDrawable;->setBrightness(F)V

    .line 213
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBrightness(F)V
    .locals 2

    .prologue
    .line 246
    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 247
    iget v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    if-eq v1, v0, :cond_0

    .line 248
    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    .line 249
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->updateFilter()V

    .line 251
    :cond_0
    return-void
.end method

.method private setDesaturation(F)V
    .locals 2

    .prologue
    .line 231
    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 232
    iget v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    if-eq v1, v0, :cond_0

    .line 233
    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    .line 234
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->updateFilter()V

    .line 236
    :cond_0
    return-void
.end method

.method private updateFilter()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 263
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    if-lez v0, :cond_0

    .line 264
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    or-int/2addr v0, v1

    move v1, v0

    move v3, v4

    .line 275
    :goto_0
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPrevUpdateKey:I

    if-ne v1, v0, :cond_1

    .line 276
    return-void

    .line 265
    :cond_0
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    if-lez v0, :cond_6

    .line 267
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 271
    const/4 v1, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 278
    :cond_1
    iput v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPrevUpdateKey:I

    .line 280
    if-eq v1, v2, :cond_5

    .line 281
    sget-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    .line 282
    if-nez v0, :cond_2

    .line 283
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBrightness()F

    move-result v0

    .line 284
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 285
    if-eqz v3, :cond_3

    .line 286
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 287
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 286
    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 305
    :goto_1
    sget-object v2, Lcom/android/launcher3/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 311
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->invalidateSelf()V

    .line 312
    return-void

    .line 289
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getDesaturation()F

    move-result v3

    sub-float v3, v6, v3

    .line 290
    sget-object v5, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v5, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 291
    iget v3, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    if-lez v3, :cond_4

    .line 293
    sub-float v0, v6, v0

    .line 294
    sget-object v3, Lcom/android/launcher3/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v3}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    .line 295
    aput v0, v3, v4

    .line 296
    const/4 v4, 0x6

    aput v0, v3, v4

    .line 297
    const/16 v4, 0xc

    aput v0, v3, v4

    .line 298
    int-to-float v0, v2

    const/4 v4, 0x4

    aput v0, v3, v4

    .line 299
    int-to-float v0, v2

    const/16 v4, 0x9

    aput v0, v3, v4

    .line 300
    int-to-float v0, v2

    const/16 v2, 0xe

    aput v0, v3, v2

    .line 301
    sget-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    sget-object v2, Lcom/android/launcher3/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 303
    :cond_4
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    goto :goto_1

    .line 309
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_2

    :cond_6
    move v1, v2

    move v3, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 109
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getDesaturation()F
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getIconPalette()Lcom/android/launcher3/graphics/IconPalette;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIconPalette:Lcom/android/launcher3/graphics/IconPalette;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0x14

    .line 113
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->findDominantColorByHue(Landroid/graphics/Bitmap;I)I

    move-result v0

    .line 114
    const/4 v1, 0x1

    .line 113
    invoke-static {v0, v1}, Lcom/android/launcher3/graphics/IconPalette;->fromDominantColor(IZ)Lcom/android/launcher3/graphics/IconPalette;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIconPalette:Lcom/android/launcher3/graphics/IconPalette;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIconPalette:Lcom/android/launcher3/graphics/IconPalette;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    array-length v3, p1

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_4

    aget v4, p1, v0

    .line 183
    const v5, 0x10100a7

    if-ne v4, v5, :cond_1

    move v0, v1

    .line 188
    :goto_1
    iget-boolean v3, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsPressed:Z

    if-eq v3, v0, :cond_3

    .line 189
    iput-boolean v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsPressed:Z

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightnessAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightnessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsPressed:Z

    if-eqz v0, :cond_2

    .line 198
    sget-object v0, Lcom/android/launcher3/FastBitmapDrawable;->BRIGHTNESS:Landroid/util/Property;

    .line 197
    new-array v3, v1, [F

    .line 198
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getExpectedBrightness()F

    move-result v4

    aput v4, v3, v2

    .line 197
    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightnessAnimator:Landroid/animation/ObjectAnimator;

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightnessAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightnessAnimator:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/android/launcher3/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightnessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 205
    :goto_2
    return v1

    .line 182
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getExpectedBrightness()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/FastBitmapDrawable;->setBrightness(F)V

    goto :goto_2

    .line 207
    :cond_3
    return v2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 131
    iput p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mAlpha:I

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    return-void
.end method

.method public setIsDisabled(Z)V
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsDisabled:Z

    if-eq v0, p1, :cond_0

    .line 222
    iput-boolean p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsDisabled:Z

    .line 223
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->invalidateDesaturationAndBrightness()V

    .line 225
    :cond_0
    return-void
.end method
