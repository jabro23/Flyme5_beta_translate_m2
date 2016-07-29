.class public Lcom/meizu/common/widget/FastScrollLetter;
.super Landroid/view/View;
.source "FastScrollLetter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;
    }
.end annotation


# static fields
.field public static final SECTION_COMPARE_TYPE1:I = 0x1

.field public static final SECTION_COMPARE_TYPE2:I = 0x2

.field private static final STATE_DRAGGING:I = 0x1

.field private static final STATE_NONE:I

.field private static final TAG:Ljava/lang/String;

.field private static final mDefaultLetters:[Ljava/lang/String;


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;

.field private mCurrentLetter:Ljava/lang/String;

.field private mCurrentShowPos:I

.field private mDefaultSectionType:I

.field private mEventDownY:I

.field private mEventMoveY:I

.field private mHeaderCount:I

.field private mHeaderHeight:I

.field private mHideLetteSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHideNum:I

.field private mHideStr:Ljava/lang/String;

.field private mIsAlwayShowLetter:Z

.field private mIsEnable:Z

.field private mLetterActiveTextColor:I

.field private mLetterMarginBottom:I

.field private mLetterMarginRight:I

.field private mLetterMarginTop:I

.field private mLetterTextColor:I

.field private mLetterTextSize:I

.field private mLetterWidth:I

.field private mLetters:[Ljava/lang/String;

.field private mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayOneTextSize:I

.field private mOverlayText:Landroid/widget/TextView;

.field private mOverlayTextHeight:I

.field private mOverlayTextLetters:[Ljava/lang/String;

.field private mOverlayTextMarginRight:I

.field private mOverlayTextTop:I

.field private mOverlayTextWidth:I

.field private mOverlayThreeTextSize:I

.field private mOverlayTwoTextSize:I

.field private mPaddingLeft:I

.field mPaint:Landroid/graphics/Paint;

.field private mPointBitmap:Landroid/graphics/Bitmap;

.field private mSectionCompare:Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mShowLetters:[Ljava/lang/String;

.field private mSingleLetterHeight:I

.field private mState:I

.field private mTopLetter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 196
    const-class v0, Lcom/meizu/common/widget/FastScrollLetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/FastScrollLetter;->TAG:Ljava/lang/String;

    .line 206
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultLetters:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/AbsListView;

    .prologue
    .line 282
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/FastScrollLetter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/AbsListView;
    .param p3, "sectionCompareType"    # I

    .prologue
    .line 294
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/FastScrollLetter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;)V

    .line 296
    iput p3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    .line 297
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/AbsListView;
    .param p3, "overlayText"    # Landroid/widget/TextView;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 325
    const v3, 0x7f01011b

    invoke-direct {p0, p1, v8, v3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    iput-boolean v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsAlwayShowLetter:Z

    .line 211
    iput-boolean v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsEnable:Z

    .line 216
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    .line 220
    const/4 v3, -0x1

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 222
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    .line 231
    const-string v3, ""

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    .line 234
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayOneTextSize:I

    .line 235
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTwoTextSize:I

    .line 236
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayThreeTextSize:I

    .line 237
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    .line 238
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    .line 239
    const/16 v3, 0xdc

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    .line 240
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextTop:I

    .line 243
    const/16 v3, 0x14

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    .line 246
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 247
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    .line 248
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    .line 249
    const/16 v3, 0x18

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    .line 252
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    .line 255
    iput-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    .line 260
    const-string v3, ""

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    .line 262
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    .line 266
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventDownY:I

    .line 268
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventMoveY:I

    .line 270
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    .line 272
    const/16 v3, 0x35

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    .line 275
    iput v9, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    .line 327
    sget-object v3, Lcom/meizu/common/R$styleable;->FastScrollLetter:[I

    const v4, 0x7f01011b

    invoke-virtual {p1, v8, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 330
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 333
    .local v2, "overlayDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    :cond_0
    if-eqz p2, :cond_1

    .line 338
    iput-object p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    .line 339
    invoke-virtual {p2}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 340
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 342
    const v3, 0x7f0b0252

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayOneTextSize:I

    .line 344
    const v3, 0x7f0b0253

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTwoTextSize:I

    .line 346
    const v3, 0x7f0b0254

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayThreeTextSize:I

    .line 349
    const v3, 0x7f0b0256

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    .line 351
    const v3, 0x7f0b0257

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    .line 353
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextTop:I

    .line 355
    const v3, 0x7f0b0255

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    .line 359
    const v3, 0x7f0b0258

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 361
    const v3, 0x7f0b0259

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    .line 363
    const v3, 0x7f0b025a

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    .line 365
    const v3, 0x7f0b025b

    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    .line 368
    iput-object p3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    .line 370
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    .line 371
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    invoke-virtual {v0, v9, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    .line 372
    const/4 v3, 0x3

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    .line 373
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    .line 374
    const/4 v3, 0x5

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 375
    const/4 v3, 0x6

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    .line 376
    const/4 v3, 0x7

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    .line 378
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 379
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 382
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    .line 383
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 385
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 390
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    .line 391
    const v3, 0x7f02007a

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/FastScrollLetter;->setBackgroundResource(I)V

    .line 393
    sget-object v3, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultLetters:[Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 394
    sget-object v3, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultLetters:[Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    .line 395
    sget-object v3, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultLetters:[Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetters:[Ljava/lang/String;

    .line 396
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/FastScrollLetter;->setVisibility(I)V

    .line 399
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 400
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/AbsListView;
    .param p3, "overlayText"    # Landroid/widget/TextView;
    .param p4, "sectionCompareType"    # I

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/FastScrollLetter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;)V

    .line 315
    iput p4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    .line 316
    return-void
.end method

.method private OnTouchingLetterChange(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "site"    # I

    .prologue
    .line 1158
    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextTop:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventDownY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 1159
    .local v1, "top":I
    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 1162
    .local v0, "bottom":I
    iget-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/meizu/common/widget/FastScrollLetter;->setSelection(IF)V

    .line 1165
    return-void
.end method

.method private alphaAnim(ZLandroid/view/View;)V
    .locals 6
    .param p1, "isShow"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1080
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1081
    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 1088
    :cond_2
    if-eqz p1, :cond_3

    move v2, v3

    .line 1089
    .local v2, "startAlpha":F
    :goto_1
    if-eqz p1, :cond_4

    .line 1091
    .local v1, "endAlpha":F
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 1092
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1093
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    new-instance v3, Lcom/meizu/common/widget/FastScrollLetter$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/meizu/common/widget/FastScrollLetter$1;-><init>(Lcom/meizu/common/widget/FastScrollLetter;Landroid/view/View;Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1110
    const-wide/16 v4, 0xb4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1111
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1112
    invoke-virtual {p2, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1113
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    goto :goto_0

    .end local v0    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "endAlpha":F
    .end local v2    # "startAlpha":F
    :cond_3
    move v2, v1

    .line 1088
    goto :goto_1

    .restart local v2    # "startAlpha":F
    :cond_4
    move v1, v3

    .line 1089
    goto :goto_2
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1145
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1148
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1149
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1150
    return-void
.end method

.method private getChoosePos(F)I
    .locals 10
    .param p1, "y"    # F

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v7, v7

    div-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    .line 812
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    int-to-float v6, v6

    div-float v6, p1, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    double-to-int v5, v6

    .line 813
    .local v5, "site":I
    const/4 v4, 0x0

    .line 815
    .local v4, "pos":I
    if-ltz v5, :cond_0

    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v6, v6

    if-lt v5, v6, :cond_1

    .line 816
    :cond_0
    const/4 v6, -0x1

    .line 855
    :goto_0
    return v6

    .line 820
    :cond_1
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideLetteSparseArray:Landroid/util/SparseArray;

    if-nez v6, :cond_5

    .line 821
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 822
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 823
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    add-int/2addr v4, v6

    .line 821
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 825
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 830
    :cond_3
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    mul-int/2addr v6, v5

    int-to-float v6, v6

    sub-float v3, p1, v6

    .line 832
    .local v3, "offY":F
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v6, v6, v5

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 833
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    iget v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    div-int/2addr v6, v7

    int-to-float v6, v6

    div-float v6, v3, v6

    float-to-int v6, v6

    add-int/2addr v4, v6

    :cond_4
    :goto_3
    move v6, v4

    .line 855
    goto :goto_0

    .line 836
    .end local v1    # "i":I
    .end local v3    # "offY":F
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v5, :cond_7

    .line 837
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 838
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideLetteSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    .line 836
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 840
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 846
    :cond_7
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    mul-int/2addr v6, v5

    int-to-float v6, v6

    sub-float v3, p1, v6

    .line 847
    .restart local v3    # "offY":F
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v6, v6, v5

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 848
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideLetteSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 849
    .local v0, "hideCount":I
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    int-to-float v6, v6

    div-float v6, v3, v6

    int-to-float v7, v0

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 851
    .local v2, "nn":I
    add-int/2addr v4, v2

    goto :goto_3
.end method

.method private getCurrentPos(I)I
    .locals 6
    .param p1, "letterSite"    # I

    .prologue
    const/4 v5, -0x1

    .line 1008
    const/4 v1, -0x1

    .line 1009
    .local v1, "position":I
    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    move v0, p1

    .line 1011
    .end local p1    # "letterSite":I
    .local v0, "letterSite":I
    :goto_0
    if-ne v1, v5, :cond_2

    .line 1012
    add-int/lit8 p1, v0, -0x1

    .end local v0    # "letterSite":I
    .restart local p1    # "letterSite":I
    move v3, v0

    .line 1014
    .local v3, "site":I
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    if-ltz v3, :cond_3

    .line 1015
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/FastScrollLetter;->getSection(I)I

    move-result v2

    .line 1017
    .local v2, "section":I
    if-ne v2, v5, :cond_0

    move v0, p1

    .line 1018
    .end local p1    # "letterSite":I
    .restart local v0    # "letterSite":I
    goto :goto_0

    .line 1020
    .end local v0    # "letterSite":I
    .restart local p1    # "letterSite":I
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v4, v2}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    .line 1022
    if-eq v1, v5, :cond_1

    .line 1023
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    :cond_1
    move v0, p1

    .line 1028
    .end local p1    # "letterSite":I
    .restart local v0    # "letterSite":I
    goto :goto_0

    .end local v2    # "section":I
    .end local v3    # "site":I
    :cond_2
    move p1, v0

    .line 1029
    .end local v0    # "letterSite":I
    .restart local p1    # "letterSite":I
    :cond_3
    return v1
.end method

.method private getNextPos(I)I
    .locals 5
    .param p1, "letterSite"    # I

    .prologue
    const/4 v4, -0x1

    .line 1039
    const/4 v0, -0x1

    .line 1041
    .local v0, "position":I
    :cond_0
    :goto_0
    if-ne v0, v4, :cond_1

    .line 1042
    add-int/lit8 p1, p1, 0x1

    move v2, p1

    .line 1044
    .local v2, "site":I
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    if-ltz v2, :cond_1

    .line 1045
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/FastScrollLetter;->getSection(I)I

    move-result v1

    .line 1047
    .local v1, "section":I
    if-eq v1, v4, :cond_0

    .line 1050
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v3, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 1054
    goto :goto_0

    .line 1056
    .end local v1    # "section":I
    .end local v2    # "site":I
    :cond_1
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v3, v3

    if-ge p1, v3, :cond_2

    .line 1057
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 1059
    :cond_2
    if-ne v0, v4, :cond_3

    .line 1060
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    .line 1062
    :cond_3
    return v0
.end method

.method private getPxSize(Landroid/content/Context;I)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dimenReId"    # I

    .prologue
    .line 750
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getSection(I)I
    .locals 9
    .param p1, "site"    # I

    .prologue
    const/4 v7, -0x1

    .line 873
    const/4 v5, -0x1

    .line 875
    .local v5, "section":I
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionCompare:Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;

    if-eqz v6, :cond_0

    .line 876
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionCompare:Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;

    invoke-interface {v6, p1}, Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;->getSection(I)I

    move-result v6

    .line 911
    :goto_0
    return v6

    .line 879
    :cond_0
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    aget-object v2, v6, p1

    .line 880
    .local v2, "letter":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    .line 883
    .local v3, "obj":[Ljava/lang/Object;
    if-nez v3, :cond_1

    move v6, v7

    .line 884
    goto :goto_0

    .line 887
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_2

    .line 888
    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 889
    move v5, v1

    .line 893
    :cond_2
    const/4 v0, 0x0

    .line 895
    .local v0, "footerViewCount":I
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_4

    if-ltz v5, :cond_4

    move v6, v5

    .line 896
    goto :goto_0

    .line 887
    .end local v0    # "footerViewCount":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 897
    .restart local v0    # "footerViewCount":I
    :cond_4
    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_6

    .line 898
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6, v5}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v4

    .line 900
    .local v4, "position":I
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v6, v6, Landroid/widget/ListView;

    if-eqz v6, :cond_5

    .line 901
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    .line 904
    :cond_5
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v0

    if-ge v4, v6, :cond_6

    .line 905
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6, v4}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v6

    if-ne v6, v5, :cond_6

    move v6, v5

    .line 906
    goto :goto_0

    .end local v4    # "position":I
    :cond_6
    move v6, v7

    .line 911
    goto :goto_0
.end method

.method private isContain(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    .line 794
    const/4 v0, 0x1

    .line 796
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContainWithTop(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    .line 804
    const/4 v0, 0x1

    .line 806
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTouchingLetterTop()V
    .locals 3

    .prologue
    .line 863
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 869
    :goto_0
    return-void

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_0
.end method

.method private setLetterState(ZLandroid/view/View;)V
    .locals 1
    .param p1, "isShow"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->alphaAnim(ZLandroid/view/View;)V

    .line 1074
    iget-boolean v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsAlwayShowLetter:Z

    if-nez v0, :cond_0

    .line 1075
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/FastScrollLetter;->alphaAnim(ZLandroid/view/View;)V

    .line 1077
    :cond_0
    return-void
.end method

.method private setOverLayText(I)V
    .locals 2
    .param p1, "site"    # I

    .prologue
    .line 969
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 970
    .local v0, "currentLetter":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    .line 971
    return-void
.end method

.method private setOverLayText(Ljava/lang/String;)V
    .locals 4
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    .line 979
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayThreeTextSize:I

    .line 981
    .local v0, "textSize":I
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentLetter:Ljava/lang/String;

    if-ne p1, v1, :cond_0

    .line 999
    :goto_0
    return-void

    .line 984
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentLetter:Ljava/lang/String;

    .line 986
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentLetter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 997
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 998
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentLetter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 988
    :pswitch_0
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayOneTextSize:I

    .line 989
    goto :goto_1

    .line 993
    :pswitch_1
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTwoTextSize:I

    goto :goto_1

    .line 986
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setOverlayTextLayout(F)V
    .locals 8
    .param p1, "offsetTop"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1123
    float-to-int v4, p1

    iput v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventDownY:I

    .line 1125
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    add-int/2addr v5, v6

    sub-int v1, v4, v5

    .line 1127
    .local v1, "left":I
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextTop:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    float-to-int v3, v4

    .line 1128
    .local v3, "top":I
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    sub-int v2, v4, v5

    .line 1129
    .local v2, "right":I
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    add-int v0, v3, v4

    .line 1131
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1133
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v4

    if-nez v4, :cond_0

    .line 1134
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 1139
    :goto_0
    return-void

    .line 1136
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    iget v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v3, v6, v0}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0
.end method

.method private setSelection(IF)V
    .locals 7
    .param p1, "site"    # I
    .param p2, "y"    # F

    .prologue
    .line 918
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 920
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v4, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 921
    check-cast v4, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v4}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    .line 922
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 925
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    instance-of v4, v0, Landroid/widget/SectionIndexer;

    if-eqz v4, :cond_4

    .line 926
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 932
    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 933
    .local v1, "currentSite":I
    move v2, p1

    .line 936
    .local v2, "scrollSite":I
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/FastScrollLetter;->getCurrentPos(I)I

    move-result v3

    .line 939
    .local v3, "selectionPos":I
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 940
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/FastScrollLetter;->getNextPos(I)I

    move-result v3

    .line 944
    :cond_1
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_5

    .line 946
    :cond_2
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 947
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    .line 961
    .end local v1    # "currentSite":I
    .end local v2    # "scrollSite":I
    .end local v3    # "selectionPos":I
    :cond_3
    :goto_0
    return-void

    .line 928
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    sget-object v4, Lcom/meizu/common/widget/FastScrollLetter;->TAG:Ljava/lang/String;

    const-string v5, "mSectionIndexer is null, adapter is not implements"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 952
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "currentSite":I
    .restart local v2    # "scrollSite":I
    .restart local v3    # "selectionPos":I
    :cond_5
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    if-eq v1, v4, :cond_3

    .line 953
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    invoke-direct {p0, v4}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(I)V

    .line 954
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v4, v4, Landroid/widget/ListView;

    if-eqz v4, :cond_6

    .line 955
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ListView;

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    neg-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 958
    :cond_6
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_0
.end method


# virtual methods
.method public getHeaderHeight()I
    .locals 1

    .prologue
    .line 1256
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    return v0
.end method

.method public getHideNum()I
    .locals 1

    .prologue
    .line 1272
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    return v0
.end method

.method public getHideStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    return-object v0
.end method

.method public getLetterMarginBottom()I
    .locals 1

    .prologue
    .line 1216
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    return v0
.end method

.method public getLetterMarginRight()I
    .locals 1

    .prologue
    .line 1224
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    return v0
.end method

.method public getLetterMarginTop()I
    .locals 1

    .prologue
    .line 1208
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    return v0
.end method

.method public getLetterTextColor()I
    .locals 1

    .prologue
    .line 1192
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    return v0
.end method

.method public getLetterTextSize()I
    .locals 1

    .prologue
    .line 1200
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    return v0
.end method

.method public getLetterWidth()I
    .locals 1

    .prologue
    .line 1232
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    return v0
.end method

.method public getLetters()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetters:[Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayTextLetters()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayTextMarginRight()I
    .locals 1

    .prologue
    .line 1184
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    return v0
.end method

.method public getOverlayTextWidth()I
    .locals 1

    .prologue
    .line 1176
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 1264
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 755
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 756
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    .line 757
    .local v3, "paddingLeft":I
    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 758
    iget v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    mul-int/lit8 v3, v7, -0x1

    .line 761
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 763
    .local v2, "letters":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v7, v2

    if-nez v7, :cond_2

    .line 787
    :cond_1
    return-void

    .line 767
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getHeight()I

    move-result v0

    .line 768
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getWidth()I

    move-result v4

    .line 770
    .local v4, "width":I
    array-length v7, v2

    div-int v7, v0, v7

    iput v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    .line 771
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v2

    if-ge v1, v7, :cond_1

    .line 773
    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    aget-object v9, v2, v1

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    int-to-float v8, v3

    add-float v5, v7, v8

    .line 775
    .local v5, "xPos":F
    iget v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    mul-int/2addr v7, v1

    iget v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    add-int/2addr v7, v8

    int-to-float v6, v7

    .line 778
    .local v6, "yPos":F
    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    aget-object v7, v2, v1

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 779
    div-int/lit8 v7, v4, 0x2

    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v7, v3

    int-to-float v5, v7

    .line 780
    iget v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    mul-int/2addr v7, v1

    iget v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v6, v7

    .line 781
    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 771
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 783
    :cond_3
    aget-object v7, v2, v1

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 302
    const-class v0, Lcom/meizu/common/widget/FastScrollLetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 303
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 405
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 406
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 613
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 615
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    add-int/2addr v5, v6

    sub-int v1, v4, v5

    .line 617
    .local v1, "left":I
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 618
    .local v3, "top":I
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    sub-int v2, v4, v5

    .line 619
    .local v2, "right":I
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    sub-int v0, v4, v5

    .line 621
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v4

    if-nez v4, :cond_0

    .line 622
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/meizu/common/widget/FastScrollLetter;->layout(IIII)V

    .line 628
    :goto_0
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->measure(II)V

    .line 629
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    .line 630
    return-void

    .line 624
    :cond_0
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v4, v3, v5, v0}, Lcom/meizu/common/widget/FastScrollLetter;->layout(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 643
    iget-boolean v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsEnable:Z

    if-nez v5, :cond_1

    .line 746
    :cond_0
    :goto_0
    return v3

    .line 647
    :cond_1
    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v5

    if-nez v5, :cond_0

    .line 651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 652
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 653
    .local v2, "y":F
    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-gez v5, :cond_2

    .line 654
    const/4 v2, 0x0

    .line 657
    :cond_2
    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 664
    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    invoke-direct {p0, v5}, Lcom/meizu/common/widget/FastScrollLetter;->getChoosePos(F)I

    move-result v1

    .line 666
    .local v1, "site":I
    packed-switch v0, :pswitch_data_0

    .line 742
    :cond_3
    :goto_1
    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    if-ne v5, v4, :cond_0

    move v3, v4

    .line 746
    goto :goto_0

    .line 668
    :pswitch_0
    if-ltz v1, :cond_0

    .line 671
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventMoveY:I

    .line 673
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/meizu/common/widget/FastScrollLetter;->isContain(FF)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 674
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 675
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    .line 677
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 678
    invoke-direct {p0}, Lcom/meizu/common/widget/FastScrollLetter;->cancelFling()V

    .line 680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    .line 681
    invoke-direct {p0, v4, p0}, Lcom/meizu/common/widget/FastScrollLetter;->setLetterState(ZLandroid/view/View;)V

    .line 683
    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/FastScrollLetter;->OnTouchingLetterChange(Landroid/view/MotionEvent;I)V

    .line 684
    iput v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    move v3, v4

    .line 685
    goto :goto_0

    .line 687
    :cond_4
    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/meizu/common/widget/FastScrollLetter;->isContainWithTop(FF)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 689
    iput v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 690
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 691
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    .line 692
    iput v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    .line 693
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    .line 694
    invoke-direct {p0, v4, p0}, Lcom/meizu/common/widget/FastScrollLetter;->setLetterState(ZLandroid/view/View;)V

    .line 696
    invoke-direct {p0}, Lcom/meizu/common/widget/FastScrollLetter;->onTouchingLetterTop()V

    move v3, v4

    .line 698
    goto/16 :goto_0

    .line 702
    :cond_5
    :pswitch_1
    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    if-ne v5, v4, :cond_3

    .line 704
    if-ltz v1, :cond_7

    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_7

    .line 705
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventMoveY:I

    .line 707
    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    if-ne v5, v7, :cond_6

    .line 708
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    .line 710
    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/FastScrollLetter;->OnTouchingLetterChange(Landroid/view/MotionEvent;I)V

    goto/16 :goto_1

    .line 712
    :cond_7
    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/meizu/common/widget/FastScrollLetter;->isContainWithTop(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 715
    iput v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 716
    invoke-direct {p0}, Lcom/meizu/common/widget/FastScrollLetter;->onTouchingLetterTop()V

    goto/16 :goto_1

    .line 728
    :pswitch_2
    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v5, v3}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 730
    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    if-ne v5, v4, :cond_3

    .line 731
    iput v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 732
    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 733
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    .line 734
    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventMoveY:I

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    .line 735
    invoke-direct {p0, v3, p0}, Lcom/meizu/common/widget/FastScrollLetter;->setLetterState(ZLandroid/view/View;)V

    .line 736
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    move v3, v4

    .line 737
    goto/16 :goto_0

    .line 666
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "isAlwayShowLetter"    # Z

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsAlwayShowLetter:Z

    .line 489
    iget-boolean v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsAlwayShowLetter:Z

    if-eqz v0, :cond_0

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setVisibility(I)V

    .line 492
    :cond_0
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 511
    iput-boolean p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsEnable:Z

    .line 512
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setVisibility(I)V

    .line 513
    return-void

    .line 512
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setHeaderHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 545
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    .line 546
    return-void
.end method

.method public setHideLetter(Landroid/util/SparseArray;[Ljava/lang/String;)V
    .locals 0
    .param p2, "hideLetters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideLetteSparseArray:Landroid/util/SparseArray;

    .line 463
    iput-object p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 464
    return-void
.end method

.method public setHideLetterNum(Ljava/lang/String;I)V
    .locals 7
    .param p1, "hideStr"    # Ljava/lang/String;
    .param p2, "num"    # I

    .prologue
    .line 415
    const/4 v2, 0x0

    .line 417
    .local v2, "pos":I
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    .line 418
    iput p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    .line 419
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    add-int/lit8 v5, v5, 0x1

    div-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    .line 421
    .local v1, "letters":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 422
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v1, v2

    .line 423
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    aput-object v4, v1, v3

    .line 421
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    goto :goto_0

    .line 425
    :cond_0
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    aput-object v5, v1, v4

    .line 426
    iput-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setHideLetterStr(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "hideStr"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 435
    if-eqz p2, :cond_0

    .line 436
    iput-object p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    .line 438
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public setLayoutPaddingLeft(I)V
    .locals 0
    .param p1, "paddingLeft"    # I

    .prologue
    .line 588
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    .line 589
    return-void
.end method

.method public setLetterActiveColor(II)V
    .locals 2
    .param p1, "defaultColor"    # I
    .param p2, "activeColor"    # I

    .prologue
    .line 499
    iput p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    .line 500
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    .line 501
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    .line 503
    return-void
.end method

.method public setLetterBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/FastScrollLetter;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 599
    return-void
.end method

.method public setLetterParam(IIIIII)V
    .locals 3
    .param p1, "letterTextSize"    # I
    .param p2, "letterTextColor"    # I
    .param p3, "letterMarginTop"    # I
    .param p4, "letterMarginBottom"    # I
    .param p5, "letterMarginRight"    # I
    .param p6, "letterWidth"    # I

    .prologue
    const/4 v2, -0x1

    .line 560
    if-eq p1, v2, :cond_0

    .line 561
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    .line 562
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 564
    :cond_0
    if-eq p2, v2, :cond_1

    .line 565
    iput p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    .line 566
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    .line 567
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 568
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    .line 570
    :cond_1
    if-eq p3, v2, :cond_2

    .line 571
    iput p3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 573
    :cond_2
    if-eq p4, v2, :cond_3

    .line 574
    iput p4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    .line 576
    :cond_3
    if-eq p5, v2, :cond_4

    .line 577
    iput p5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    .line 579
    :cond_4
    if-eq p6, v2, :cond_5

    .line 580
    iput p6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    .line 582
    :cond_5
    return-void
.end method

.method public setLetters([Ljava/lang/String;)V
    .locals 0
    .param p1, "letters"    # [Ljava/lang/String;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 522
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetters:[Ljava/lang/String;

    .line 523
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLetters([Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public setOverlayBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 608
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 609
    return-void
.end method

.method public setOverlayParam(II)V
    .locals 1
    .param p1, "overlayTextWidth"    # I
    .param p2, "overlayTextMarginRight"    # I

    .prologue
    const/4 v0, -0x1

    .line 473
    if-eq p1, v0, :cond_0

    .line 474
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    .line 477
    :cond_0
    if-eq p2, v0, :cond_1

    .line 478
    iput p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    .line 480
    :cond_1
    return-void
.end method

.method public setOverlayTextLetters([Ljava/lang/String;)V
    .locals 1
    .param p1, "overlayTextLetters"    # [Ljava/lang/String;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    .line 452
    :cond_1
    return-void
.end method

.method public setSectionCompare(Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;)V
    .locals 0
    .param p1, "compare"    # Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionCompare:Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;

    .line 639
    return-void
.end method

.method public setTopLetter(Ljava/lang/String;)V
    .locals 1
    .param p1, "topLetter"    # Ljava/lang/String;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    .line 534
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    .line 537
    :cond_1
    return-void
.end method
