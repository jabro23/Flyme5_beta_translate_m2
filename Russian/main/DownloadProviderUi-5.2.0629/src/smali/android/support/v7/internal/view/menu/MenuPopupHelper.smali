.class public Landroid/support/v7/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field mForceShowIcon:Z

.field private mHasContentWidth:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private final mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private final mOverflowOnly:Z

.field private mPopup:Landroid/support/v7/widget/ListPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    .line 90
    const/4 v4, 0x0

    const v5, 0x7f010058

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    .prologue
    .line 95
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
    .param p6, "popupStyleRes"    # I

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 100
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 102
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 103
    new-instance v1, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Landroid/support/v7/internal/view/menu/MenuPopupHelper;Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 104
    iput-boolean p4, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 105
    iput p5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 106
    iput p6, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f0b0032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 112
    iput-object p3, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 115
    invoke-virtual {p2, p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/internal/view/menu/MenuPopupHelper;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private measureContentWidth()I
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 222
    const/4 v7, 0x0

    .line 223
    .local v7, "maxWidth":I
    const/4 v5, 0x0

    .line 224
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 226
    .local v4, "itemType":I
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 227
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 228
    .local v9, "widthMeasureSpec":I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 229
    .local v2, "heightMeasureSpec":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 230
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 231
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 232
    .local v8, "positionType":I
    if-eq v8, v4, :cond_0

    .line 233
    move v4, v8

    .line 234
    const/4 v5, 0x0

    .line 237
    :cond_0
    iget-object v10, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v10, :cond_1

    .line 238
    new-instance v10, Landroid/widget/FrameLayout;

    iget-object v11, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 241
    :cond_1
    iget-object v10, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {v0, v3, v5, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 242
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 244
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 245
    .local v6, "itemWidth":I
    iget v10, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    if-lt v6, v10, :cond_3

    .line 246
    iget v7, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 252
    .end local v6    # "itemWidth":I
    .end local v7    # "maxWidth":I
    .end local v8    # "positionType":I
    :cond_2
    return v7

    .line 247
    .restart local v6    # "itemWidth":I
    .restart local v7    # "maxWidth":I
    .restart local v8    # "positionType":I
    :cond_3
    if-le v6, v7, :cond_4

    .line 248
    move v7, v6

    .line 230
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 180
    return-void
.end method

.method public dismiss(Z)V
    .locals 1
    .param p1, "isSlide"    # Z

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ListPopupWindow;->dismiss(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method public expandItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public getPopup()Landroid/support/v7/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .prologue
    .line 271
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 325
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    .line 194
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close()V

    .line 195
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 197
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 198
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 200
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 259
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 260
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 266
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 261
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 209
    .local v0, "adapter":Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;
    # getter for: Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 210
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 213
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 214
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .locals 7
    .param p1, "subMenu"    # Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 295
    new-instance v4, Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v6}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 296
    .local v4, "subPopup":Landroid/support/v7/internal/view/menu/MenuPopupHelper;
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 298
    const/4 v3, 0x0

    .line 299
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 300
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 301
    invoke-virtual {p1, v2}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 302
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 303
    const/4 v3, 0x1

    .line 307
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 309
    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 310
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 311
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z

    .line 313
    :cond_1
    const/4 v5, 0x1

    .line 316
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Landroid/support/v7/internal/view/menu/MenuPopupHelper;
    :goto_1
    return v5

    .line 300
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "preserveIconSpacing":Z
    .restart local v4    # "subPopup":Landroid/support/v7/internal/view/menu/MenuPopupHelper;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Landroid/support/v7/internal/view/menu/MenuPopupHelper;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 119
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 120
    return-void
.end method

.method public setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 289
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    .line 290
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 124
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 127
    iput p1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 128
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 141
    new-instance v5, Landroid/support/v7/widget/ListPopupWindow;

    iget-object v6, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    iget v8, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v9, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    .line 142
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v5, p0}, Landroid/support/v7/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 143
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v5, p0}, Landroid/support/v7/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v6, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/ListPopupWindow;->setModal(Z)V

    .line 147
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 148
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 149
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v5, :cond_2

    move v0, v3

    .line 150
    .local v0, "addGlobalListener":Z
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 151
    if-eqz v0, :cond_0

    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 152
    :cond_0
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 153
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    iget v6, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 158
    iget-boolean v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    if-nez v5, :cond_1

    .line 159
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->measureContentWidth()I

    move-result v5

    iput v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    .line 160
    iput-boolean v3, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 163
    :cond_1
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    iget v6, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ListPopupWindow;->setContentWidth(I)V

    .line 164
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 166
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/ListPopupWindow;->setClippingEnabled(Z)V

    .line 168
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 169
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/support/v7/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 171
    new-instance v2, Lflyme/support/v7/util/ListViewProxyImpl;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/support/v7/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget v6, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v7, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    invoke-direct {v2, v4, v5, v6, v7}, Lflyme/support/v7/util/ListViewProxyImpl;-><init>(Landroid/widget/AbsListView;Landroid/content/Context;II)V

    .line 172
    .local v2, "listViewProxy":Lflyme/support/v7/util/ListViewProxyImpl;
    invoke-virtual {v2}, Lflyme/support/v7/util/ListViewProxyImpl;->setDividerPaddingsListener()Z

    .line 174
    .end local v0    # "addGlobalListener":Z
    .end local v2    # "listViewProxy":Lflyme/support/v7/util/ListViewProxyImpl;
    :goto_1
    return v3

    :cond_2
    move v0, v4

    .line 149
    goto :goto_0

    :cond_3
    move v3, v4

    .line 155
    goto :goto_1
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 282
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 285
    :cond_0
    return-void
.end method
