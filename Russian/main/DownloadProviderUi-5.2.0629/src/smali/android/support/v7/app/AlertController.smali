.class Landroid/support/v7/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$ViewHolder;,
        Landroid/support/v7/app/AlertController$ListItemCenterAdapter;,
        Landroid/support/v7/app/AlertController$CheckedItemAdapter;,
        Landroid/support/v7/app/AlertController$AlertParams;,
        Landroid/support/v7/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mAlertExt:Lflyme/support/v7/app/AlertControllerExt;

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialog:Landroid/support/v7/app/AppCompatDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHasListView:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListItem_ShowCentreLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxHeight:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mMzButtonBarOrientation:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mShowAtBottom:Z

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/support/v7/app/AppCompatDialog;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v4, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 94
    iput v4, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    .line 114
    iput v4, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    .line 125
    iput-boolean v4, p0, Landroid/support/v7/app/AlertController;->mHasListView:Z

    .line 127
    new-instance v1, Landroid/support/v7/app/AlertController$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertController$1;-><init>(Landroid/support/v7/app/AlertController;)V

    iput-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 184
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    .line 185
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    .line 186
    iput-object p3, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    .line 187
    new-instance v1, Landroid/support/v7/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Landroid/support/v7/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 189
    const/4 v1, 0x0

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    const v3, 0x7f010075

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 192
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    .line 193
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    .line 195
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mListLayout:I

    .line 196
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    .line 197
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    .line 199
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    .line 200
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mListItem_ShowCentreLayout:I

    .line 202
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/AlertController;->mShowAtBottom:Z

    .line 204
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mMzButtonBarOrientation:I

    .line 205
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    new-instance v1, Lflyme/support/v7/app/AlertControllerExt;

    invoke-direct {v1, p1, p2, p3}, Lflyme/support/v7/app/AlertControllerExt;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v1, p0, Landroid/support/v7/app/AlertController;->mAlertExt:Lflyme/support/v7/app/AlertControllerExt;

    .line 207
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v7/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/AlertController;->mListItem_ShowCentreLayout:I

    return v0
.end method

.method static synthetic access$1100(Landroid/support/v7/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v7/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1302(Landroid/support/v7/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1402(Landroid/support/v7/app/AlertController;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1502(Landroid/support/v7/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$900(Landroid/support/v7/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    :goto_0
    return v2

    .line 214
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 215
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 218
    check-cast v1, Landroid/view/ViewGroup;

    .line 219
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 220
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 221
    add-int/lit8 v0, v0, -0x1

    .line 222
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 223
    invoke-static {p0}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 228
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 659
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 660
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 661
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 662
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    return-void
.end method

.method private isTextEditable(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1057
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return v2

    .line 1061
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 1062
    goto :goto_0

    .line 1065
    :cond_2
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 1069
    check-cast v1, Landroid/view/ViewGroup;

    .line 1070
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1071
    .local v0, "i":I
    :cond_3
    if-lez v0, :cond_0

    .line 1072
    add-int/lit8 v0, v0, -0x1

    .line 1073
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1074
    invoke-direct {p0, p1}, Landroid/support/v7/app/AlertController;->isTextEditable(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 1075
    goto :goto_0
.end method

.method private selectContentView()I
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 242
    iget v0, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    .line 247
    :goto_0
    return v0

    .line 244
    :cond_0
    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 245
    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    goto :goto_0

    .line 247
    :cond_1
    iget v0, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    goto :goto_0
.end method

.method private setupButtons()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/16 v13, 0x8

    const/4 v12, -0x1

    const/4 v10, 0x0

    .line 588
    const/4 v2, 0x1

    .line 589
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 590
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 591
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v7, 0x0

    .line 592
    .local v7, "whichButtons":I
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x7f0d00f6

    invoke-virtual {v8, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 594
    .local v3, "barLayout":Landroid/widget/LinearLayout;
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x1020019

    invoke-virtual {v8, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 595
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 598
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 605
    :goto_0
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x102001a

    invoke-virtual {v8, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 606
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 609
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 617
    :goto_1
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x102001b

    invoke-virtual {v8, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 618
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 621
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 629
    :goto_2
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/support/v7/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 634
    if-ne v7, v2, :cond_5

    .line 635
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v8}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 642
    :cond_0
    :goto_3
    iget v8, p0, Landroid/support/v7/app/AlertController;->mMzButtonBarOrientation:I

    if-lez v8, :cond_1

    .line 643
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 644
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 645
    .local v4, "params1":Landroid/widget/LinearLayout$LayoutParams;
    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 646
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 648
    .local v5, "params2":Landroid/widget/LinearLayout$LayoutParams;
    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 649
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 651
    .local v6, "params3":Landroid/widget/LinearLayout$LayoutParams;
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 652
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    .end local v4    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "params2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "params3":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    if-eqz v7, :cond_7

    move v8, v9

    :goto_4
    return v8

    .line 600
    :cond_2
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 602
    or-int/2addr v7, v2

    goto/16 :goto_0

    .line 611
    :cond_3
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 614
    or-int/2addr v7, v0

    goto/16 :goto_1

    .line 623
    :cond_4
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 626
    or-int/2addr v7, v1

    goto :goto_2

    .line 636
    :cond_5
    if-ne v7, v0, :cond_6

    .line 637
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v8}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 638
    :cond_6
    if-ne v7, v1, :cond_0

    .line 639
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v8}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_7
    move v8, v10

    .line 655
    goto :goto_4
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    .line 555
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x7f0d005a

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 556
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 559
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 560
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 585
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 565
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mAlertExt:Lflyme/support/v7/app/AlertControllerExt;

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lflyme/support/v7/app/AlertControllerExt;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 571
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 574
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 575
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 576
    .local v1, "scrollParent":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 577
    .local v0, "childIndex":I
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 578
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 581
    .end local v0    # "childIndex":I
    .end local v1    # "scrollParent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 582
    invoke-virtual {p0}, Landroid/support/v7/app/AlertController;->adjustPaddingForButtonPanel()V

    goto :goto_0
.end method

.method private setupTitle(Landroid/view/ViewGroup;)Z
    .locals 10
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0d0057

    const/4 v0, 0x0

    const/16 v9, 0x8

    .line 505
    const/4 v1, 0x1

    .line 507
    .local v1, "hasTitle":Z
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 509
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 512
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 515
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 516
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 551
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :goto_0
    return v1

    .line 518
    :cond_0
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 520
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 521
    .local v0, "hasTextTitle":Z
    :cond_1
    if-eqz v0, :cond_4

    .line 523
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f0d0058

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 524
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget v4, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    if-eqz v4, :cond_2

    .line 530
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 531
    :cond_2
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 532
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 536
    :cond_3
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 540
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 544
    :cond_4
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 545
    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 548
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 24

    .prologue
    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->setDimAmount(F)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x7f0d0059

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 429
    .local v7, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v7/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 430
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/app/AlertController;->setupButtons()Z

    move-result v11

    .line 431
    .local v11, "hasButtons":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x7f0d0056

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    .line 432
    .local v18, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    const v22, 0x7f010075

    const/16 v23, 0x0

    invoke-static/range {v19 .. v23}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v4

    .line 434
    .local v4, "a":Landroid/support/v7/internal/widget/TintTypedArray;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)Z

    move-result v13

    .line 435
    .local v13, "hasTitle":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/app/AlertController;->mHasListView:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    if-nez v13, :cond_0

    .line 436
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 437
    .local v15, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 439
    .end local v15    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x7f0d005d

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 440
    .local v5, "buttonPanel":Landroid/view/View;
    if-nez v11, :cond_7

    .line 441
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x7f0d005b

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 443
    .local v17, "spacer":Landroid/view/View;
    if-eqz v17, :cond_1

    .line 444
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    .end local v17    # "spacer":Landroid/view/View;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x7f0d005c

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 453
    .local v9, "customPanel":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 454
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 462
    .local v10, "customView":Landroid/view/View;
    :goto_1
    if-eqz v10, :cond_a

    const/4 v12, 0x1

    .line 463
    .local v12, "hasCustomView":Z
    :goto_2
    if-eqz v12, :cond_2

    invoke-static {v10}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 464
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const/high16 v20, 0x20000

    const/high16 v21, 0x20000

    invoke-virtual/range {v19 .. v21}, Landroid/view/Window;->setFlags(II)V

    .line 468
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertController;->isTextEditable(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const/16 v20, 0x25

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 475
    :goto_3
    if-eqz v12, :cond_c

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x7f0d0047

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 477
    .local v8, "custom":Landroid/widget/FrameLayout;
    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-direct/range {v19 .. v21}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 480
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 484
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 485
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 491
    .end local v8    # "custom":Landroid/widget/FrameLayout;
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v16, v0

    .line 492
    .local v16, "listView":Landroid/widget/ListView;
    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 494
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    .line 495
    .local v6, "checkedItem":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v6, v0, :cond_6

    .line 496
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 497
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 501
    .end local v6    # "checkedItem":I
    :cond_6
    invoke-virtual {v4}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 502
    return-void

    .line 446
    .end local v9    # "customPanel":Landroid/widget/FrameLayout;
    .end local v10    # "customView":Landroid/view/View;
    .end local v12    # "hasCustomView":Z
    .end local v16    # "listView":Landroid/widget/ListView;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/app/AlertController;->mHasListView:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 447
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 448
    .restart local v15    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 455
    .end local v15    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "customPanel":Landroid/widget/FrameLayout;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 457
    .local v14, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v9, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 458
    .restart local v10    # "customView":Landroid/view/View;
    goto/16 :goto_1

    .line 459
    .end local v10    # "customView":Landroid/view/View;
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    :cond_9
    const/4 v10, 0x0

    .restart local v10    # "customView":Landroid/view/View;
    goto/16 :goto_1

    .line 462
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 472
    .restart local v12    # "hasCustomView":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const/high16 v20, 0x20000

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_3

    .line 488
    :cond_c
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 178
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 179
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f010077

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 180
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustPaddingForButtonPanel()V
    .locals 4

    .prologue
    .line 1051
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x7f0d005d

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1052
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1053
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0136

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1054
    return-void
.end method

.method public applyMeizuStyle()V
    .locals 9

    .prologue
    .line 1011
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 1012
    .local v6, "win":Landroid/view/WindowManager$LayoutParams;
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x7f0d00f5

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1013
    .local v0, "idView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1014
    :cond_0
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x7f0d0055

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LimitedWHLinearLayout;

    .line 1015
    .local v2, "parentPanel":Landroid/support/v7/widget/LimitedWHLinearLayout;
    invoke-virtual {v2}, Landroid/support/v7/widget/LimitedWHLinearLayout;->getPaddingTop()I

    move-result v5

    .line 1016
    .local v5, "parentPanelPaddingTop":I
    invoke-virtual {v2}, Landroid/support/v7/widget/LimitedWHLinearLayout;->getPaddingBottom()I

    move-result v4

    .line 1020
    .local v4, "parentPanelPaddingButtom":I
    iget v7, p0, Landroid/support/v7/app/AlertController;->mMaxHeight:I

    if-lez v7, :cond_2

    .line 1021
    iget v7, p0, Landroid/support/v7/app/AlertController;->mMaxHeight:I

    add-int/2addr v7, v5

    add-int v3, v7, v4

    .line 1026
    .local v3, "parentPanelMaxHeight":I
    :goto_1
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LimitedWHLinearLayout;->setMaxHeight(I)V

    .line 1029
    invoke-virtual {v2}, Landroid/support/v7/widget/LimitedWHLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1031
    .local v1, "pLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v7, p0, Landroid/support/v7/app/AlertController;->mShowAtBottom:Z

    if-eqz v7, :cond_1

    .line 1032
    const/16 v7, 0x50

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1036
    :cond_1
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mAlertExt:Lflyme/support/v7/app/AlertControllerExt;

    invoke-virtual {v7}, Lflyme/support/v7/app/AlertControllerExt;->setupContent()V

    goto :goto_0

    .line 1023
    .end local v1    # "pLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "parentPanelMaxHeight":I
    :cond_2
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b007e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v7, v5

    add-int v3, v7, v4

    .restart local v3    # "parentPanelMaxHeight":I
    goto :goto_1
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 404
    packed-switch p1, :pswitch_data_0

    .line 412
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 406
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 408
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 410
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 394
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 395
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 396
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public installContent()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 235
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->selectContentView()I

    move-result v0

    .line 236
    .local v0, "contentView":I
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(I)V

    .line 237
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->setupView()V

    .line 238
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 418
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 325
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 326
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 329
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :pswitch_0
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 333
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 349
    :goto_0
    return-void

    .line 337
    :pswitch_1
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 338
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 342
    :pswitch_2
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 343
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 261
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 262
    return-void
.end method

.method public setHasListView()V
    .locals 1

    .prologue
    .line 1047
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mHasListView:Z

    .line 1048
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 359
    iput p1, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 361
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 362
    if-eqz p1, :cond_1

    .line 363
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 376
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 379
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 380
    if-eqz p1, :cond_1

    .line 381
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 265
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 266
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 251
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 252
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 276
    iput p1, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 278
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 284
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 285
    iput v0, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 286
    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 287
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 294
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 297
    iput p2, p0, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    .line 298
    iput p3, p0, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    .line 299
    iput p4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    .line 300
    iput p5, p0, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    .line 301
    return-void
.end method
