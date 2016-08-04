.class public Landroid/support/v7/internal/view/menu/ActionMenuItemView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuView$ItemView;
.implements Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/view/menu/ActionMenuItemView$PopupCallback;,
        Landroid/support/v7/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# instance fields
.field private mAllowTextWithIcon:Z

.field private mDisabledAlpha:F

.field private mExpandedFormat:Z

.field private mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsInSplit:Z

.field private mIsInitialize:Z

.field private mIsOverflowActor:Z

.field private mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMinWidth:I

.field private mPopupCallback:Landroid/support/v7/internal/view/menu/ActionMenuItemView$PopupCallback;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 91
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0e0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 93
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 100
    .local v1, "density":F
    const/high16 v3, 0x42000000    # 32.0f

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 102
    invoke-virtual {p0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 110
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    const/4 v3, 0x6

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mDisabledAlpha:F

    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/ActionMenuItemView$PopupCallback;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mPopupCallback:Landroid/support/v7/internal/view/menu/ActionMenuItemView$PopupCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method private setCompoundDrawables(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 429
    if-eqz p1, :cond_0

    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 430
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private updateTextButtonVisibility()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 214
    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIsInitialize:Z

    if-eqz v3, :cond_0

    .line 230
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 217
    .local v0, "visible":Z
    :goto_1
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v3, :cond_3

    :cond_1
    :goto_2
    and-int/2addr v0, v1

    .line 220
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_3
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->uptateTextAppearance(Z)V

    .line 223
    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Z)V

    .line 224
    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 225
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4, v2}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setPadding(IIII)V

    goto :goto_0

    .end local v0    # "visible":Z
    :cond_2
    move v0, v2

    .line 216
    goto :goto_1

    .restart local v0    # "visible":Z
    :cond_3
    move v1, v2

    .line 217
    goto :goto_2

    .line 220
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 227
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v2}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private uptateTextAppearance(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 400
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 401
    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIsInSplit:Z

    if-eqz v3, :cond_1

    .line 402
    new-array v0, v5, [I

    const v3, 0x7f01008d

    aput v3, v0, v4

    .line 421
    .local v0, "ATTRS":[I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 422
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v3, -0x1

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 423
    .local v2, "textAppearanceSmall":I
    if-lez v2, :cond_0

    .line 424
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    .line 426
    :cond_0
    return-void

    .line 406
    .end local v0    # "ATTRS":[I
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    .end local v2    # "textAppearanceSmall":I
    :cond_1
    new-array v0, v5, [I

    const v3, 0x7f010089

    aput v3, v0, v4

    .restart local v0    # "ATTRS":[I
    goto :goto_0

    .line 411
    .end local v0    # "ATTRS":[I
    :cond_2
    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIsInSplit:Z

    if-eqz v3, :cond_3

    .line 412
    new-array v0, v5, [I

    const v3, 0x7f01008f

    aput v3, v0, v4

    .restart local v0    # "ATTRS":[I
    goto :goto_0

    .line 416
    .end local v0    # "ATTRS":[I
    :cond_3
    new-array v0, v5, [I

    const v3, 0x7f010035

    aput v3, v0, v4

    .restart local v0    # "ATTRS":[I
    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 446
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->drawableStateChanged()V

    .line 448
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 452
    .local v0, "isInAlphaState":Z
    :goto_0
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mDisabledAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 454
    .end local v0    # "isInAlphaState":Z
    :cond_1
    return-void

    .line 451
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 452
    .restart local v0    # "isInAlphaState":Z
    :cond_3
    const/16 v1, 0xff

    goto :goto_1
.end method

.method public getItemData()Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/support/v7/internal/view/menu/MenuItemImpl;I)V
    .locals 5
    .param p1, "itemData"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 138
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 141
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIsInitialize:Z

    .line 143
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 144
    invoke-virtual {p1, p0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getTitleForItemView(Landroid/support/v7/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 147
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 148
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 149
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Landroid/support/v7/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)V

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isOverflowActor()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setIsOverflowActor(Z)V

    .line 157
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_5

    .line 159
    .local v0, "isInAlphaState":Z
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mDisabledAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    :goto_2
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 161
    .end local v0    # "isInAlphaState":Z
    :cond_2
    iput-boolean v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIsInitialize:Z

    .line 162
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 163
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getTitleColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getTitleColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 165
    :cond_3
    return-void

    .line 147
    :cond_4
    const/16 v1, 0x8

    goto :goto_0

    :cond_5
    move v0, v2

    .line 158
    goto :goto_1

    .line 159
    .restart local v0    # "isInAlphaState":Z
    :cond_6
    const/16 v1, 0xff

    goto :goto_2
.end method

.method public isOverflowActor()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIsOverflowActor:Z

    return v0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z

    .line 181
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 119
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 124
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 125
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 474
    const-string v0, "ActionMenuItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw:text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; left = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; measureWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 476
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 480
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 484
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatTextView;->onLayout(ZIIII)V

    .line 485
    const-string v0, "ActionMenuItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout:text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; left = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 285
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v9

    .line 291
    :cond_1
    iget-object v11, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 294
    iget-object v11, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {p0, v11}, Landroid/support/v7/internal/widget/ToastUtils;->showToast(Landroid/view/View;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v11

    if-eqz v11, :cond_2

    move v9, v10

    .line 295
    goto :goto_0

    .line 300
    :cond_2
    const/4 v11, 0x2

    new-array v6, v11, [I

    .line 301
    .local v6, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 302
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 303
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 305
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 306
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v8

    .line 307
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v3

    .line 308
    .local v3, "height":I
    aget v11, v6, v10

    div-int/lit8 v12, v3, 0x2

    add-int v4, v11, v12

    .line 309
    .local v4, "midy":I
    aget v11, v6, v9

    div-int/lit8 v12, v8, 0x2

    add-int v5, v11, v12

    .line 310
    .local v5, "referenceX":I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v11

    if-nez v11, :cond_3

    .line 311
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 312
    .local v7, "screenWidth":I
    sub-int v5, v7, v5

    .line 314
    .end local v7    # "screenWidth":I
    :cond_3
    iget-object v11, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v1, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 315
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v4, v11, :cond_4

    .line 317
    const v9, 0x800035

    invoke-virtual {v0, v9, v5, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 322
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v9, v10

    .line 323
    goto :goto_0

    .line 320
    :cond_4
    const/16 v11, 0x51

    invoke-virtual {v0, v11, v9, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 328
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    .line 329
    .local v3, "textVisible":Z
    if-eqz v3, :cond_0

    iget v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v7, :cond_0

    .line 330
    iget v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    .line 334
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    .line 336
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 337
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 338
    .local v6, "widthSize":I
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v1

    .line 339
    .local v1, "oldMeasuredWidth":I
    const/high16 v7, -0x80000000

    if-ne v5, v7, :cond_3

    iget v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 341
    .local v2, "targetWidth":I
    :goto_0
    const-string v7, "ActionMenuItemView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onMeasure:widthMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; widthSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; oldMeasuredWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; targetWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    if-eq v5, v11, :cond_1

    iget v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v7, :cond_1

    if-ge v1, v2, :cond_1

    .line 345
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v7, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    .line 349
    :cond_1
    if-nez v3, :cond_2

    iget-object v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 352
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v4

    .line 353
    .local v4, "w":I
    iget-object v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 354
    .local v0, "dw":I
    sub-int v7, v4, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    .line 356
    .end local v0    # "dw":I
    .end local v4    # "w":I
    :cond_2
    const-string v7, "ActionMenuItemView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onMeasure:getMeasuredWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; getMeasuredHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void

    .line 339
    .end local v2    # "targetWidth":I
    :cond_3
    iget v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 169
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 233
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 234
    if-eqz p1, :cond_2

    .line 235
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 236
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 237
    .local v0, "height":I
    iget v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v2, v3, :cond_0

    .line 238
    iget v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 239
    .local v1, "scale":F
    iget v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 240
    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 242
    .end local v1    # "scale":F
    :cond_0
    iget v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v0, v3, :cond_1

    .line 243
    iget v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 244
    .restart local v1    # "scale":F
    iget v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 245
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 247
    .end local v1    # "scale":F
    :cond_1
    invoke-virtual {p1, v5, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 254
    return-void
.end method

.method public setIsInSplit(Z)V
    .locals 0
    .param p1, "isInSplit"    # Z

    .prologue
    .line 439
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIsInSplit:Z

    .line 440
    return-void
.end method

.method public setIsOverflowActor(Z)V
    .locals 0
    .param p1, "isOverflowActor"    # Z

    .prologue
    .line 467
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIsOverflowActor:Z

    .line 468
    return-void
.end method

.method public setItemInvoker(Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 184
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 185
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 129
    iput p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    .line 131
    return-void
.end method

.method public setPopupCallback(Landroid/support/v7/internal/view/menu/ActionMenuItemView$PopupCallback;)V
    .locals 0
    .param p1, "popupCallback"    # Landroid/support/v7/internal/view/menu/ActionMenuItemView$PopupCallback;

    .prologue
    .line 188
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mPopupCallback:Landroid/support/v7/internal/view/menu/ActionMenuItemView$PopupCallback;

    .line 189
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 265
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 267
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 268
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 269
    return-void
.end method
