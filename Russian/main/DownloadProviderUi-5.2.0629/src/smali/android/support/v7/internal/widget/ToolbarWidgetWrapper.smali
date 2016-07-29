.class public Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/support/v7/internal/widget/DecorToolbar;


# instance fields
.field private mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

.field protected mSplitActionBar:Z

.field protected mSplitWhenNarrow:Z

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field private final mTintManager:Landroid/support/v7/internal/widget/TintManager;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 2
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "style"    # Z

    .prologue
    .line 95
    const v0, 0x7f080063

    const v1, 0x7f020015

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 22
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I
    .param p4, "defaultNavigationIcon"    # I

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 86
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 101
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 107
    if-eqz p2, :cond_d

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    sget-object v19, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    const v20, 0x7f01002e

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v3

    .line 111
    .local v3, "a":Landroid/support/v7/internal/widget/TintTypedArray;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 112
    .local v15, "title":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 117
    .local v13, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 118
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 121
    :cond_1
    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 122
    .local v9, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_2

    .line 123
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_2
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 127
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    if-eqz v8, :cond_3

    .line 128
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_3
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 132
    .local v11, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_4

    .line 133
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :cond_4
    const/16 v17, 0x4

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getInt(II)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 138
    const/16 v17, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    .line 140
    .local v6, "customNavId":I
    if-eqz v6, :cond_5

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 143
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 146
    :cond_5
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v7

    .line 147
    .local v7, "height":I
    if-lez v7, :cond_6

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 149
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v7, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const/16 v17, 0x15

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 155
    .local v5, "contentInsetStart":I
    const/16 v17, 0x16

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 157
    .local v4, "contentInsetEnd":I
    if-gez v5, :cond_7

    if-ltz v4, :cond_8

    .line 158
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 162
    :cond_8
    const/16 v17, 0x6

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v16

    .line 163
    .local v16, "titleTextStyle":I
    if-eqz v16, :cond_9

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 167
    :cond_9
    const/16 v17, 0x7

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v14

    .line 169
    .local v14, "subtitleTextStyle":I
    if-eqz v14, :cond_a

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 173
    :cond_a
    const/16 v17, 0x1a

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    .line 174
    .local v12, "popupTheme":I
    if-eqz v12, :cond_b

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 178
    :cond_b
    invoke-virtual {v3}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 180
    invoke-virtual {v3}, Landroid/support/v7/internal/widget/TintTypedArray;->getTintManager()Landroid/support/v7/internal/widget/TintManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    .line 187
    .end local v3    # "a":Landroid/support/v7/internal/widget/TintTypedArray;
    .end local v4    # "contentInsetEnd":I
    .end local v5    # "contentInsetStart":I
    .end local v6    # "customNavId":I
    .end local v7    # "height":I
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v9    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v11    # "navIcon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "popupTheme":I
    .end local v13    # "subtitle":Ljava/lang/CharSequence;
    .end local v14    # "subtitleTextStyle":I
    .end local v15    # "title":Ljava/lang/CharSequence;
    .end local v16    # "titleTextStyle":I
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v17, v0

    new-instance v18, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$1;-><init>(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-void

    .line 104
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 182
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/support/v7/internal/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/internal/widget/TintManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)Landroid/support/v7/widget/Toolbar;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    return v0
.end method

.method private detectDisplayOptions()I
    .locals 2

    .prologue
    .line 233
    const/16 v0, 0xb

    .line 235
    .local v0, "opts":I
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    or-int/lit8 v0, v0, 0x4

    .line 238
    :cond_0
    return v0
.end method

.method private ensureSpinner()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 626
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-nez v1, :cond_0

    .line 627
    new-instance v1, Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f010049

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    .line 628
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v5, v5, v1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 630
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 291
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 292
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 295
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 2

    .prologue
    .line 748
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNavigationIcon()V
    .locals 2

    .prologue
    .line 758
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 759
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 761
    :cond_0
    return-void

    .line 759
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateToolbarLogo()V
    .locals 2

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 404
    iget v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 405
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 410
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 411
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 407
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v2, 0xa0

    .line 679
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 680
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$2;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$2;-><init>(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Landroid/support/v7/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 717
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setMenuViewAnimateToVisibility(I)V

    .line 721
    :cond_1
    return-void

    .line 703
    :cond_2
    if-nez p1, :cond_0

    .line 704
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$3;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$3;-><init>(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Landroid/support/v7/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public canSplit()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->collapseActionView()V

    .line 264
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->dismissPopupMenus()V

    .line 468
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 2

    .prologue
    .line 317
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method

.method public initProgress()V
    .locals 2

    .prologue
    .line 312
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isSplit()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSplitActionBar:Z

    return v0
.end method

.method public setCollapsible(Z)V
    .locals 1
    .param p1, "collapsible"    # Z

    .prologue
    .line 571
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    .line 572
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 663
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 666
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 667
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 670
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .prologue
    .line 215
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iput p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 219
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    goto :goto_0
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 226
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 227
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 228
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 230
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 7
    .param p1, "newOpts"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 477
    iget v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 478
    .local v2, "oldOpts":I
    xor-int v0, v2, p1

    .line 479
    .local v0, "changed":I
    iput p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 480
    if-eqz v0, :cond_4

    .line 481
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_0

    .line 482
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_5

    .line 483
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 484
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 490
    :cond_0
    :goto_0
    and-int/lit8 v3, v0, 0x3

    if-eqz v3, :cond_1

    .line 491
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 494
    :cond_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_2

    .line 495
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_6

    .line 496
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 504
    :cond_2
    :goto_1
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 505
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_7

    .line 506
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 513
    :cond_3
    :goto_2
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 514
    and-int/lit8 v3, p1, 0x40

    if-eqz v3, :cond_8

    .line 515
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 516
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v3, v4, v6}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 517
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 518
    .local v1, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iput v5, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->width:I

    .line 519
    iput v5, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->height:I

    .line 520
    const v3, 0x800053

    iput v3, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 524
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    check-cast v3, Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v6}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 525
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    check-cast v3, Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->showAtToolbar(Z)V

    .line 536
    .end local v1    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_4
    :goto_3
    return-void

    .line 486
    :cond_5
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 499
    :cond_6
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 508
    :cond_7
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 529
    :cond_8
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v3, v4, :cond_4

    .line 530
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_3
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 644
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-nez v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 649
    return-void
.end method

.method public setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
    .locals 5
    .param p1, "tabView"    # Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 540
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v1, v2, :cond_0

    .line 541
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 543
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 544
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 545
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 546
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 547
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iput v3, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->width:I

    .line 548
    iput v3, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->height:I

    .line 549
    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 553
    invoke-virtual {p1, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 554
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->showAtToolbar(Z)V

    .line 557
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 577
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 386
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 387
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 388
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 397
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 398
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 399
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v4, 0x1

    .line 445
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez v1, :cond_0

    .line 446
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 447
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->setId(I)V

    .line 449
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSplitActionBar:Z

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 452
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/view/ActionBarPolicy;->getSplitActionBarPadding()I

    move-result v0

    .line 453
    .local v0, "padding":I
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 456
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 457
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->setIsSplit(Z)V

    .line 461
    .end local v0    # "padding":I
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/ActionMenuPresenter;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 462
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/internal/view/menu/MenuBuilder;

    .end local p1    # "menu":Landroid/view/Menu;
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/Toolbar;->setMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 463
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    .line 441
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 744
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 745
    return-void

    .line 744
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 738
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 739
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 740
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 725
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 726
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 727
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 586
    iget v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 587
    .local v1, "oldMode":I
    if-eq p1, v1, :cond_1

    .line 588
    packed-switch v1, :pswitch_data_0

    .line 601
    :cond_0
    :goto_0
    iput p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 603
    packed-switch p1, :pswitch_data_1

    .line 620
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid navigation mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 590
    :pswitch_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/SpinnerCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v2, v3, :cond_0

    .line 591
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 595
    :pswitch_1
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v2, v3, :cond_0

    .line 596
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 607
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 608
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v2, v3, v5}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 623
    :cond_1
    :goto_1
    :pswitch_3
    return-void

    .line 611
    :pswitch_4
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 612
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3, v5}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 613
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 614
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iput v4, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->width:I

    .line 615
    iput v4, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->height:I

    .line 616
    const v2, 0x800053

    iput v2, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    goto :goto_1

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 603
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .locals 5
    .param p1, "split"    # Z

    .prologue
    const/4 v4, 0x1

    .line 341
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSplitActionBar:Z

    if-eq v1, p1, :cond_0

    .line 342
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSplitActionBar:Z

    .line 343
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/Toolbar;->setSplitToolbar(Z)V

    .line 344
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 345
    if-nez p1, :cond_1

    .line 346
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 356
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setIsSplit(Z)V

    .line 360
    :cond_0
    return-void

    .line 348
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 350
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/view/ActionBarPolicy;->getSplitActionBarPadding()I

    move-result v0

    .line 351
    .local v0, "padding":I
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 354
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->setItemLimit(I)V

    goto :goto_0
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .prologue
    .line 331
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSplitView(Landroid/view/ViewGroup;)V

    .line 333
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    .prologue
    .line 365
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSplitWhenNarrow:Z

    .line 367
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 304
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 305
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 308
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 287
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 288
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 268
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    .line 269
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 274
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 277
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
