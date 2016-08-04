.class public Landroid/support/v7/internal/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;,
        Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/internal/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 164
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 166
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 168
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 170
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 219
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 225
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 229
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 231
    invoke-direct {p0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 232
    return-void
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 437
    invoke-static {p3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v4

    .line 439
    .local v4, "ordering":I
    iget v6, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/internal/view/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v7

    .line 442
    .local v7, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v7, v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 447
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 450
    return-object v7
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "ordering"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "defaultShowAsAction"    # I

    .prologue
    .line 456
    new-instance v0, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v7/internal/view/menu/MenuItemImpl;-><init>(Landroid/support/v7/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .param p1, "cleared"    # Z

    .prologue
    .line 280
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 283
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 284
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuPresenter;

    .line 285
    .local v1, "presenter":Landroid/support/v7/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_1

    .line 286
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 288
    :cond_1
    invoke-interface {v1, p1}, Landroid/support/v7/internal/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_1

    .line 291
    .end local v1    # "presenter":Landroid/support/v7/internal/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/internal/view/menu/MenuPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;Landroid/support/v7/internal/view/menu/MenuPresenter;)Z
    .locals 5
    .param p1, "subMenu"    # Landroid/support/v7/internal/view/menu/SubMenuBuilder;
    .param p2, "preferredPresenter"    # Landroid/support/v7/internal/view/menu/MenuPresenter;

    .prologue
    .line 296
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 313
    :cond_0
    return v3

    .line 298
    :cond_1
    const/4 v3, 0x0

    .line 301
    .local v3, "result":Z
    if-eqz p2, :cond_2

    .line 302
    invoke-interface {p2, p1}, Landroid/support/v7/internal/view/menu/MenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    move-result v3

    .line 305
    :cond_2
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 306
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuPresenter;

    .line 307
    .local v1, "presenter":Landroid/support/v7/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_4

    .line 308
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_4
    if-nez v3, :cond_3

    .line 310
    invoke-interface {v1, p1}, Landroid/support/v7/internal/view/menu/MenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    move-result v3

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 828
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 829
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 830
    .local v1, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 831
    add-int/lit8 v2, v0, 0x1

    .line 835
    .end local v1    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :goto_1
    return v2

    .line 828
    .restart local v1    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 835
    .end local v1    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 3
    .param p0, "categoryOrder"    # I

    .prologue
    .line 761
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 763
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Landroid/support/v7/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 764
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 767
    :cond_1
    sget-object v1, Landroid/support/v7/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    .prologue
    .line 566
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 570
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1205
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1207
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 1208
    iput-object p5, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1211
    iput-object v2, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1212
    iput-object v2, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1231
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1232
    return-void

    .line 1214
    :cond_0
    if-lez p1, :cond_3

    .line 1215
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1220
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1221
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1227
    :cond_2
    :goto_2
    iput-object v2, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1216
    :cond_3
    if-eqz p2, :cond_1

    .line 1217
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1222
    :cond_4
    if-eqz p4, :cond_2

    .line 1223
    iput-object p4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 3
    .param p1, "shortcutsVisible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 794
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0e0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 797
    return-void

    .line 794
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 476
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 471
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-direct {p0, v0, v0, v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .prologue
    .line 506
    iget-object v10, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 507
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 509
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 511
    .local v3, "N":I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 512
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 515
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 516
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 517
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_3

    move-object/from16 v10, p6

    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 519
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 522
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Landroid/support/v7/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .line 525
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_1

    .line 526
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 515
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 509
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 517
    .restart local v3    # "N":I
    .restart local v4    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2

    .line 530
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method public addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/support/v7/internal/view/menu/MenuPresenter;

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 247
    return-void
.end method

.method public addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;Landroid/content/Context;)V
    .locals 2
    .param p1, "presenter"    # Landroid/support/v7/internal/view/menu/MenuPresenter;
    .param p2, "menuContext"    # Landroid/content/Context;

    .prologue
    .line 259
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-interface {p1, p2, p0}, Landroid/support/v7/internal/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 262
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 486
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 500
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 491
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 492
    .local v0, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    new-instance v1, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)V

    .line 493
    .local v1, "subMenu":Landroid/support/v7/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setSubMenu(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)V

    .line 495
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 481
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 825
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z

    .line 591
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 593
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 594
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1196
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1197
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1198
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1201
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1034
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close(Z)V

    .line 1035
    return-void
.end method

.method public final close(Z)V
    .locals 1
    .param p1, "allMenusAreClosing"    # Z

    .prologue
    .line 1005
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close(ZLandroid/support/v7/internal/view/menu/MenuItemImpl;)V

    .line 1006
    return-void
.end method

.method public final close(ZLandroid/support/v7/internal/view/menu/MenuItemImpl;)V
    .locals 4
    .param p1, "allMenusAreClosing"    # Z
    .param p2, "menuItem"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .prologue
    .line 1010
    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v3, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1012
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1013
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1014
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuPresenter;

    .line 1015
    .local v1, "presenter":Landroid/support/v7/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_1

    .line 1016
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1021
    :cond_1
    instance-of v3, v1, Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 1022
    check-cast v1, Landroid/support/v7/widget/ActionMenuPresenter;

    .end local v1    # "presenter":Landroid/support/v7/internal/view/menu/MenuPresenter;
    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v7/widget/ActionMenuPresenter;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;ZLandroid/support/v7/internal/view/menu/MenuItemImpl;)V

    goto :goto_1

    .line 1024
    .restart local v1    # "presenter":Landroid/support/v7/internal/view/menu/MenuPresenter;
    :cond_2
    invoke-interface {v1, p0, p1}, Landroid/support/v7/internal/view/menu/MenuPresenter;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    goto :goto_1

    .line 1029
    .end local v1    # "presenter":Landroid/support/v7/internal/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/internal/view/menu/MenuPresenter;>;"
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsClosing:Z

    goto :goto_0
.end method

.method public collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .prologue
    .line 1357
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eq v4, p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1375
    :cond_1
    :goto_0
    return v0

    .line 1359
    :cond_2
    const/4 v0, 0x0

    .line 1361
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1362
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1363
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/view/menu/MenuPresenter;

    .line 1364
    .local v2, "presenter":Landroid/support/v7/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_4

    .line 1365
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1366
    :cond_4
    invoke-interface {v2, p0, p1}, Landroid/support/v7/internal/view/menu/MenuPresenter;->collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1370
    .end local v2    # "presenter":Landroid/support/v7/internal/view/menu/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/internal/view/menu/MenuPresenter;>;"
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1372
    if-eqz v0, :cond_1

    .line 1373
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 815
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .prologue
    .line 1335
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 1353
    :cond_0
    :goto_0
    return v0

    .line 1337
    :cond_1
    const/4 v0, 0x0

    .line 1339
    .local v0, "expanded":Z
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1340
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1341
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/view/menu/MenuPresenter;

    .line 1342
    .local v2, "presenter":Landroid/support/v7/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_3

    .line 1343
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1344
    :cond_3
    invoke-interface {v2, p0, p1}, Landroid/support/v7/internal/view/menu/MenuPresenter;->expandItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1348
    .end local v2    # "presenter":Landroid/support/v7/internal/view/menu/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/internal/view/menu/MenuPresenter;>;"
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1350
    if-eqz v0, :cond_0

    .line 1351
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .param p1, "group"    # I
    .param p2, "start"    # I

    .prologue
    .line 710
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 712
    .local v2, "size":I
    if-gez p2, :cond_0

    .line 713
    const/4 p2, 0x0

    .line 716
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 717
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 719
    .local v1, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 724
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 716
    .restart local v0    # "i":I
    .restart local v1    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 724
    .end local v1    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 675
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 676
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 677
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 678
    .local v1, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 689
    .end local v1    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :goto_1
    return-object v1

    .line 680
    .restart local v1    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 681
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 683
    .local v2, "possibleItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 684
    goto :goto_1

    .line 676
    .end local v2    # "possibleItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    .end local v1    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 693
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 695
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 696
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 697
    .local v1, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 702
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 695
    .restart local v0    # "i":I
    .restart local v1    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    .end local v1    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 907
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 908
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 909
    invoke-virtual {p0, v2, p1, p2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 911
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 942
    :cond_0
    :goto_0
    return-object v8

    .line 915
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 916
    .local v3, "metaState":I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 918
    .local v4, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 921
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 922
    .local v7, "size":I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 923
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    goto :goto_0

    .line 926
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 929
    .local v5, "qwerty":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 930
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 931
    .local v1, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    .line 933
    .local v6, "shortcutChar":C
    :goto_2
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_3

    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_4

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v5, :cond_7

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    const/16 v9, 0x43

    if-ne p1, v9, :cond_7

    :cond_5
    move-object v8, v1

    .line 939
    goto :goto_0

    .line 931
    .end local v6    # "shortcutChar":C
    :cond_6
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_2

    .line 929
    .restart local v6    # "shortcutChar":C
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    const/16 v10, 0x43

    .line 863
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 864
    .local v6, "qwerty":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 865
    .local v4, "metaState":I
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 867
    .local v5, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 869
    .local v2, "isKeyCodeMapped":Z
    if-nez v2, :cond_1

    if-eq p2, v10, :cond_1

    .line 891
    :cond_0
    return-void

    .line 874
    :cond_1
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 875
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 876
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 877
    .local v3, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 878
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 880
    :cond_2
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    .line 881
    .local v7, "shortcutChar":C
    :goto_1
    and-int/lit8 v8, v4, 0x5

    if-nez v8, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    if-eqz v6, :cond_4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    if-ne p2, v10, :cond_4

    :cond_3
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 888
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 880
    .end local v7    # "shortcutChar":C
    :cond_5
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    goto :goto_1
.end method

.method public flagActionItems()V
    .locals 10

    .prologue
    .line 1146
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 1148
    .local v7, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    iget-boolean v8, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v8, :cond_0

    .line 1183
    :goto_0
    return-void

    .line 1153
    :cond_0
    const/4 v0, 0x0

    .line 1154
    .local v0, "flagged":Z
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 1155
    .local v6, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/MenuPresenter;

    .line 1156
    .local v5, "presenter":Landroid/support/v7/internal/view/menu/MenuPresenter;
    if-nez v5, :cond_1

    .line 1157
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1159
    :cond_1
    invoke-interface {v5}, Landroid/support/v7/internal/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_1

    .line 1163
    .end local v5    # "presenter":Landroid/support/v7/internal/view/menu/MenuPresenter;
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/internal/view/menu/MenuPresenter;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 1164
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1165
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1166
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1167
    .local v4, "itemsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_5

    .line 1168
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 1169
    .local v3, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1170
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1172
    :cond_3
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1178
    .end local v1    # "i":I
    .end local v3    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .end local v4    # "itemsSize":I
    :cond_4
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1179
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1180
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1182
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    goto :goto_0
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1186
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1187
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 734
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1191
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1192
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .prologue
    .line 1331
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 0

    .prologue
    .line 1312
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1101
    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 1116
    :goto_0
    return-object v3

    .line 1104
    :cond_0
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1106
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1108
    .local v2, "itemsSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1109
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 1110
    .local v1, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1113
    .end local v1    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1114
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1116
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 657
    iget-boolean v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    if-eqz v4, :cond_1

    .line 670
    :cond_0
    :goto_0
    return v3

    .line 661
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 663
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 664
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 665
    .local v1, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 670
    .end local v1    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isQwertyMode()Z
    .locals 1

    .prologue
    .line 774
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 739
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Landroid/support/v7/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 1096
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1097
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1098
    return-void
.end method

.method onItemVisibleChanged(Landroid/support/v7/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 1085
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1086
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1087
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 2
    .param p1, "structureChanged"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1045
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_1

    .line 1046
    if-eqz p1, :cond_0

    .line 1047
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1048
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1051
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 1055
    :goto_0
    return-void

    .line 1053
    :cond_1
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 948
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    .prologue
    .line 952
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/internal/view/menu/MenuPresenter;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;Landroid/support/v7/internal/view/menu/MenuPresenter;I)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "preferredPresenter"    # Landroid/support/v7/internal/view/menu/MenuPresenter;
    .param p3, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 956
    move-object v1, p1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 958
    .local v1, "itemImpl":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v0, v6

    .line 991
    :cond_1
    :goto_0
    return v0

    .line 962
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v0

    .line 964
    .local v0, "invoked":Z
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v2

    .line 965
    .local v2, "provider":Landroid/support/v4/view/ActionProvider;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .line 966
    .local v3, "providerHasSubMenu":Z
    :goto_1
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 967
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v6

    or-int/2addr v0, v6

    .line 968
    if-eqz v0, :cond_1

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .end local v3    # "providerHasSubMenu":Z
    :cond_3
    move v3, v6

    .line 965
    goto :goto_1

    .line 969
    .restart local v3    # "providerHasSubMenu":Z
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v3, :cond_8

    .line 970
    :cond_5
    invoke-virtual {p0, v6}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close(Z)V

    .line 972
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-nez v6, :cond_6

    .line 973
    new-instance v6, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0, v1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {v1, v6}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setSubMenu(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)V

    .line 976
    :cond_6
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    check-cast v4, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .line 977
    .local v4, "subMenu":Landroid/support/v7/internal/view/menu/SubMenuBuilder;
    if-eqz v3, :cond_7

    .line 978
    invoke-virtual {v2, v4}, Landroid/support/v4/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 980
    :cond_7
    invoke-direct {p0, v4, p2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->dispatchSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;Landroid/support/v7/internal/view/menu/MenuPresenter;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 981
    if-nez v0, :cond_1

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 983
    .end local v4    # "subMenu":Landroid/support/v7/internal/view/menu/SubMenuBuilder;
    :cond_8
    and-int/lit8 v6, p3, 0x1

    if-nez v6, :cond_1

    .line 986
    invoke-virtual {p0, v5, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close(ZLandroid/support/v7/internal/view/menu/MenuItemImpl;)V

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .prologue
    .line 840
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 842
    .local v1, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    const/4 v0, 0x0

    .line 844
    .local v0, "handled":Z
    if-eqz v1, :cond_0

    .line 845
    invoke-virtual {p0, v1, p3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 848
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 849
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close(Z)V

    .line 852
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5
    .param p1, "group"    # I

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 542
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 543
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 544
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    .local v2, "numRemoved":I
    move v3, v2

    .line 545
    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 547
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2    # "numRemoved":I
    .restart local v3    # "numRemoved":I
    goto :goto_0

    .line 551
    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 553
    .end local v1    # "maxRemovable":I
    .end local v2    # "numRemoved":I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 536
    return-void
.end method

.method public removeMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V
    .locals 4
    .param p1, "presenter"    # Landroid/support/v7/internal/view/menu/MenuPresenter;

    .prologue
    .line 271
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 272
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuPresenter;

    .line 273
    .local v1, "item":Landroid/support/v7/internal/view/menu/MenuPresenter;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    .line 274
    :cond_1
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    .end local v1    # "item":Landroid/support/v7/internal/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/internal/view/menu/MenuPresenter;>;"
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "states"    # Landroid/os/Bundle;

    .prologue
    .line 396
    if-nez p1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 403
    .local v7, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 404
    .local v3, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 405
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 406
    .local v2, "item":Landroid/view/MenuItem;
    invoke-static {v2}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v6

    .line 407
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 408
    invoke-virtual {v6, v7}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 410
    :cond_2
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 411
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .line 412
    .local v5, "subMenu":Landroid/support/v7/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 404
    .end local v5    # "subMenu":Landroid/support/v7/internal/view/menu/SubMenuBuilder;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 416
    .end local v2    # "item":Landroid/view/MenuItem;
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    const-string v8, "android:menu:expandedactionview"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 417
    .local v0, "expandedId":I
    if-lez v0, :cond_0

    .line 418
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 419
    .local v4, "itemToExpand":Landroid/view/MenuItem;
    if-eqz v4, :cond_0

    .line 420
    invoke-static {v4}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outStates"    # Landroid/os/Bundle;

    .prologue
    .line 369
    const/4 v5, 0x0

    .line 371
    .local v5, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 372
    .local v2, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 373
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 374
    .local v1, "item":Landroid/view/MenuItem;
    invoke-static {v1}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v4

    .line 375
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 376
    if-nez v5, :cond_0

    .line 377
    new-instance v5, Landroid/util/SparseArray;

    .end local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 379
    .restart local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    invoke-virtual {v4, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 380
    invoke-static {v1}, Landroid/support/v4/view/MenuItemCompat;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 381
    const-string v6, "android:menu:expandedactionview"

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    :cond_1
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 385
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .line 386
    .local v3, "subMenu":Landroid/support/v7/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v3, p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 372
    .end local v3    # "subMenu":Landroid/support/v7/internal/view/menu/SubMenuBuilder;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    if-eqz v5, :cond_4

    .line 391
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 393
    :cond_4
    return-void
.end method

.method public setCallback(Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 430
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;

    .line 431
    return-void
.end method

.method public setDefaultShowAsAction(I)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 0
    .param p1, "defaultShowAsAction"    # I

    .prologue
    .line 235
    iput p1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 236
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 597
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 599
    .local v2, "group":I
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 600
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 601
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 602
    .local v1, "curItem":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 603
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 600
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 604
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 607
    if-ne v1, p1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 610
    .end local v1    # "curItem":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_3
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .prologue
    .line 614
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 616
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 617
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 618
    .local v2, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 619
    invoke-virtual {v2, p3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 620
    invoke-virtual {v2, p2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 616
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    .end local v2    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 645
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 647
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 648
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 649
    .local v2, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 650
    invoke-virtual {v2, p2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 647
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v2    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 627
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 632
    .local v0, "N":I
    const/4 v1, 0x0

    .line 633
    .local v1, "changedAtLeastOneItem":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 634
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 635
    .local v3, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 636
    invoke-virtual {v3, p2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 633
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 640
    .end local v3    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_1
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 641
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1266
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1267
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1242
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1243
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1290
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1291
    return-object p0
.end method

.method public setOverrideVisibleItems(Z)V
    .locals 0
    .param p1, "override"    # Z

    .prologue
    .line 1388
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    .line 1389
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 744
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 746
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 747
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1070
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1072
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    .line 1073
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1074
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1076
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    .line 1063
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 1064
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1065
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1067
    :cond_0
    return-void
.end method
