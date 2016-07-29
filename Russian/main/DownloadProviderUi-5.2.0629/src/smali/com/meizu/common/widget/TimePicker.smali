.class public Lcom/meizu/common/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/TimePicker$SavedState;,
        Lcom/meizu/common/widget/TimePicker$TimeAdapter;,
        Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# instance fields
.field private mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private final mAmText:Ljava/lang/String;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mHourUnit:Landroid/widget/TextView;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAccessibilityEnable:Z

.field private mIsAm:Z

.field private mIsDrawLine:Z

.field private mLineOneHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineTwoHeight:I

.field private mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mMinuteUnit:Landroid/widget/TextView;

.field private mOnTimeChangedListener:Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

.field private mPickerHolder:Landroid/widget/LinearLayout;

.field private final mPmText:Ljava/lang/String;

.field private mWidthPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v8, 0xc

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 177
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput v10, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 65
    iput v10, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    .line 66
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 67
    iput-boolean v11, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    .line 87
    iput-boolean v10, p0, Lcom/meizu/common/widget/TimePicker;->mIsAccessibilityEnable:Z

    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 183
    .local v2, "cal":Ljava/util/Calendar;
    const/16 v7, 0xb

    :try_start_0
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 184
    const/16 v7, 0xc

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    .line 185
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    iget-object v7, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    iget v7, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    if-lt v7, v8, :cond_0

    .line 194
    iget v7, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v7, v7, -0xc

    iput v7, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 195
    iput-boolean v10, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    .line 199
    :cond_0
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 200
    .local v3, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "dfsAmPm":[Ljava/lang/String;
    aget-object v7, v4, v10

    iput-object v7, p0, Lcom/meizu/common/widget/TimePicker;->mAmText:Ljava/lang/String;

    .line 202
    aget-object v7, v4, v11

    iput-object v7, p0, Lcom/meizu/common/widget/TimePicker;->mPmText:Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->inflateLayout()V

    .line 206
    iput v10, p0, Lcom/meizu/common/widget/TimePicker;->mLineOneHeight:I

    .line 207
    iput v10, p0, Lcom/meizu/common/widget/TimePicker;->mLineTwoHeight:I

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b01df

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/TimePicker;->mWidthPadding:I

    .line 209
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/meizu/common/widget/TimePicker;->mLinePaint:Landroid/graphics/Paint;

    .line 210
    sget-object v7, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {p1, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 211
    .local v1, "b":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0094

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 213
    .local v6, "lineColor":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    iget-object v7, p0, Lcom/meizu/common/widget/TimePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    iget-object v7, p0, Lcom/meizu/common/widget/TimePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 216
    iget-object v7, p0, Lcom/meizu/common/widget/TimePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b01e0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    iput-boolean v10, p0, Lcom/meizu/common/widget/TimePicker;->mIsDrawLine:Z

    .line 218
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/TimePicker;->setWillNotDraw(Z)V

    .line 220
    const v7, 0x7f0d00a3

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/meizu/common/widget/TimePicker;->mPickerHolder:Landroid/widget/LinearLayout;

    .line 222
    const-string v7, "accessibility"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 223
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/meizu/common/widget/TimePicker;->mIsAccessibilityEnable:Z

    .line 226
    :cond_1
    iget-boolean v7, p0, Lcom/meizu/common/widget/TimePicker;->mIsAccessibilityEnable:Z

    if-eqz v7, :cond_2

    .line 227
    invoke-virtual {p0, v11}, Lcom/meizu/common/widget/TimePicker;->setFocusable(Z)V

    .line 229
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->sendAccessibilityEvent()V

    .line 230
    return-void

    .line 186
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v1    # "b":Landroid/content/res/TypedArray;
    .end local v3    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v4    # "dfsAmPm":[Ljava/lang/String;
    .end local v6    # "lineColor":I
    :catch_0
    move-exception v5

    .line 187
    .local v5, "e":Ljava/lang/Exception;
    iput v8, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 188
    const/16 v7, 0x1e

    iput v7, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    .line 189
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    goto/16 :goto_0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/TimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/TimePicker;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/TimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/TimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->sendAccessibilityEvent()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mPmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/TimePicker;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    return-object v0
.end method

.method private getTimeText(I)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, "position":I
    packed-switch p1, :pswitch_data_0

    .line 703
    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1

    .line 679
    :pswitch_0
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 680
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 681
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 683
    :cond_1
    if-nez v0, :cond_2

    const/16 v0, 0xc

    .line 684
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 688
    :pswitch_1
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    .line 689
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 692
    :pswitch_2
    iget-boolean v2, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 693
    :goto_1
    if-nez v0, :cond_4

    .line 694
    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker;->mAmText:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 692
    goto :goto_1

    .line 695
    :cond_4
    if-ne v0, v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker;->mPmText:Ljava/lang/String;

    goto :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private inflateLayout()V
    .locals 10

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->removeAllViews()V

    .line 236
    :cond_0
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 237
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->init24HourView()V

    .line 243
    :goto_0
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    .line 244
    .local v4, "textUnitPaddingTop":I
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 245
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 246
    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 247
    .local v0, "defaultScaledDensity":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 248
    .local v2, "nowScaledDensity":F
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    div-float/2addr v5, v2

    sub-float v6, v2, v0

    mul-float/2addr v5, v6

    const v6, 0x3fa66666    # 1.3f

    div-float v3, v5, v6

    .line 249
    .local v3, "paddingTopOffset":F
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    int-to-float v7, v4

    sub-float/2addr v7, v3

    float-to-int v7, v7

    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 251
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    int-to-float v7, v4

    sub-float/2addr v7, v3

    float-to-int v7, v7

    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 254
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 255
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/TimePicker;->setEnabled(Z)V

    .line 257
    :cond_1
    return-void

    .line 239
    .end local v0    # "defaultScaledDensity":F
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "nowScaledDensity":F
    .end local v3    # "paddingTopOffset":F
    .end local v4    # "textUnitPaddingTop":I
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->init12HourView()V

    goto :goto_0
.end method

.method private init12HourView()V
    .locals 9

    .prologue
    .line 334
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04004e

    invoke-static {v0, v1, p0}, Lcom/meizu/common/widget/TimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 340
    const v0, 0x7f0d00b5

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    .line 341
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 345
    :cond_1
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    .line 346
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    const v1, 0x7f0800ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 350
    :cond_2
    const v0, 0x7f0d00b4

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 351
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    const/16 v4, 0xc

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 353
    const v0, 0x7f0d00b8

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 354
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    const/16 v4, 0x3c

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/16 v7, 0x3b

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 356
    const v0, 0x7f0d00bc

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 357
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget-boolean v3, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 358
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0178

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 361
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/TimePicker$2;-><init>(Lcom/meizu/common/widget/TimePicker;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 357
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private init24HourView()V
    .locals 9

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v8, 0x1

    .line 260
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04004f

    invoke-static {v0, v1, p0}, Lcom/meizu/common/widget/TimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 266
    const v0, 0x7f0d00b5

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    .line 267
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 271
    :cond_1
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    .line 272
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    const v1, 0x7f0800ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 276
    :cond_2
    const v0, 0x7f0d00b4

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 277
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    invoke-direct {v1, p0, v8}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    const/16 v4, 0x18

    const/16 v7, 0x17

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 280
    const v0, 0x7f0d00b8

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 281
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    const/16 v4, 0x3c

    const/16 v7, 0x3b

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 286
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/TimePicker$1;-><init>(Lcom/meizu/common/widget/TimePicker;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private sendAccessibilityEvent()V
    .locals 3

    .prologue
    .line 648
    iget-boolean v1, p0, Lcom/meizu/common/widget/TimePicker;->mIsAccessibilityEnable:Z

    if-eqz v1, :cond_1

    .line 649
    const-string v0, ""

    .line 650
    .local v0, "dateText":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/TimePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/TimePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/TimePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 656
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 658
    .end local v0    # "dateText":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 662
    iget-boolean v1, p0, Lcom/meizu/common/widget/TimePicker;->mIsAccessibilityEnable:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 663
    const-string v0, ""

    .line 664
    .local v0, "dateText":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/TimePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/TimePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/TimePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    const/4 v1, 0x0

    .line 672
    .end local v0    # "dateText":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCurrentHour()I
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 544
    :goto_0
    return v0

    .line 541
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    if-eqz v0, :cond_1

    .line 542
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    goto :goto_0

    .line 544
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 628
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 629
    iget-boolean v0, p0, Lcom/meizu/common/widget/TimePicker;->mIsDrawLine:Z

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getWidth()I

    move-result v8

    .line 631
    .local v8, "width":I
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mPickerHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/TimePicker;->mWidthPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v0, v1

    .line 632
    .local v7, "pickerWidth":I
    sub-int v0, v8, v7

    div-int/lit8 v6, v0, 0x2

    .line 633
    .local v6, "paddingWdith":I
    int-to-float v1, v6

    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mLineOneHeight:I

    int-to-float v2, v0

    add-int v0, v6, v7

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mLineOneHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 634
    int-to-float v1, v6

    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mLineTwoHeight:I

    int-to-float v2, v0

    add-int v0, v6, v7

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mLineTwoHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 636
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
    .line 708
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 709
    const-class v0, Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 710
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 518
    move-object v0, p1

    check-cast v0, Lcom/meizu/common/widget/TimePicker$SavedState;

    .line 519
    .local v0, "ss":Lcom/meizu/common/widget/TimePicker$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 520
    # getter for: Lcom/meizu/common/widget/TimePicker$SavedState;->mHour:I
    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker$SavedState;->access$1400(Lcom/meizu/common/widget/TimePicker$SavedState;)I

    move-result v1

    # getter for: Lcom/meizu/common/widget/TimePicker$SavedState;->mMinute:I
    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker$SavedState;->access$1500(Lcom/meizu/common/widget/TimePicker$SavedState;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/meizu/common/widget/TimePicker;->update(IIZ)V

    .line 521
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 512
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 513
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/meizu/common/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/meizu/common/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/meizu/common/widget/TimePicker$1;)V

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 592
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 593
    if-nez p1, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 599
    .local v1, "is24Hour":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 604
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 605
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 565
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/widget/TimePicker;->update(IIZ)V

    goto :goto_0
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v0

    .line 586
    .local v0, "hour":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/widget/TimePicker;->update(IIZ)V

    .line 587
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 453
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 459
    :cond_0
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v0

    .line 580
    .local v0, "hour":I
    iget v1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/widget/TimePicker;->update(IIZ)V

    .line 581
    return-void
.end method

.method public setIsDrawLine(Z)V
    .locals 0
    .param p1, "isDrawLine"    # Z

    .prologue
    .line 639
    iput-boolean p1, p0, Lcom/meizu/common/widget/TimePicker;->mIsDrawLine:Z

    .line 640
    return-void
.end method

.method public setLineHeight(II)V
    .locals 0
    .param p1, "lineOneHeight"    # I
    .param p2, "lineTwoHeight"    # I

    .prologue
    .line 643
    iput p1, p0, Lcom/meizu/common/widget/TimePicker;->mLineOneHeight:I

    .line 644
    iput p2, p0, Lcom/meizu/common/widget/TimePicker;->mLineTwoHeight:I

    .line 645
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/meizu/common/widget/TimePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    .line 531
    return-void
.end method

.method public setTextColor(III)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I
    .param p3, "unitColor"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 617
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 618
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 623
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 624
    return-void
.end method

.method public update(IIZ)V
    .locals 6
    .param p1, "hour"    # I
    .param p2, "min"    # I
    .param p3, "is24hour"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "updateHourPicker":Z
    const/4 v1, 0x0

    .line 413
    .local v1, "updateMinPicker":Z
    if-eqz p3, :cond_6

    .line 414
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    if-eq v4, p1, :cond_0

    .line 415
    const/4 v0, 0x1

    .line 416
    iput p1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 430
    :cond_0
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    if-eq v4, p2, :cond_1

    .line 431
    const/4 v1, 0x1

    .line 432
    iput p2, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    .line 435
    :cond_1
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq p3, v4, :cond_2

    .line 436
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 437
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->inflateLayout()V

    .line 440
    :cond_2
    if-eqz v0, :cond_3

    .line 441
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    .line 443
    :cond_3
    if-eqz v1, :cond_4

    .line 444
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    .line 446
    :cond_4
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-eqz v4, :cond_5

    .line 447
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-boolean v5, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    if-eqz v5, :cond_8

    :goto_1
    invoke-virtual {v4, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    .line 449
    :cond_5
    return-void

    .line 419
    :cond_6
    iput-boolean v3, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    .line 420
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    if-eq v4, p1, :cond_7

    .line 421
    const/4 v0, 0x1

    .line 422
    iput p1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 424
    :cond_7
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    .line 425
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v4, v4, -0xc

    iput v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 426
    iput-boolean v2, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    goto :goto_0

    :cond_8
    move v2, v3

    .line 447
    goto :goto_1
.end method
