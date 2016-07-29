.class public Lcom/meizu/common/util/ListViewProxy;
.super Ljava/lang/Object;
.source "ListViewProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static final ACTION_DRAG_FLAG_NFC_SHARE:I = 0x1

.field public static final ACTION_DRAG_FLAG_NONE:I = 0x0

.field public static final ACTION_TYPE_NORMAL:I = 0x0

.field public static final ACTION_TYPE_WARNING:I = 0x1

.field private static mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method; = null

.field private static mCheckedAll:Ljava/lang/reflect/Method; = null

.field private static mChoiceActionMode:Ljava/lang/reflect/Field; = null

.field private static mGetDragPosition:Ljava/lang/reflect/Method; = null

.field private static mNotifyDragDropAnimType:Ljava/lang/reflect/Method; = null

.field private static mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method; = null

.field private static mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method; = null

.field private static mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method; = null

.field private static mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method; = null

.field private static mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method; = null

.field private static mSetDragListenerMethod:Ljava/lang/reflect/Method; = null

.field private static mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method; = null

.field private static mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method; = null

.field private static mStartDragMz:Ljava/lang/reflect/Method; = null

.field private static mUnCheckedAll:Ljava/lang/reflect/Method; = null

.field private static final tag:Ljava/lang/String; = "AbsListViewProxy"


# instance fields
.field protected mAbsList:Landroid/widget/AbsListView;

.field private mIsFlyOS:Z


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "absList"    # Landroid/widget/AbsListView;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    .line 149
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    .line 150
    return-void
.end method

.method private createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 741
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getDragPostionAndId([J)V
    .locals 10
    .param p1, "array"    # [J

    .prologue
    const/4 v9, 0x0

    .line 751
    iget-object v6, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    if-eqz v6, :cond_1

    .line 753
    :try_start_0
    sget-object v6, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;

    if-nez v6, :cond_0

    .line 754
    const-class v6, Landroid/widget/AbsListView;

    const-string v7, "getDragPosition"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 762
    .local v0, "adapter":Landroid/widget/ListAdapter;
    sget-object v6, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 763
    const/4 v5, 0x0

    .line 766
    .local v5, "value":Ljava/lang/Object;
    :try_start_1
    sget-object v6, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    .line 775
    .end local v5    # "value":Ljava/lang/Object;
    :goto_1
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 776
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 777
    .local v4, "position":I
    iget-object v6, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    check-cast v0, Landroid/widget/ListAdapter;

    .line 779
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 781
    .local v2, "id":J
    int-to-long v6, v4

    aput-wide v6, p1, v9

    .line 782
    const/4 v6, 0x1

    aput-wide v2, p1, v6

    .line 786
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "id":J
    .end local v4    # "position":I
    :cond_1
    return-void

    .line 756
    :catch_0
    move-exception v1

    .line 757
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 758
    const/4 v6, 0x0

    sput-object v6, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 767
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 768
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 769
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 770
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 771
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 772
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static notifyDragDropAnimType(Landroid/view/View;I)Z
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 663
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v4

    if-nez v4, :cond_0

    .line 677
    :goto_0
    return v2

    .line 667
    :cond_0
    :try_start_0
    const-class v1, Landroid/view/View;

    .line 668
    .local v1, "viewClass":Ljava/lang/Class;
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    .line 669
    const-string v4, "notifyDragDropAnimType"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;

    .line 671
    :cond_1
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 672
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 673
    goto :goto_0

    .line 674
    .end local v1    # "viewClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AbsListViewProxy"

    const-string v4, "notifyDragDropAnimType fail to be invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v3, 0x0

    sput-object v3, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public static notifyStatusBarNfcShareStateChanged(Landroid/view/View;Z)Z
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "entered"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 689
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v4

    if-nez v4, :cond_0

    .line 704
    :goto_0
    return v2

    .line 693
    :cond_0
    :try_start_0
    const-class v1, Landroid/view/View;

    .line 694
    .local v1, "viewClass":Ljava/lang/Class;
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    .line 695
    const-string v4, "notifyStatusBarNfcShareStateChanged"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;

    .line 698
    :cond_1
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 699
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 700
    goto :goto_0

    .line 701
    .end local v1    # "viewClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AbsListViewProxy"

    const-string v4, "notifyStatusBarNfcShareStateChanged fail to be invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v3, 0x0

    sput-object v3, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public static setItemForChecked(Landroid/widget/AbsListView;Landroid/view/View;)Z
    .locals 6
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 718
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_1

    move v1, v3

    .line 719
    .local v1, "isSdkVersion21":Z
    :goto_0
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    :cond_0
    move v2, v4

    .line 736
    :goto_1
    return v2

    .end local v1    # "isSdkVersion21":Z
    :cond_1
    move v1, v4

    .line 718
    goto :goto_0

    .line 722
    .restart local v1    # "isSdkVersion21":Z
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_5

    .line 723
    const v2, 0x1020001

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 724
    .local v0, "checkbox":Landroid/view/View;
    if-eqz v0, :cond_5

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_5

    .line 725
    instance-of v2, v0, Lcom/meizu/common/widget/AnimCheckBox;

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 726
    check-cast v2, Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/AnimCheckBox;->setIsAnimation(Z)V

    .line 728
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 729
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_2
    move v2, v3

    .line 733
    goto :goto_1

    .line 731
    .restart local v0    # "checkbox":Landroid/view/View;
    :cond_4
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2

    :cond_5
    move v2, v4

    .line 736
    goto :goto_1
.end method

.method public static startDragMz(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "myLObject"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 636
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v4

    if-nez v4, :cond_0

    .line 651
    :goto_0
    return v2

    .line 640
    :cond_0
    :try_start_0
    const-class v1, Landroid/view/View;

    .line 641
    .local v1, "viewClass":Ljava/lang/Class;
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    .line 642
    const-string v4, "startDragMz"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/ClipData;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/View$DragShadowBuilder;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;

    .line 645
    :cond_1
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 646
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 647
    goto :goto_0

    .line 648
    .end local v1    # "viewClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AbsListViewProxy"

    const-string v4, "startDragMz fail to be invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v3, 0x0

    sput-object v3, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public applyMeizuPartitionStyle()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 281
    iget-boolean v4, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v4, v4, Landroid/widget/ListView;

    if-eqz v4, :cond_1

    .line 283
    :try_start_0
    const-class v1, Landroid/widget/ListView;

    .line 284
    .local v1, "listViewClass":Ljava/lang/Class;
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 285
    const-string v4, "applyMeizuPartitionStyle"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;

    .line 287
    :cond_0
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 288
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v1    # "listViewClass":Ljava/lang/Class;
    :goto_0
    return v2

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AbsListViewProxy"

    const-string v4, "setCenterListContent fail to be invoked"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v2, 0x0

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;

    move v2, v3

    .line 293
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 296
    goto :goto_0
.end method

.method protected bottomDeviderEnabled()Z
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x1

    return v0
.end method

.method public checkedAll()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 536
    iget-boolean v5, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v5, :cond_0

    .line 537
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 538
    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v4, v1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    .end local v1    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v5, v5, Landroid/widget/ListView;

    if-nez v5, :cond_2

    .line 543
    const-string v3, "tag"

    const-string v5, "the Target is not a ListView"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 557
    :cond_1
    :goto_1
    return v3

    .line 547
    :cond_2
    :try_start_0
    const-class v2, Landroid/widget/ListView;

    .line 548
    .local v2, "listViewClass":Ljava/lang/Class;
    sget-object v5, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    if-nez v5, :cond_3

    .line 549
    const-string v5, "checkedAll"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    .line 551
    :cond_3
    sget-object v5, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 552
    sget-object v5, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 554
    .end local v2    # "listViewClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sput-object v3, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    .line 556
    const-string v3, "AbsListViewProxy"

    const-string v5, "checkedAll fail to be invoked"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 557
    goto :goto_1
.end method

.method protected dividerEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 811
    const/4 v0, 0x1

    return v0
.end method

.method public finishMultiChoice()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 599
    iget-boolean v5, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v5, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v3

    .line 602
    :cond_1
    const/4 v1, 0x0

    .line 604
    .local v1, "actionMode":Landroid/view/ActionMode;
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    .line 605
    .local v0, "absListViewClass":Ljava/lang/Class;
    sget-object v5, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    if-nez v5, :cond_2

    .line 606
    const-string v5, "mChoiceActionMode"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sput-object v5, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    .line 608
    :cond_2
    sget-object v5, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 609
    sget-object v5, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    iget-object v6, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ActionMode;

    if-eqz v5, :cond_3

    .line 610
    sget-object v5, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    iget-object v6, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "actionMode":Landroid/view/ActionMode;
    check-cast v1, Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .restart local v1    # "actionMode":Landroid/view/ActionMode;
    :cond_3
    if-eqz v1, :cond_0

    .line 618
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    move v3, v4

    .line 619
    goto :goto_0

    .line 612
    .end local v0    # "absListViewClass":Ljava/lang/Class;
    .end local v1    # "actionMode":Landroid/view/ActionMode;
    :catch_0
    move-exception v2

    .line 613
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "AbsListViewProxy"

    const-string v5, "finishMultiChoice fail to be invoked"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v4, 0x0

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method protected getActionItemType(Landroid/view/MenuItem;)I
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerPadding(I)[I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 819
    const/4 v0, 0x0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v2, 0x0

    .line 159
    .local v2, "o":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "methodName":Ljava/lang/String;
    const-string v5, "onActionItemDragStart"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 161
    const/4 v3, 0x0

    .line 162
    .local v3, "retval":I
    array-length v5, p3

    if-lez v5, :cond_1

    .line 163
    const/4 v5, 0x0

    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v5, 0x1

    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v6, v8, v9}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragStart(IJ)I

    move-result v3

    .line 169
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 197
    .end local v1    # "methodName":Ljava/lang/String;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "retval":I
    :cond_0
    :goto_1
    return-object v2

    .line 165
    .restart local v1    # "methodName":Ljava/lang/String;
    .restart local v2    # "o":Ljava/lang/Object;
    .restart local v3    # "retval":I
    :cond_1
    const/4 v5, 0x2

    new-array v4, v5, [J

    .line 166
    .local v4, "temp":[J
    invoke-direct {p0, v4}, Lcom/meizu/common/util/ListViewProxy;->getDragPostionAndId([J)V

    .line 167
    const/4 v5, 0x0

    aget-wide v6, v4, v5

    long-to-int v5, v6

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragStart(IJ)I

    move-result v3

    goto :goto_0

    .line 170
    .end local v3    # "retval":I
    .end local v4    # "temp":[J
    :cond_2
    const-string v5, "onActionItemDrop"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    const/4 v5, 0x0

    aget-object v5, p3, v5

    check-cast v5, Landroid/view/MenuItem;

    const/4 v6, 0x1

    aget-object v6, p3, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v6, 0x2

    aget-object v6, p3, v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v5, v7, v8, v9}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDrop(Landroid/view/MenuItem;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 194
    .end local v1    # "methodName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "methodName":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v5, "onActionItemDragEnd"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 173
    array-length v5, p3

    if-lez v5, :cond_4

    .line 174
    const/4 v5, 0x0

    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v5, 0x1

    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v6, v8, v9}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragEnd(IJ)V

    goto :goto_1

    .line 176
    :cond_4
    const/4 v5, 0x2

    new-array v4, v5, [J

    .line 177
    .restart local v4    # "temp":[J
    invoke-direct {p0, v4}, Lcom/meizu/common/util/ListViewProxy;->getDragPostionAndId([J)V

    .line 178
    const/4 v5, 0x0

    aget-wide v6, v4, v5

    long-to-int v5, v6

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragEnd(IJ)V

    goto :goto_1

    .line 180
    .end local v4    # "temp":[J
    :cond_5
    const-string v5, "getActionItemType"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 181
    const/4 v5, 0x0

    aget-object v5, p3, v5

    check-cast v5, Landroid/view/MenuItem;

    invoke-virtual {p0, v5}, Lcom/meizu/common/util/ListViewProxy;->getActionItemType(Landroid/view/MenuItem;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "o":Ljava/lang/Integer;
    goto/16 :goto_1

    .line 182
    .local v2, "o":Ljava/lang/Object;
    :cond_6
    const-string v5, "onDragSelection"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 183
    const/4 v5, 0x0

    aget-object v5, p3, v5

    check-cast v5, Landroid/view/View;

    const/4 v6, 0x1

    aget-object v6, p3, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v6, 0x2

    aget-object v6, p3, v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v5, v7, v8, v9}, Lcom/meizu/common/util/ListViewProxy;->onDragSelection(Landroid/view/View;IJ)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "o":Ljava/lang/Boolean;
    goto/16 :goto_1

    .line 185
    .local v2, "o":Ljava/lang/Object;
    :cond_7
    const-string v5, "topDividerEnabled"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 186
    invoke-virtual {p0}, Lcom/meizu/common/util/ListViewProxy;->topDividerEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "o":Ljava/lang/Boolean;
    goto/16 :goto_1

    .line 187
    .local v2, "o":Ljava/lang/Object;
    :cond_8
    const-string v5, "dividerEnabled"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 188
    const/4 v5, 0x0

    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/meizu/common/util/ListViewProxy;->dividerEnabled(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "o":Ljava/lang/Boolean;
    goto/16 :goto_1

    .line 189
    .local v2, "o":Ljava/lang/Object;
    :cond_9
    const-string v5, "bottomDeviderEnabled"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 190
    invoke-virtual {p0}, Lcom/meizu/common/util/ListViewProxy;->bottomDeviderEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "o":Ljava/lang/Boolean;
    goto/16 :goto_1

    .line 191
    .local v2, "o":Ljava/lang/Object;
    :cond_a
    const-string v5, "getDividerPadding"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    const/4 v5, 0x0

    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/meizu/common/util/ListViewProxy;->getDividerPadding(I)[I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .local v2, "o":[I
    goto/16 :goto_1
.end method

.method protected onActionItemDragEnd(IJ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 796
    return-void
.end method

.method protected onActionItemDragStart(IJ)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method protected onActionItemDrop(Landroid/view/MenuItem;IJ)V
    .locals 0
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 793
    return-void
.end method

.method protected onDragSelection(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 803
    const/4 v0, 0x0

    return v0
.end method

.method public setCenterListContent(Z)Z
    .locals 1
    .param p1, "centerContent"    # Z

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public setDelayTopOverScrollEnabled(Z)Z
    .locals 9
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 207
    iget-boolean v4, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v4, :cond_1

    .line 209
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    .line 210
    .local v0, "absListViewClass":Ljava/lang/Class;
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 211
    const-string v4, "setDelayTopOverScrollEnabled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;

    .line 214
    :cond_0
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 215
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0    # "absListViewClass":Ljava/lang/Class;
    :goto_0
    return v2

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AbsListViewProxy"

    const-string v4, "setDelayTopOverScrollEnabled fail to be invoked"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v2, 0x0

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;

    move v2, v3

    .line 220
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 223
    goto :goto_0
.end method

.method public setDelayTopOverScrollOffset(I)Z
    .locals 9
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 233
    iget-boolean v4, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v4, :cond_1

    .line 235
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    .line 236
    .local v0, "absListViewClass":Ljava/lang/Class;
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 237
    const-string v4, "setDelayTopOverScrollOffset"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;

    .line 240
    :cond_0
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 241
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v0    # "absListViewClass":Ljava/lang/Class;
    :goto_0
    return v2

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AbsListViewProxy"

    const-string v4, "setDelayTopOverScrollOffset fail to be invoked"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v2, 0x0

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;

    move v2, v3

    .line 246
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 249
    goto :goto_0
.end method

.method public setDividerFilterListener()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 456
    iget-boolean v4, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v4, v4, Landroid/widget/ListView;

    if-nez v4, :cond_1

    .line 487
    :cond_0
    :goto_0
    return v3

    .line 462
    :cond_1
    :try_start_0
    const-string v4, "android.widget.ListView$DividerFilter"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 463
    .local v0, "DividerFilterListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    .line 464
    const-class v4, Landroid/widget/ListView;

    const-string v5, "setDividerFilterListener"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :cond_2
    const/4 v3, 0x0

    .line 475
    .local v3, "result":Z
    :try_start_1
    invoke-direct {p0, v0}, Lcom/meizu/common/util/ListViewProxy;->createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 476
    .local v1, "dividerFilterListener":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 477
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 478
    const/4 v3, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "DividerFilterListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "dividerFilterListener":Ljava/lang/Object;
    .end local v3    # "result":Z
    :catch_0
    move-exception v2

    .line 468
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    const/4 v0, 0x0

    .line 470
    .restart local v0    # "DividerFilterListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 480
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Z
    :catch_1
    move-exception v2

    .line 481
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 482
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 483
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 484
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 485
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDividerPaddingsListener()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 496
    iget-boolean v4, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v4, v4, Landroid/widget/ListView;

    if-nez v4, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v3

    .line 502
    :cond_1
    :try_start_0
    const-string v4, "android.widget.ListView$DividerPadding"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 503
    .local v0, "DividerPaddingListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    .line 504
    const-class v4, Landroid/widget/ListView;

    const-string v5, "setDividerPadding"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_2
    const/4 v3, 0x0

    .line 515
    .local v3, "result":Z
    :try_start_1
    invoke-direct {p0, v0}, Lcom/meizu/common/util/ListViewProxy;->createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 516
    .local v1, "dividerPaddingListener":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 517
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 518
    const/4 v3, 0x1

    goto :goto_0

    .line 507
    .end local v0    # "DividerPaddingListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "dividerPaddingListener":Ljava/lang/Object;
    .end local v3    # "result":Z
    :catch_0
    move-exception v2

    .line 508
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    const/4 v0, 0x0

    .line 510
    .restart local v0    # "DividerPaddingListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 520
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Z
    :catch_1
    move-exception v2

    .line 521
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 522
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 523
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 524
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 525
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEnableDragSelection(Z)Z
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 365
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v1

    .line 370
    :cond_1
    :try_start_0
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    .line 371
    const-class v2, Landroid/widget/ListView;

    const-string v3, "setEnableDragSelection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_2
    const/4 v1, 0x0

    .line 383
    .local v1, "result":Z
    :try_start_1
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 384
    const/4 v1, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    const/4 v2, 0x0

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 385
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "result":Z
    :catch_1
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEnableDragSelectionListener()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 404
    iget-boolean v4, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v4, v4, Landroid/widget/ListView;

    if-nez v4, :cond_1

    .line 446
    :cond_0
    :goto_0
    return v3

    .line 413
    :cond_1
    :try_start_0
    const-string v4, "android.widget.ListView$OnDragSelectListener"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 415
    .local v1, "dragSelectionListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    .line 416
    const-class v4, Landroid/widget/ListView;

    const-string v5, "setEnableDragSelection"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_2
    const/4 v3, 0x0

    .line 429
    .local v3, "result":Z
    :try_start_1
    invoke-direct {p0, v1}, Lcom/meizu/common/util/ListViewProxy;->createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 430
    .local v0, "dragSelectionListener":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 435
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 436
    const/4 v3, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "dragSelectionListener":Ljava/lang/Object;
    .end local v1    # "dragSelectionListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "result":Z
    :catch_0
    move-exception v2

    .line 420
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 421
    const/4 v1, 0x0

    .line 422
    .restart local v1    # "dragSelectionListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 438
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Z
    :catch_1
    move-exception v2

    .line 439
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 441
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 442
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 443
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEnabledMultiChoice()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 310
    iget-boolean v6, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v6, :cond_1

    .line 311
    iget-object v5, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 353
    :cond_0
    :goto_0
    return v4

    .line 316
    :cond_1
    const/4 v0, 0x4

    .line 318
    .local v0, "choiceMode":I
    :try_start_0
    const-string v6, "android.widget.AbsListView$OnItemDragListener"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 319
    .local v2, "dragListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;

    if-nez v6, :cond_2

    .line 320
    const-class v6, Landroid/widget/AbsListView;

    const-string v7, "setItemDragListener"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_2
    invoke-direct {p0, v2}, Lcom/meizu/common/util/ListViewProxy;->createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 336
    .local v1, "dragListener":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 337
    .local v4, "result":Z
    if-eqz v1, :cond_0

    .line 340
    :try_start_1
    sget-object v5, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v5, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 343
    const/4 v4, 0x1

    goto :goto_0

    .line 326
    .end local v1    # "dragListener":Ljava/lang/Object;
    .end local v2    # "dragListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "result":Z
    :catch_0
    move-exception v3

    .line 327
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    const/4 v2, 0x0

    .line 329
    .restart local v2    # "dragListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    sput-object v6, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;

    move v4, v5

    .line 330
    goto :goto_0

    .line 344
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "dragListener":Ljava/lang/Object;
    .restart local v4    # "result":Z
    :catch_1
    move-exception v3

    .line 345
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 346
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 347
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 348
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 349
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method protected topDividerEnabled()Z
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x1

    return v0
.end method

.method public unCheckedAll()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 567
    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v4, v4, Landroid/widget/ListView;

    if-nez v4, :cond_0

    .line 568
    const-string v3, "tag"

    const-string v4, "unchecked error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_0
    return v2

    .line 571
    :cond_0
    iget-boolean v4, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v4, :cond_1

    .line 572
    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->clearChoices()V

    .line 573
    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v4, v2, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 574
    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->requestLayout()V

    move v2, v3

    .line 575
    goto :goto_0

    .line 579
    :cond_1
    :try_start_0
    const-class v1, Landroid/widget/ListView;

    .line 580
    .local v1, "listViewClass":Ljava/lang/Class;
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    .line 581
    const-string v4, "unCheckedAll"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    .line 583
    :cond_2
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 584
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 585
    goto :goto_0

    .line 586
    .end local v1    # "listViewClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AbsListViewProxy"

    const-string v4, "unCheckedAll fail to be invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v3, 0x0

    sput-object v3, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    goto :goto_0
.end method
