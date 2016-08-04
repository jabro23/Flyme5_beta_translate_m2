.class public Landroid/support/v7/widget/ActionMenuPresenter;
.super Landroid/support/v7/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuPresenter$1;,
        Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;,
        Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mIsSplit:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field private mMinCellSizeInSplit:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

.field private mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const v0, 0x7f040004

    const v1, 0x7f040055

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 90
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 100
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 107
    return-void
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z

    return v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;)Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 62
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object v0
.end method

.method static synthetic access$402(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .prologue
    .line 62
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object v0
.end method

.method static synthetic access$902(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .prologue
    .line 62
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method private findAnchor(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "anchorSrc"    # Landroid/view/View;

    .prologue
    .line 1056
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    .line 1075
    .end local p1    # "anchorSrc":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p1

    .line 1057
    .restart local p1    # "anchorSrc":Landroid/view/View;
    :cond_1
    move-object v2, p1

    .line 1059
    .local v2, "anchor":Landroid/view/View;
    const/4 v1, 0x0

    .line 1060
    .local v1, "activity":Landroid/app/Activity;
    :try_start_0
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/support/v7/internal/view/ContextThemeWrapper;

    if-eqz v3, :cond_3

    .line 1061
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/support/v7/internal/view/ContextThemeWrapper;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 1067
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isSplit()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1068
    const v3, 0x7f0d0067

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1072
    :goto_2
    if-eqz v2, :cond_0

    :goto_3
    move-object p1, v2

    .line 1075
    goto :goto_0

    .line 1063
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 1064
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    move-object v0, v3

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 1065
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0d0067

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 1070
    :cond_4
    const v3, 0x7f0d0005

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_2

    .line 1073
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 331
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 332
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 342
    :cond_0
    :goto_0
    return-object v0

    .line 334
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 335
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 336
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Landroid/support/v7/internal/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 335
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 342
    goto :goto_0
.end method

.method private flagActionItemsInSplit()Z
    .locals 15

    .prologue
    .line 973
    iget-object v14, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v12

    .line 974
    .local v12, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 975
    .local v7, "itemsSize":I
    iget v13, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 977
    .local v13, "widthLimit":I
    const/4 v10, 0x0

    .line 978
    .local v10, "requiredItems":I
    const/4 v9, 0x0

    .line 979
    .local v9, "requestedItems":I
    const/4 v2, 0x0

    .line 980
    .local v2, "hasMoreItem":Z
    const/4 v3, 0x0

    .line 981
    .local v3, "hasOverflow":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_2

    .line 982
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 983
    .local v6, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 984
    add-int/lit8 v10, v10, 0x1

    .line 981
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 985
    :cond_0
    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 986
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 988
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 993
    .end local v6    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_2
    iget-boolean v14, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v14, :cond_3

    if-eqz v3, :cond_3

    .line 994
    const/4 v2, 0x1

    .line 997
    :cond_3
    iget-object v11, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 998
    .local v11, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1000
    const/4 v0, 0x0

    .line 1001
    .local v0, "cellsRemaining":I
    const/4 v8, 0x0

    .line 1002
    .local v8, "maxCells":I
    iget-boolean v14, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v14, :cond_4

    .line 1003
    iget v14, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSizeInSplit:I

    div-int v8, v13, v14

    .line 1006
    :cond_4
    add-int v14, v10, v9

    if-le v14, v8, :cond_8

    const/4 v14, 0x1

    :goto_2
    or-int/2addr v2, v14

    .line 1007
    if-eqz v2, :cond_9

    add-int/lit8 v0, v8, -0x1

    .line 1008
    :goto_3
    add-int v14, v10, v9

    if-ge v14, v0, :cond_5

    add-int v0, v10, v9

    .line 1010
    :cond_5
    const/4 v5, 0x0

    .line 1011
    .local v5, "index":I
    :goto_4
    if-ge v5, v7, :cond_b

    if-lez v0, :cond_b

    .line 1012
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 1013
    .restart local v6    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1014
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 1015
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 1016
    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    .line 1017
    .local v1, "groupId":I
    if-eqz v1, :cond_7

    .line 1018
    const/4 v14, 0x1

    invoke-virtual {v11, v1, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1011
    .end local v1    # "groupId":I
    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1006
    .end local v5    # "index":I
    .end local v6    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    :cond_9
    move v0, v8

    .line 1007
    goto :goto_3

    .line 1021
    .restart local v5    # "index":I
    .restart local v6    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_a
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_5

    .line 1024
    .end local v6    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_b
    move v4, v5

    :goto_6
    if-ge v4, v7, :cond_c

    .line 1025
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 1026
    .restart local v6    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 1024
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1028
    .end local v6    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_c
    const/4 v14, 0x1

    return v14
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    .prologue
    .line 1096
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 1097
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    instance-of v1, v1, Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    instance-of v1, p1, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_0

    .line 1098
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 1099
    .local v0, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    check-cast p1, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .end local p1    # "itemView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->isOverflowActor()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 1101
    .end local v0    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_0
    return-void
.end method

.method public bindItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/support/v7/internal/view/menu/MenuView$ItemView;)V
    .locals 4
    .param p1, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 214
    move-object v2, p2

    check-cast v2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    iget-boolean v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setIsInSplit(Z)V

    .line 216
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Landroid/support/v7/internal/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/internal/view/menu/MenuItemImpl;I)V

    .line 218
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v1, Landroid/support/v7/widget/ActionMenuView;

    .local v1, "menuView":Landroid/support/v7/widget/ActionMenuView;
    move-object v0, p2

    .line 219
    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 220
    .local v0, "actionItemView":Landroid/support/v7/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 222
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    .line 223
    new-instance v2, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$1;)V

    iput-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 225
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setPopupCallback(Landroid/support/v7/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 226
    return-void
.end method

.method public createItemView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView$ItemView;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1035
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    move-result-object v0

    .line 1036
    .local v0, "itemView":Landroid/support/v7/internal/view/menu/MenuView$ItemView;
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isSplit()Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_1

    :cond_0
    instance-of v4, v0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-eqz v4, :cond_1

    .line 1037
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v2, Landroid/support/v7/widget/ActionMenuView;

    .line 1038
    .local v2, "menuView":Landroid/support/v7/widget/ActionMenuView;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/ActionMenuView;->setClipChildren(Z)V

    move-object v1, v0

    .line 1039
    check-cast v1, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 1040
    .local v1, "itemViewImpl":Landroid/support/v7/internal/view/menu/ActionMenuItemView;
    new-instance v3, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;

    invoke-direct {v3, p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/view/View;)V

    .line 1041
    .local v3, "rippleDrawableComp":Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;
    invoke-virtual {v1, v3}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1043
    .end local v1    # "itemViewImpl":Landroid/support/v7/internal/view/menu/ActionMenuItemView;
    .end local v2    # "menuView":Landroid/support/v7/widget/ActionMenuView;
    .end local v3    # "rippleDrawableComp":Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;
    :cond_1
    return-object v0
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 407
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 408
    return v0
.end method

.method public dismissPopupMenus(Z)Z
    .locals 2
    .param p1, "isSlideOut"    # Z

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v0

    .line 418
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 419
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 301
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 29

    .prologue
    .line 456
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    .line 457
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuPresenter;->flagActionItemsInSplit()Z

    move-result v27

    .line 599
    :goto_0
    return v27

    .line 460
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 461
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 462
    .local v15, "itemsSize":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    .line 463
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v26, v0

    .line 464
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 465
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    .line 467
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 468
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    .line 469
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    .line 470
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    .line 471
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v15, :cond_4

    .line 472
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 473
    .local v14, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 474
    add-int/lit8 v22, v22, 0x1

    .line 480
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 483
    const/16 v17, 0x0

    .line 471
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 475
    :cond_2
    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 476
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 478
    :cond_3
    const/4 v10, 0x1

    goto :goto_2

    .line 488
    .end local v14    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    if-nez v10, :cond_5

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 490
    :cond_5
    add-int/lit8 v17, v17, -0x1

    .line 492
    :cond_6
    sub-int v17, v17, v22

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    .line 495
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 497
    const/4 v4, 0x0

    .line 498
    .local v4, "cellSize":I
    const/4 v7, 0x0

    .line 499
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 500
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v7, v26, v27

    .line 501
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    .line 502
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    .line 506
    .end local v5    # "cellSizeRemaining":I
    :cond_7
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_20

    .line 507
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 509
    .restart local v14    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 511
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_8

    .line 512
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 514
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    .line 515
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    .line 520
    :goto_4
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 521
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    .line 522
    if-nez v8, :cond_9

    .line 523
    move/from16 v8, v18

    .line 525
    :cond_9
    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 526
    .local v9, "groupId":I
    if-eqz v9, :cond_a

    .line 527
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 529
    :cond_a
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 506
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 518
    .restart local v24    # "v":Landroid/view/View;
    :cond_b
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 530
    .end local v24    # "v":Landroid/view/View;
    :cond_c
    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_1f

    .line 533
    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 534
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 535
    .local v12, "inGroup":Z
    if-gtz v17, :cond_d

    if-eqz v12, :cond_15

    :cond_d
    if-lez v26, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    if-lez v7, :cond_15

    :cond_e
    const/4 v13, 0x1

    .line 538
    .local v13, "isAction":Z
    :goto_6
    if-eqz v13, :cond_12

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 540
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_f

    .line 541
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 543
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    .line 544
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    .line 546
    .local v6, "cells":I
    sub-int/2addr v7, v6

    .line 547
    if-nez v6, :cond_10

    .line 548
    const/4 v13, 0x0

    .line 553
    .end local v6    # "cells":I
    :cond_10
    :goto_7
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 554
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    .line 555
    if-nez v8, :cond_11

    .line 556
    move/from16 v8, v18

    .line 559
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    .line 560
    if-ltz v26, :cond_17

    const/16 v27, 0x1

    :goto_8
    and-int v13, v13, v27

    .line 576
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_12
    :goto_9
    if-eqz v13, :cond_1c

    if-eqz v9, :cond_1c

    .line 577
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 591
    :cond_13
    if-eqz v13, :cond_14

    add-int/lit8 v17, v17, -0x1

    .line 593
    :cond_14
    invoke-virtual {v14, v13}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_5

    .line 535
    .end local v13    # "isAction":Z
    :cond_15
    const/4 v13, 0x0

    goto :goto_6

    .line 551
    .restart local v13    # "isAction":Z
    .restart local v24    # "v":Landroid/view/View;
    :cond_16
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 560
    .restart local v18    # "measuredWidth":I
    :cond_17
    const/16 v27, 0x0

    goto :goto_8

    .line 567
    :cond_18
    if-nez v11, :cond_1a

    .line 568
    add-int v27, v26, v8

    if-lez v27, :cond_19

    const/16 v27, 0x1

    :goto_a
    and-int v13, v13, v27

    goto :goto_9

    :cond_19
    const/16 v27, 0x0

    goto :goto_a

    .line 570
    :cond_1a
    if-ltz v26, :cond_1b

    const/16 v27, 0x1

    :goto_b
    and-int v13, v13, v27

    goto :goto_9

    :cond_1b
    const/16 v27, 0x0

    goto :goto_b

    .line 578
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_1c
    if-eqz v12, :cond_13

    .line 580
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 581
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_c
    move/from16 v0, v16

    if-ge v0, v11, :cond_13

    .line 582
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 583
    .local v3, "areYouMyGroupie":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_1e

    .line 585
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v27

    if-eqz v27, :cond_1d

    add-int/lit8 v17, v17, 0x1

    .line 586
    :cond_1d
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 581
    :cond_1e
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    .line 596
    .end local v3    # "areYouMyGroupie":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v16    # "j":I
    :cond_1f
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_5

    .line 599
    .end local v14    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_20
    const/16 v27, 0x1

    goto/16 :goto_0
.end method

.method public getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 198
    check-cast v2, Landroid/support/v7/widget/ActionMenuView;

    .line 199
    .local v2, "menuParent":Landroid/support/v7/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 200
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 201
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    :goto_1
    return-object v0

    .line 196
    .end local v2    # "menuParent":Landroid/support/v7/widget/ActionMenuView;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 204
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "menuParent":Landroid/support/v7/widget/ActionMenuView;
    :cond_4
    instance-of v3, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v3, :cond_2

    instance-of v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-eqz v3, :cond_2

    .line 205
    check-cast v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v0

    check-cast v3, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->isOverflowActor()Z

    move-result v3

    iput-boolean v3, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    goto :goto_1
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v0

    .local v0, "result":Landroid/support/v7/internal/view/menu/MenuView;
    move-object v1, v0

    .line 186
    check-cast v1, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 187
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v0

    return v0
.end method

.method public hideOverflowMenu(Z)Z
    .locals 4
    .param p1, "isSlide"    # Z

    .prologue
    const/4 v2, 0x1

    .line 383
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 385
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 398
    :goto_0
    return v1

    .line 389
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .line 390
    .local v0, "popup":Landroid/support/v7/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    move v1, v2

    .line 396
    goto :goto_0

    .line 398
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 431
    const/4 v0, 0x1

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 111
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 115
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 116
    .local v0, "abp":Landroid/support/v7/internal/view/ActionBarPolicy;
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v4, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 120
    :cond_0
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v4, :cond_1

    .line 121
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 125
    :cond_1
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v4, :cond_2

    .line 126
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 129
    :cond_2
    iget v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 130
    .local v3, "width":I
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_4

    .line 131
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v4, :cond_3

    .line 132
    new-instance v4, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 133
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 134
    .local v2, "spec":I
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    .line 136
    .end local v2    # "spec":I
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 141
    :goto_0
    iput v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 143
    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 146
    iput-object v7, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 149
    const/high16 v4, 0x42860000    # 67.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSizeInSplit:I

    .line 151
    return-void

    .line 138
    :cond_4
    iput-object v7, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSplit()Z
    .locals 1

    .prologue
    .line 965
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z

    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 604
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 605
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    .line 606
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;ZLandroid/support/v7/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z
    .param p3, "menuItem"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .prologue
    .line 617
    invoke-virtual {p3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isLetMenuSlideOut()Z

    move-result v0

    .line 618
    .local v0, "letMenuSlideOut":Z
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 619
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    .line 620
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 154
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 158
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 161
    :cond_1
    return-void
.end method

.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .param p1, "subMenu"    # Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v2

    .line 308
    :cond_1
    move-object v1, p1

    .line 309
    .local v1, "topSubMenu":Landroid/support/v7/internal/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_2

    .line 310
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    .end local v1    # "topSubMenu":Landroid/support/v7/internal/view/menu/SubMenuBuilder;
    check-cast v1, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .restart local v1    # "topSubMenu":Landroid/support/v7/internal/view/menu/SubMenuBuilder;
    goto :goto_1

    .line 312
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 313
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_3

    .line 314
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 315
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 318
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 319
    new-instance v2, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 321
    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter;->findAnchor(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 322
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    const v3, 0x800005

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setGravity(I)V

    .line 324
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 325
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 326
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    .line 327
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 644
    if-eqz p1, :cond_0

    .line 646
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 181
    return-void
.end method

.method public setIsSplit(Z)V
    .locals 3
    .param p1, "isSplit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 948
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 949
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 950
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z

    .line 951
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z

    if-eqz v1, :cond_3

    const v1, 0x7f040056

    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->setItemLayoutRes(I)V

    .line 952
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 953
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 955
    :cond_0
    if-nez p1, :cond_1

    .line 956
    iput-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 957
    iput-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 958
    iput-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 959
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 962
    :cond_1
    return-void

    .end local v0    # "changed":Z
    :cond_2
    move v0, v2

    .line 948
    goto :goto_0

    .line 951
    .restart local v0    # "changed":Z
    :cond_3
    const v1, 0x7f040055

    goto :goto_1
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .prologue
    .line 175
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 177
    return-void
.end method

.method public setMenuView(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1
    .param p1, "menuView"    # Landroid/support/v7/widget/ActionMenuView;

    .prologue
    .line 653
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    .line 654
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->initialize(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 655
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 172
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    .line 164
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 165
    iput-boolean p2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 167
    return-void
.end method

.method public shouldIncludeItem(ILandroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .prologue
    .line 230
    invoke-virtual {p2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 350
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->findAnchor(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 356
    .local v4, "anchor":Landroid/view/View;
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 358
    .local v0, "popup":Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 360
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 364
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    .line 368
    .end local v0    # "popup":Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    .end local v4    # "anchor":Landroid/view/View;
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 14
    .param p1, "cleared"    # Z

    .prologue
    .line 235
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 236
    .local v7, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v7, :cond_0

    .line 237
    invoke-static {v7}, Landroid/support/v7/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 239
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 241
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->requestLayout()V

    .line 243
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v12, :cond_2

    .line 244
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v12}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 245
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 246
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 247
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v12}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v10

    .line 248
    .local v10, "provider":Landroid/support/v4/view/ActionProvider;
    if-eqz v10, :cond_1

    .line 249
    invoke-virtual {v10, p0}, Landroid/support/v4/view/ActionProvider;->setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V

    .line 246
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v10    # "provider":Landroid/support/v4/view/ActionProvider;
    :cond_2
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v12, :cond_7

    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v12}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 257
    .local v8, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 258
    .local v2, "hasOverflow":Z
    iget-boolean v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v12, :cond_3

    if-eqz v8, :cond_3

    .line 259
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 260
    .restart local v1    # "count":I
    const/4 v12, 0x1

    if-ne v1, v12, :cond_9

    .line 261
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v12}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v12

    if-nez v12, :cond_8

    const/4 v2, 0x1

    .line 267
    .end local v1    # "count":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_b

    .line 268
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v12, :cond_4

    .line 269
    new-instance v12, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v13, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v12, p0, v13}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 271
    :cond_4
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 272
    .local v9, "parent":Landroid/view/ViewGroup;
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eq v9, v12, :cond_6

    .line 273
    if-eqz v9, :cond_5

    .line 274
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 276
    :cond_5
    iget-object v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v6, Landroid/support/v7/widget/ActionMenuView;

    .line 277
    .local v6, "menuView":Landroid/support/v7/widget/ActionMenuView;
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/support/v7/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    .end local v6    # "menuView":Landroid/support/v7/widget/ActionMenuView;
    .end local v9    # "parent":Landroid/view/ViewGroup;
    :cond_6
    :goto_3
    if-nez v2, :cond_d

    .line 285
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v12, :cond_c

    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v12}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v11

    .line 287
    .local v11, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    :goto_4
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_d

    .line 288
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 289
    .local v5, "menuItem":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isOverflowActor()Z

    move-result v2

    .line 290
    goto :goto_5

    .line 254
    .end local v2    # "hasOverflow":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "menuItem":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .end local v8    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    .end local v11    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .line 261
    .restart local v1    # "count":I
    .restart local v2    # "hasOverflow":Z
    .restart local v8    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    .line 263
    :cond_9
    if-lez v1, :cond_a

    const/4 v2, 0x1

    :goto_6
    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    .line 279
    .end local v1    # "count":I
    :cond_b
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v12, :cond_6

    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    iget-object v13, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-ne v12, v13, :cond_6

    .line 280
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v12, Landroid/view/ViewGroup;

    iget-object v13, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 285
    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    .line 295
    :cond_d
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v12, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v13, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 296
    iget-object v12, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v12, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v12, v2}, Landroid/support/v7/widget/ActionMenuView;->setHasOverflow(Z)V

    .line 297
    return-void
.end method
