.class public Lcom/meizu/common/widget/ContentToastLayout;
.super Landroid/widget/FrameLayout;
.source "ContentToastLayout.java"


# static fields
.field public static final TOAST_TYPE_ERROR:I = 0x1

.field public static final TOAST_TYPE_NORMAL:I


# instance fields
.field private mActionIcon:Landroid/graphics/drawable/Drawable;

.field private mActionView:Landroid/widget/ImageView;

.field private mContainerLayout:Landroid/widget/LinearLayout;

.field private mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

.field private mDefaultWarningIcon:Landroid/graphics/drawable/Drawable;

.field private mParentLayout:Landroid/widget/LinearLayout;

.field private mSeparatorView:Landroid/view/View;

.field private mText:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private mWarningIcon:Landroid/graphics/drawable/Drawable;

.field private mWarningView:Landroid/widget/ImageView;

.field private mWidgetLayout:Landroid/widget/LinearLayout;

.field private mWidgetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/ContentToastLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ContentToastLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 49
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040028

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    const v1, 0x7f0d009a

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    .line 51
    const v1, 0x1020018

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWidgetLayout:Landroid/widget/LinearLayout;

    .line 52
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    .line 53
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    .line 54
    const v1, 0x7f0d009c

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mSeparatorView:Landroid/view/View;

    .line 55
    const v1, 0x7f0d0099

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mContainerLayout:Landroid/widget/LinearLayout;

    .line 56
    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultWarningIcon:Landroid/graphics/drawable/Drawable;

    .line 57
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ContentToastLayout;->setToastType(I)V

    .line 58
    return-void
.end method

.method private setWidget(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWidgetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWidgetLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 160
    :cond_0
    if-eqz p1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWidgetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    :cond_1
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 104
    const-class v0, Lcom/meizu/common/widget/ContentToastLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method public setActionIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "actionIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionIcon:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionView:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 96
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->setWidget(Landroid/view/View;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    return-void
.end method

.method public setContainerLayoutPadding(I)V
    .locals 2
    .param p1, "padding"    # I

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 142
    return-void
.end method

.method public setIsShowSeparator(Z)V
    .locals 2
    .param p1, "isShowSeparator"    # Z

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mSeparatorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mSeparatorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setParentLayoutPadding(I)V
    .locals 2
    .param p1, "padding"    # I

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 150
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mText:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    return-void
.end method

.method public setToastType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 170
    packed-switch p1, :pswitch_data_0

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->setWarningIcon(Landroid/graphics/drawable/Drawable;)V

    .line 174
    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

    .line 175
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->setActionIcon(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultWarningIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->setWarningIcon(Landroid/graphics/drawable/Drawable;)V

    .line 182
    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

    .line 183
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->setActionIcon(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setWarningIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "warningIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningIcon:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method
