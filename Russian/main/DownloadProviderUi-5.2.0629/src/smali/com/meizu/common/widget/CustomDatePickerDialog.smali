.class public Lcom/meizu/common/widget/CustomDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "CustomDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;,
        Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final TAG:Ljava/lang/String; = "CustomDatePickerDialog"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field final gregorianColor:I

.field final lunarColor:I

.field private final mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/meizu/common/widget/DatePicker;

.field private mDuration:J

.field private mGregorianTab:Landroid/widget/TextView;

.field private mIndicator:Landroid/view/View;

.field private mIsLayoutRtl:Z

.field private mLunarTab:Landroid/widget/TextView;

.field final tabTextSelectColor:I

.field final unSlectColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;III)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 176
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 115
    const-wide/16 v2, 0xc8

    iput-wide v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDuration:J

    .line 122
    iput-boolean v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsLayoutRtl:Z

    .line 178
    iput-object p3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

    .line 180
    const/4 v0, -0x1

    const v2, 0x7f080099

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 182
    const/4 v2, -0x2

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 185
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 187
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04002a

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 189
    .local v8, "view":Landroid/view/View;
    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/CustomDatePickerDialog;->setView(Landroid/view/View;)V

    .line 191
    const v0, 0x7f0d00a1

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/DatePicker;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    .line 192
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    move v1, p4

    move v2, p5

    move v3, p6

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V

    .line 193
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->setIsDrawLine(Z)V

    .line 194
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/DatePicker;->setLineHeight(II)V

    .line 197
    sget-object v0, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 198
    .local v6, "b":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->lunarColor:I

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->gregorianColor:I

    .line 202
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->unSlectColor:I

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    .line 210
    invoke-direct {p0, p1, v8}, Lcom/meizu/common/widget/CustomDatePickerDialog;->initTabView(Landroid/content/Context;Landroid/view/View;)V

    .line 212
    new-instance v0, Lcom/meizu/common/widget/CustomDatePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CustomDatePickerDialog$1;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog;)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 224
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIndicator:Landroid/view/View;

    new-instance v1, Lcom/meizu/common/widget/CustomDatePickerDialog$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CustomDatePickerDialog$2;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 156
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/CustomDatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;III)V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/CustomDatePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsLayoutRtl:Z

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/CustomDatePickerDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsLayoutRtl:Z

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mLunarTab:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mGregorianTab:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/CustomDatePickerDialog;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/CustomDatePickerDialog;->setTabColor(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/CustomDatePickerDialog;)J
    .locals 2
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDuration:J

    return-wide v0
.end method

.method private initTabView(Landroid/content/Context;Landroid/view/View;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 324
    const v7, 0x7f0d00a0

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mLunarTab:Landroid/widget/TextView;

    .line 325
    const v7, 0x7f0d009e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mGregorianTab:Landroid/widget/TextView;

    .line 326
    const v7, 0x7f0d009d

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIndicator:Landroid/view/View;

    .line 328
    sget-object v7, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {p1, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 329
    .local v0, "b":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0093

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 331
    .local v4, "lunarColor":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0094

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 333
    .local v1, "gregorianColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0092

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 338
    .local v5, "unSlectColor":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0096

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 340
    .local v6, "unselectedTabColor":I
    iget-object v7, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v7}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 341
    iget-object v7, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mLunarTab:Landroid/widget/TextView;

    iget v8, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    iget-object v7, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mGregorianTab:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b020d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 349
    .local v3, "indicatorHeight":I
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 350
    .local v2, "indicatorDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 351
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 352
    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 353
    iget-object v7, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIndicator:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    iget-object v7, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v7, v1, v5, v1}, Lcom/meizu/common/widget/DatePicker;->setTextColor(III)V

    .line 356
    iget-object v7, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mLunarTab:Landroid/widget/TextView;

    new-instance v8, Lcom/meizu/common/widget/CustomDatePickerDialog$4;

    invoke-direct {v8, p0, v4, v5}, Lcom/meizu/common/widget/CustomDatePickerDialog$4;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog;II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v7, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mGregorianTab:Landroid/widget/TextView;

    new-instance v8, Lcom/meizu/common/widget/CustomDatePickerDialog$5;

    invoke-direct {v8, p0, v1, v5}, Lcom/meizu/common/widget/CustomDatePickerDialog$5;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog;II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    return-void

    .line 344
    .end local v2    # "indicatorDrawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "indicatorHeight":I
    :cond_0
    iget-object v7, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mLunarTab:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    iget-object v7, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mGregorianTab:Landroid/widget/TextView;

    iget v8, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setTabColor(IZ)V
    .locals 28
    .param p1, "color"    # I
    .param p2, "isLunar"    # Z

    .prologue
    .line 253
    const/16 v27, 0x1

    .line 254
    .local v27, "xyType":I
    const v6, 0x3fc4432d    # 1.5333f

    .line 255
    .local v6, "fromXValue":F
    const/4 v8, 0x0

    .line 257
    .local v8, "toXValue":F
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0096

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v26

    .line 259
    .local v26, "unselectedTabColor":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsLayoutRtl:Z

    if-eqz v5, :cond_3

    .line 260
    if-eqz p2, :cond_2

    .line 261
    const/4 v6, 0x0

    .line 262
    const v8, -0x403bbcd3    # -1.5333f

    .line 277
    :goto_0
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 279
    .local v4, "animation":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDuration:J

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 280
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 281
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIndicator:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 283
    const-string v19, "RgbRed"

    .line 284
    .local v19, "propertyNameRgbRed":Ljava/lang/String;
    const-string v18, "RgbGreen"

    .line 285
    .local v18, "propertyNameRgbGreen":Ljava/lang/String;
    const-string v17, "RgbBlue"

    .line 287
    .local v17, "propertyNameRgbBlue":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->red(I)I

    move-result v25

    .line 288
    .local v25, "unSelectedRgbRed":I
    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->green(I)I

    move-result v24

    .line 289
    .local v24, "unSelectedRgbGreen":I
    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->blue(I)I

    move-result v23

    .line 290
    .local v23, "unSelectedRgbBlue":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v22

    .line 291
    .local v22, "selectedRgbRed":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v21

    .line 292
    .local v21, "selectedRgbGreen":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v20

    .line 294
    .local v20, "selectedRgbBlue":I
    const-string v5, "RgbRed"

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v9, 0x0

    aput v25, v7, v9

    const/4 v9, 0x1

    aput v22, v7, v9

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 295
    .local v16, "holderRgbRed":Landroid/animation/PropertyValuesHolder;
    const-string v5, "RgbGreen"

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v9, 0x0

    aput v24, v7, v9

    const/4 v9, 0x1

    aput v21, v7, v9

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 296
    .local v15, "holderRgbGreen":Landroid/animation/PropertyValuesHolder;
    const-string v5, "RgbBlue"

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v9, 0x0

    aput v23, v7, v9

    const/4 v9, 0x1

    aput v20, v7, v9

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 298
    .local v14, "holderRgbBlue":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v16, v5, v7

    const/4 v7, 0x1

    aput-object v15, v5, v7

    const/4 v7, 0x2

    aput-object v14, v5, v7

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 299
    .local v13, "colorAnimation":Landroid/animation/ValueAnimator;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 300
    :cond_0
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->cancel()V

    .line 302
    :cond_1
    new-instance v5, Lcom/meizu/common/widget/CustomDatePickerDialog$3;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v26

    invoke-direct {v5, v0, v13, v1, v2}, Lcom/meizu/common/widget/CustomDatePickerDialog$3;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog;Landroid/animation/ValueAnimator;ZI)V

    invoke-virtual {v13, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 319
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDuration:J

    invoke-virtual {v13, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 320
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    .line 321
    return-void

    .line 264
    .end local v4    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v13    # "colorAnimation":Landroid/animation/ValueAnimator;
    .end local v14    # "holderRgbBlue":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "holderRgbGreen":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "holderRgbRed":Landroid/animation/PropertyValuesHolder;
    .end local v17    # "propertyNameRgbBlue":Ljava/lang/String;
    .end local v18    # "propertyNameRgbGreen":Ljava/lang/String;
    .end local v19    # "propertyNameRgbRed":Ljava/lang/String;
    .end local v20    # "selectedRgbBlue":I
    .end local v21    # "selectedRgbGreen":I
    .end local v22    # "selectedRgbRed":I
    .end local v23    # "unSelectedRgbBlue":I
    .end local v24    # "unSelectedRgbGreen":I
    .end local v25    # "unSelectedRgbRed":I
    :cond_2
    const v6, -0x403bbcd3    # -1.5333f

    .line 265
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 268
    :cond_3
    if-eqz p2, :cond_4

    .line 269
    const/4 v6, 0x0

    .line 270
    const v8, 0x3fc4432d    # 1.5333f

    goto/16 :goto_0

    .line 272
    :cond_4
    const v6, 0x3fc4432d    # 1.5333f

    .line 273
    const/4 v8, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getDatePicker()Lcom/meizu/common/widget/DatePicker;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker;->clearFocus()V

    .line 413
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/meizu/common/widget/DatePicker;III)V

    .line 416
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 407
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 408
    return-void
.end method

.method public onDateChanged(Lcom/meizu/common/widget/DatePicker;III)V
    .locals 6
    .param p1, "view"    # Lcom/meizu/common/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V

    .line 420
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 456
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 457
    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 458
    .local v1, "year":I
    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 459
    .local v2, "month":I
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 460
    .local v3, "day":I
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V

    .line 461
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 447
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 448
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 449
    const-string v1, "month"

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 450
    const-string v1, "day"

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    return-object v0
.end method

.method public setMaxYear(I)V
    .locals 4
    .param p1, "year"    # I

    .prologue
    const/4 v2, 0x1

    .line 659
    const/16 v1, 0x833

    if-le p1, v1, :cond_0

    .line 660
    const/16 p1, 0x833

    .line 662
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 663
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, v2, v2}, Ljava/util/Calendar;->set(III)V

    .line 664
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/DatePicker;->setMaxDate(J)V

    .line 665
    return-void
.end method

.method public setMinYear(I)V
    .locals 4
    .param p1, "year"    # I

    .prologue
    const/4 v2, 0x1

    .line 647
    const/16 v1, 0x76c

    if-ge p1, v1, :cond_0

    .line 648
    const/16 p1, 0x76c

    .line 650
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 651
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, v2, v2}, Ljava/util/Calendar;->set(III)V

    .line 652
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/DatePicker;->setMinDate(J)V

    .line 653
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/common/widget/DatePicker;->updateDate(III)V

    .line 443
    return-void
.end method
