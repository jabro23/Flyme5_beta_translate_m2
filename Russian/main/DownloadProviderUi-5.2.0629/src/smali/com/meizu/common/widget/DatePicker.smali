.class public Lcom/meizu/common/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/DatePicker$SavedState;,
        Lcom/meizu/common/widget/DatePicker$DateAdapter;,
        Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7f5

.field private static final DEFAULT_START_YEAR:I = 0x7b2

.field private static final NUMBER_OF_MONTHS:I = 0xc


# instance fields
.field private isLunar:Z

.field private mDay:I

.field private mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mDayUnit:Landroid/widget/TextView;

.field private mEndYear:I

.field private mIsAccessibilityEnable:Z

.field private mIsDrawLine:Z

.field mIsLayoutRtl:Z

.field private mLayoutResId:I

.field mLeap:Ljava/lang/String;

.field private mLineOneHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineTwoHeight:I

.field mLunarMouths:[Ljava/lang/String;

.field private mLunarNormalTextSize:I

.field private mLunarSelectTextSize:I

.field mLunardays:[Ljava/lang/String;

.field private mMonth:I

.field private volatile mMonthLocale:Ljava/util/Locale;

.field private mMonthOfDays:I

.field private mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mMonthUnit:Landroid/widget/TextView;

.field private mMonthUpdateLock:Ljava/lang/Object;

.field private mMonths:[Ljava/lang/String;

.field private mNormalItemHeight:F

.field private mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

.field private mOneScreenCount:I

.field mOrder:Ljava/lang/String;

.field private mPickerHolder:Landroid/widget/LinearLayout;

.field private mSelectItemHeight:F

.field private mShortMonths:[Ljava/lang/String;

.field private mSolarNormalTextSize:I

.field private mSolarSelectTextSize:I

.field private mStartYear:I

.field private mWidthPadding:I

.field private mYear:I

.field private mYearOfMonths:I

.field private mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mYearUnit:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 257
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    .line 93
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    .line 101
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    .line 102
    const v2, 0x7f04002c

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    .line 119
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/common/widget/DatePicker;->mIsAccessibilityEnable:Z

    .line 125
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/common/widget/DatePicker;->mIsLayoutRtl:Z

    .line 261
    sget-object v2, Lcom/meizu/common/R$styleable;->DatePicker:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 263
    .local v16, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/16 v3, 0x7b2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    .line 265
    const/4 v2, 0x1

    const/16 v3, 0x7f5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    .line 267
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    .line 270
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    .line 273
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    .line 275
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    .line 276
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Lcom/meizu/common/widget/DatePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 280
    const v2, 0x7f0d00b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    const v3, 0x7f0800aa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 285
    :cond_0
    const v2, 0x7f0d00b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    const v3, 0x7f0800ac

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 290
    :cond_1
    const v2, 0x7f0d00bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    const v3, 0x7f0800ab

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 296
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    .line 297
    .local v19, "cal":Ljava/util/Calendar;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    .line 298
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 299
    const/4 v2, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    .line 300
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    .line 302
    const/4 v2, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    .line 304
    .local v6, "max":I
    const v2, 0x7f0d00a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mPickerHolder:Landroid/widget/LinearLayout;

    .line 306
    const v2, 0x7f0d00b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 307
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 311
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/DatePicker$DateAdapter;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/meizu/common/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DatePicker;I)V

    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    const/4 v8, 0x0

    add-int/lit8 v9, v6, -0x1

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 314
    const v2, 0x7f0d00b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 315
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 319
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 320
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v8, Lcom/meizu/common/widget/DatePicker$DateAdapter;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lcom/meizu/common/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DatePicker;I)V

    const/high16 v9, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    const/16 v11, 0xc

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    const/4 v13, 0x0

    const/16 v14, 0xb

    const/4 v15, 0x1

    invoke-virtual/range {v7 .. v15}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 323
    const v2, 0x7f0d00bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 324
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    .line 325
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    .line 327
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 332
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->updateYearPicker()V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->isZh()Z

    move-result v22

    .line 337
    .local v22, "isZh":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    if-eqz v22, :cond_a

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    if-eqz v22, :cond_b

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    if-eqz v22, :cond_c

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->adjustLayout4FocusedPosition()V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v26

    .line 345
    .local v26, "textUnitPaddingTop":I
    new-instance v21, Landroid/util/DisplayMetrics;

    invoke-direct/range {v21 .. v21}, Landroid/util/DisplayMetrics;-><init>()V

    .line 346
    .local v21, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {v21 .. v21}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 347
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    move/from16 v20, v0

    .line 348
    .local v20, "defaultScaledDensity":F
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    move/from16 v24, v0

    .line 349
    .local v24, "nowScaledDensity":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    div-float v2, v2, v24

    sub-float v3, v24, v20

    mul-float/2addr v2, v3

    const v3, 0x3fa66666    # 1.3f

    div-float v25, v2, v3

    .line 350
    .local v25, "paddingTopOffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    move/from16 v0, v26

    int-to-float v4, v0

    sub-float v4, v4, v25

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    move/from16 v0, v26

    int-to-float v4, v0

    sub-float v4, v4, v25

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    move/from16 v0, v26

    int-to-float v4, v0

    sub-float v4, v4, v25

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 358
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->setEnabled(Z)V

    .line 361
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mLunarNormalTextSize:I

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mLunarSelectTextSize:I

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mSolarNormalTextSize:I

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mSolarSelectTextSize:I

    .line 366
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mLineOneHeight:I

    .line 367
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mLineTwoHeight:I

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mWidthPadding:I

    .line 369
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    .line 371
    sget-object v2, Lcom/meizu/common/R$styleable;->MZTheme:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 372
    .local v18, "b":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    .line 374
    .local v23, "lineColor":I
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 378
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/common/widget/DatePicker;->mIsDrawLine:Z

    .line 379
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->setWillNotDraw(Z)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLunarMouths:[Ljava/lang/String;

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLunardays:[Ljava/lang/String;

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLeap:Ljava/lang/String;

    .line 385
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "mx4pro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/DatePicker$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/meizu/common/widget/DatePicker$1;-><init>(Lcom/meizu/common/widget/DatePicker;)V

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/DatePicker$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/meizu/common/widget/DatePicker$2;-><init>(Lcom/meizu/common/widget/DatePicker;)V

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/DatePicker$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/meizu/common/widget/DatePicker$3;-><init>(Lcom/meizu/common/widget/DatePicker;)V

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    .line 418
    :cond_7
    const-string v2, "accessibility"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/accessibility/AccessibilityManager;

    .line 419
    .local v17, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v17, :cond_8

    .line 420
    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/common/widget/DatePicker;->mIsAccessibilityEnable:Z

    .line 422
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/common/widget/DatePicker;->mIsAccessibilityEnable:Z

    if-eqz v2, :cond_9

    .line 423
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->setFocusable(Z)V

    .line 425
    :cond_9
    return-void

    .line 337
    .end local v17    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v18    # "b":Landroid/content/res/TypedArray;
    .end local v20    # "defaultScaledDensity":F
    .end local v21    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v23    # "lineColor":I
    .end local v24    # "nowScaledDensity":F
    .end local v25    # "paddingTopOffset":F
    .end local v26    # "textUnitPaddingTop":I
    :cond_a
    const/16 v2, 0x8

    goto/16 :goto_0

    .line 338
    :cond_b
    const/16 v2, 0x8

    goto/16 :goto_1

    .line 339
    :cond_c
    const/16 v2, 0x8

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/DatePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    return v0
.end method

.method static synthetic access$1002(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->sendAccessibilityEvent()V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/common/widget/DatePicker;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/common/widget/DatePicker;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/meizu/common/widget/DatePicker;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/DatePicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->getLunarMonths(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/DatePicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/DatePicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->getLunarDays(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getYearMonths()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    return v0
.end method

.method static synthetic access$702(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    return v0
.end method

.method static synthetic access$902(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    return p1
.end method

.method private adjustLayout4FocusedPosition()V
    .locals 2

    .prologue
    .line 1015
    const v0, 0x7f0d00b5

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    .line 1016
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1020
    :cond_0
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    .line 1021
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1025
    :cond_1
    const v0, 0x7f0d00bd

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    .line 1026
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1027
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1029
    :cond_2
    return-void
.end method

.method private getLunarDays(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 682
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLunardays:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 683
    const/4 v0, 0x0

    .line 686
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLunardays:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getLunarMonths(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 655
    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v2}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 656
    .local v0, "leapMonth":I
    if-nez v0, :cond_1

    .line 657
    const/16 v2, 0xc

    if-lt p1, v2, :cond_2

    .line 677
    :cond_0
    :goto_0
    return-object v1

    .line 661
    :cond_1
    const/16 v2, 0xd

    if-ge p1, v2, :cond_0

    .line 666
    :cond_2
    if-eqz v0, :cond_5

    add-int/lit8 v1, v0, -0x1

    if-le p1, v1, :cond_5

    .line 667
    if-ne p1, v0, :cond_4

    .line 668
    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->mIsLayoutRtl:Z

    if-eqz v1, :cond_3

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mLeap:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mLunarMouths:[Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 671
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mLeap:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mLunarMouths:[Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 674
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mLunarMouths:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 677
    :cond_5
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mLunarMouths:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_0
.end method

.method private getMonthDays()I
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x1

    .line 982
    iget-boolean v5, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v5, :cond_4

    .line 983
    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 984
    .local v3, "m":I
    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v5}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v2

    .line 985
    .local v2, "leapMonth":I
    const/4 v1, 0x0

    .line 986
    .local v1, "isLeapMonth":Z
    if-eqz v2, :cond_0

    .line 987
    if-ne v2, v3, :cond_3

    move v1, v4

    .line 990
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    if-eqz v2, :cond_2

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    if-ge v4, v2, :cond_2

    .line 991
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 994
    :cond_2
    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v4, v3, v1}, Lcom/meizu/common/util/LunarCalendar;->daysInMonth(IIZ)I

    move-result v4

    .line 1000
    .end local v1    # "isLeapMonth":Z
    .end local v2    # "leapMonth":I
    .end local v3    # "m":I
    :goto_1
    return v4

    .line 987
    .restart local v1    # "isLeapMonth":Z
    .restart local v2    # "leapMonth":I
    .restart local v3    # "m":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 996
    .end local v1    # "isLeapMonth":Z
    .end local v2    # "leapMonth":I
    .end local v3    # "m":I
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 997
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 998
    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 999
    const/4 v4, 0x2

    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1000
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    goto :goto_1
.end method

.method private getShortMonths()[Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xc

    .line 624
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 625
    .local v0, "currentLocale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 626
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 650
    :goto_0
    return-object v2

    .line 628
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 629
    :try_start_0
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 630
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 631
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 632
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x0

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 641
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 642
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 643
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 642
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 646
    :cond_2
    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    .line 648
    .end local v1    # "i":I
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getTimeText(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1070
    const/4 v0, 0x0

    .line 1071
    .local v0, "position":I
    packed-switch p1, :pswitch_data_0

    .line 1100
    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1

    .line 1073
    :pswitch_0
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1076
    :pswitch_1
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 1077
    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v1, :cond_1

    .line 1078
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->getLunarMonths(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1080
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1081
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 1083
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1084
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0

    .line 1090
    :pswitch_2
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    add-int/lit8 v0, v1, -0x1

    .line 1091
    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v1, :cond_3

    .line 1092
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->getLunarDays(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1094
    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1071
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getYearMonths()I
    .locals 2

    .prologue
    const/16 v0, 0xc

    .line 1005
    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v1, :cond_0

    .line 1006
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return v0

    .line 1006
    :cond_1
    const/16 v0, 0xd

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1032
    const-string v1, "[0-9]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1033
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private isZh()Z
    .locals 3

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1126
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, "language":Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1128
    const/4 v2, 0x1

    .line 1130
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 20
    .param p1, "months"    # [Ljava/lang/String;

    .prologue
    .line 450
    const/16 v18, 0x0

    aget-object v18, p1, v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    .line 456
    .local v11, "format":Ljava/text/DateFormat;
    :goto_0
    instance-of v0, v11, Ljava/text/SimpleDateFormat;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 457
    check-cast v11, Ljava/text/SimpleDateFormat;

    .end local v11    # "format":Ljava/text/DateFormat;
    invoke-virtual {v11}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    .line 467
    :goto_1
    const v18, 0x7f0d00b3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 468
    .local v13, "monthLayout":Landroid/widget/FrameLayout;
    const v18, 0x7f0d00b7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 469
    .local v3, "dayLayout":Landroid/widget/FrameLayout;
    const v18, 0x7f0d00bb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    .line 470
    .local v17, "yearLayout":Landroid/widget/FrameLayout;
    const v18, 0x7f0d00b6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 471
    .local v9, "divider1":Landroid/widget/ImageView;
    const v18, 0x7f0d00ba

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 473
    .local v10, "divider2":Landroid/widget/ImageView;
    const v18, 0x7f0d00a3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 474
    .local v15, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 476
    const/16 v16, 0x0

    .line 477
    .local v16, "quoted":Z
    const/4 v4, 0x0

    .local v4, "didDay":Z
    const/4 v7, 0x0

    .local v7, "didMonth":Z
    const/4 v8, 0x0

    .local v8, "didYear":Z
    const/4 v5, 0x0

    .local v5, "didDiv1":Z
    const/4 v6, 0x0

    .line 479
    .local v6, "didDiv2":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_a

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 482
    .local v2, "c":C
    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v2, v0, :cond_0

    .line 483
    if-nez v16, :cond_5

    const/16 v16, 0x1

    .line 486
    :cond_0
    :goto_3
    if-nez v16, :cond_2

    .line 487
    const/4 v14, 0x0

    .line 488
    .local v14, "need_divider":Z
    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v2, v0, :cond_6

    if-nez v4, :cond_6

    .line 489
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 490
    const/4 v4, 0x1

    .line 491
    const/4 v14, 0x1

    .line 502
    :cond_1
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v14, :cond_2

    .line 503
    if-nez v5, :cond_9

    .line 504
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 505
    const/4 v5, 0x1

    .line 479
    .end local v14    # "need_divider":Z
    :cond_2
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 453
    .end local v2    # "c":C
    .end local v3    # "dayLayout":Landroid/widget/FrameLayout;
    .end local v4    # "didDay":Z
    .end local v5    # "didDiv1":Z
    .end local v6    # "didDiv2":Z
    .end local v7    # "didMonth":Z
    .end local v8    # "didYear":Z
    .end local v9    # "divider1":Landroid/widget/ImageView;
    .end local v10    # "divider2":Landroid/widget/ImageView;
    .end local v12    # "i":I
    .end local v13    # "monthLayout":Landroid/widget/FrameLayout;
    .end local v15    # "parent":Landroid/widget/LinearLayout;
    .end local v16    # "quoted":Z
    .end local v17    # "yearLayout":Landroid/widget/FrameLayout;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    .restart local v11    # "format":Ljava/text/DateFormat;
    goto/16 :goto_0

    .line 460
    :cond_4
    new-instance v18, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    goto/16 :goto_1

    .line 483
    .end local v11    # "format":Ljava/text/DateFormat;
    .restart local v2    # "c":C
    .restart local v3    # "dayLayout":Landroid/widget/FrameLayout;
    .restart local v4    # "didDay":Z
    .restart local v5    # "didDiv1":Z
    .restart local v6    # "didDiv2":Z
    .restart local v7    # "didMonth":Z
    .restart local v8    # "didYear":Z
    .restart local v9    # "divider1":Landroid/widget/ImageView;
    .restart local v10    # "divider2":Landroid/widget/ImageView;
    .restart local v12    # "i":I
    .restart local v13    # "monthLayout":Landroid/widget/FrameLayout;
    .restart local v15    # "parent":Landroid/widget/LinearLayout;
    .restart local v16    # "quoted":Z
    .restart local v17    # "yearLayout":Landroid/widget/FrameLayout;
    :cond_5
    const/16 v16, 0x0

    goto :goto_3

    .line 492
    .restart local v14    # "need_divider":Z
    :cond_6
    const/16 v18, 0x4d

    move/from16 v0, v18

    if-eq v2, v0, :cond_7

    const/16 v18, 0x4c

    move/from16 v0, v18

    if-ne v2, v0, :cond_8

    :cond_7
    if-nez v7, :cond_8

    .line 493
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    const/4 v7, 0x1

    .line 495
    const/4 v14, 0x1

    goto :goto_4

    .line 496
    :cond_8
    const/16 v18, 0x79

    move/from16 v0, v18

    if-ne v2, v0, :cond_1

    if-nez v8, :cond_1

    .line 497
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    const/4 v8, 0x1

    .line 499
    const/4 v14, 0x1

    goto :goto_4

    .line 507
    :cond_9
    if-nez v6, :cond_2

    .line 508
    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 509
    const/4 v6, 0x1

    goto :goto_5

    .line 517
    .end local v2    # "c":C
    .end local v14    # "need_divider":Z
    :cond_a
    if-nez v7, :cond_b

    .line 518
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 520
    :cond_b
    if-nez v4, :cond_c

    .line 521
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 523
    :cond_c
    if-nez v8, :cond_d

    .line 524
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/meizu/common/widget/DatePicker$4;

    invoke-direct/range {v19 .. v20}, Lcom/meizu/common/widget/DatePicker$4;-><init>(Lcom/meizu/common/widget/DatePicker;)V

    invoke-virtual/range {v18 .. v19}, Lcom/meizu/common/widget/ScrollTextView;->post(Ljava/lang/Runnable;)Z

    .line 581
    return-void
.end method

.method private sendAccessibilityEvent()V
    .locals 4

    .prologue
    .line 1104
    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->mIsAccessibilityEnable:Z

    if-eqz v1, :cond_0

    .line 1105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5eff\u5341"

    const-string v3, "\u4e8c\u5341"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5eff"

    const-string v3, "\u4e8c\u5341"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, "dateText":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1108
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/DatePicker;->sendAccessibilityEvent(I)V

    .line 1110
    .end local v0    # "dateText":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateDate(IIIZZ)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "doAnimate"    # Z
    .param p5, "isReorderPickers"    # Z

    .prologue
    .line 598
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    .line 599
    iput p2, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 600
    iput p3, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 602
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 604
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, p4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 606
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearOfMonths:I

    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getYearMonths()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 607
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getYearMonths()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearOfMonths:I

    .line 608
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYearOfMonths:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v1, p4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 612
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthOfDays:I

    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 613
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthOfDays:I

    .line 614
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 618
    if-eqz p5, :cond_2

    .line 619
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 621
    :cond_2
    return-void
.end method

.method private updateYearPicker()V
    .locals 9

    .prologue
    .line 888
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DatePicker$DateAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DatePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    iget v6, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    iget v7, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    iget v8, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 892
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1114
    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->mIsAccessibilityEnable:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 1115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5eff\u5341"

    const-string v3, "\u4e8c\u5341"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5eff"

    const-string v3, "\u4e8c\u5341"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, "dateText":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    const/4 v1, 0x0

    .line 1121
    .end local v0    # "dateText":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 776
    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    return v0
.end method

.method public getDayUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    return v0
.end method

.method public init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    .param p5, "doAnimate"    # Z

    .prologue
    .line 803
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    if-eq v0, p3, :cond_1

    .line 804
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    .line 807
    :cond_1
    iput-object p4, p0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    .line 808
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->sendAccessibilityEvent()V

    .line 809
    return-void
.end method

.method public init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;ZZ)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    .param p5, "isLunar"    # Z
    .param p6, "isLeapMonth"    # Z

    .prologue
    const/4 v4, 0x0

    .line 824
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    if-ne v1, p2, :cond_0

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    if-ne v1, p3, :cond_0

    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eq v1, p5, :cond_4

    .line 825
    :cond_0
    if-eqz p5, :cond_5

    .line 826
    iput-boolean p5, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    .line 827
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mLunarSelectTextSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mLunarNormalTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 828
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mLunarSelectTextSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mLunarNormalTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 829
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 830
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 831
    .local v0, "leapMonth":I
    if-eqz v0, :cond_1

    add-int/lit8 v1, p2, 0x1

    if-eq v1, v0, :cond_1

    const/4 p6, 0x0

    .line 832
    :cond_1
    if-eqz v0, :cond_3

    if-nez p6, :cond_2

    if-le p2, v0, :cond_3

    .line 833
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 835
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    .line 841
    .end local v0    # "leapMonth":I
    :cond_4
    :goto_0
    iput-object p4, p0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    .line 842
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->sendAccessibilityEvent()V

    .line 843
    return-void

    .line 837
    :cond_5
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    goto :goto_0
.end method

.method public isLunar()Z
    .locals 1

    .prologue
    .line 978
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 691
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 693
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->mIsDrawLine:Z

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getWidth()I

    move-result v8

    .line 695
    .local v8, "width":I
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mPickerHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mWidthPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v0, v1

    .line 696
    .local v7, "pickerWidth":I
    sub-int v0, v8, v7

    div-int/lit8 v6, v0, 0x2

    .line 697
    .local v6, "paddingWdith":I
    int-to-float v1, v6

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mLineOneHeight:I

    int-to-float v2, v0

    add-int v0, v6, v7

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mLineOneHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 698
    int-to-float v1, v6

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mLineTwoHeight:I

    int-to-float v2, v0

    add-int v0, v6, v7

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mLineTwoHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 700
    .end local v6    # "paddingWdith":I
    .end local v7    # "pickerWidth":I
    .end local v8    # "width":I
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 438
    const-class v0, Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 439
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 786
    move-object v0, p1

    check-cast v0, Lcom/meizu/common/widget/DatePicker$SavedState;

    .line 787
    .local v0, "ss":Lcom/meizu/common/widget/DatePicker$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 788
    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker$SavedState;->getYear()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    .line 789
    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker$SavedState;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 790
    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker$SavedState;->getDay()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    .line 791
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 780
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 781
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/DatePicker$SavedState;

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/meizu/common/widget/DatePicker$1;)V

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 859
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 860
    if-nez p1, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    .line 867
    .local v1, "months":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 868
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 873
    .local v0, "format":Ljava/text/DateFormat;
    :goto_1
    instance-of v3, v0, Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_3

    .line 874
    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "format":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 879
    .local v2, "order":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 883
    iput-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 884
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    goto :goto_0

    .line 870
    .end local v2    # "order":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0    # "format":Ljava/text/DateFormat;
    goto :goto_1

    .line 876
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .restart local v2    # "order":Ljava/lang/String;
    goto :goto_2
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 429
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 430
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 431
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 432
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 433
    return-void
.end method

.method public setIsDrawFading(Z)V
    .locals 1
    .param p1, "isDrawFading"    # Z

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 1065
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 1066
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 1067
    return-void
.end method

.method public setIsDrawLine(Z)V
    .locals 0
    .param p1, "isDrawLine"    # Z

    .prologue
    .line 703
    iput-boolean p1, p0, Lcom/meizu/common/widget/DatePicker;->mIsDrawLine:Z

    .line 704
    return-void
.end method

.method public setItemHeight(II)V
    .locals 3
    .param p1, "selectHeight"    # I
    .param p2, "normalHeight"    # I

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 1055
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 1056
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 1057
    return-void
.end method

.method public setLineHeight(II)V
    .locals 0
    .param p1, "lineOneHeight"    # I
    .param p2, "lineTwoHeight"    # I

    .prologue
    .line 707
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mLineOneHeight:I

    .line 708
    iput p2, p0, Lcom/meizu/common/widget/DatePicker;->mLineTwoHeight:I

    .line 709
    return-void
.end method

.method public setLunar(Z)V
    .locals 1
    .param p1, "isLunar"    # Z

    .prologue
    .line 975
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/DatePicker;->setLunar(ZZ)V

    .line 976
    return-void
.end method

.method public setLunar(ZZ)V
    .locals 13
    .param p1, "isLunar"    # Z
    .param p2, "isAnimation"    # Z

    .prologue
    const/4 v12, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 931
    iput-boolean p1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    .line 932
    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 933
    .local v6, "date":[I
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    aput v0, v6, v5

    .line 934
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    add-int/lit8 v0, v0, 0x1

    aput v0, v6, v3

    .line 935
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    aput v0, v6, v4

    .line 936
    aput v5, v6, v12

    .line 939
    aget v11, v6, v5

    .line 940
    .local v11, "solarYear":I
    aget v0, v6, v5

    invoke-static {v0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v7

    .line 941
    .local v7, "leapMonth":I
    aget v0, v6, v5

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v8

    .line 942
    .local v8, "leapMonthLastYear":I
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v0, :cond_3

    .line 943
    aget v0, v6, v5

    aget v1, v6, v3

    aget v2, v6, v4

    invoke-static {v0, v1, v2}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v6

    .line 944
    aget v0, v6, v5

    if-eq v11, v0, :cond_0

    if-eqz v8, :cond_0

    aget v0, v6, v12

    if-eq v0, v3, :cond_1

    aget v0, v6, v3

    if-gt v0, v8, :cond_1

    :cond_0
    aget v0, v6, v5

    if-ne v11, v0, :cond_2

    if-eqz v7, :cond_2

    aget v0, v6, v12

    if-eq v0, v3, :cond_1

    aget v0, v6, v3

    if-le v0, v7, :cond_2

    .line 947
    :cond_1
    aget v0, v6, v3

    add-int/lit8 v0, v0, 0x1

    aput v0, v6, v3

    .line 950
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mLunarSelectTextSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mLunarNormalTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 951
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mLunarSelectTextSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mLunarNormalTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 952
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 971
    :goto_0
    aget v1, v6, v5

    aget v0, v6, v3

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_8

    const/16 v2, 0xc

    :goto_1
    aget v3, v6, v4

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZZ)V

    .line 972
    return-void

    .line 954
    :cond_3
    const/4 v9, 0x0

    .line 955
    .local v9, "lunar":Z
    const/4 v10, 0x0

    .line 956
    .local v10, "month":I
    if-eqz v7, :cond_4

    aget v0, v6, v3

    if-lt v7, v0, :cond_6

    .line 957
    :cond_4
    aget v10, v6, v3

    .line 965
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mSolarSelectTextSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mSolarNormalTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 966
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mSolarSelectTextSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mSolarNormalTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 967
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 968
    aget v0, v6, v5

    aget v1, v6, v4

    invoke-static {v0, v10, v1, v9}, Lcom/meizu/common/util/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v6

    goto :goto_0

    .line 958
    :cond_6
    add-int/lit8 v0, v7, 0x1

    aget v1, v6, v3

    if-ne v0, v1, :cond_7

    .line 959
    aget v0, v6, v3

    add-int/lit8 v10, v0, -0x1

    .line 960
    const/4 v9, 0x1

    goto :goto_2

    .line 961
    :cond_7
    add-int/lit8 v0, v7, 0x1

    aget v1, v6, v3

    if-ge v0, v1, :cond_5

    .line 962
    aget v0, v6, v3

    add-int/lit8 v10, v0, -0x1

    goto :goto_2

    .line 971
    .end local v9    # "lunar":Z
    .end local v10    # "month":I
    :cond_8
    aget v0, v6, v3

    add-int/lit8 v2, v0, -0x1

    goto :goto_1
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    .line 899
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 900
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 901
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 902
    .local v1, "newYear":I
    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    if-le v1, v2, :cond_0

    .line 903
    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    .line 904
    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    .line 905
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->updateYearPicker()V

    .line 907
    :cond_0
    return-void
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    .line 914
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 915
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 916
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 917
    .local v1, "newYear":I
    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    if-ge v1, v2, :cond_0

    .line 918
    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    .line 919
    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    .line 920
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->updateYearPicker()V

    .line 922
    :cond_0
    return-void
.end method

.method public setTextColor(III)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I
    .param p3, "unitColor"    # I

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1045
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1046
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1048
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1049
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1050
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1051
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 590
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    .line 591
    return-void
.end method

.method public updateDate(IIIZ)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "doAnimate"    # Z

    .prologue
    .line 594
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZZ)V

    .line 595
    return-void
.end method
