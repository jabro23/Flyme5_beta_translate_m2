.class public Lflyme/support/v7/util/ListViewProxyImpl;
.super Lflyme/support/v7/util/ListViewProxy;
.source "ListViewProxyImpl.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDividerPaddingEnd:I

.field private mDividerPaddingStart:I


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Landroid/content/Context;II)V
    .locals 5
    .param p1, "absList"    # Landroid/widget/AbsListView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-direct {p0, p1}, Lflyme/support/v7/util/ListViewProxy;-><init>(Landroid/widget/AbsListView;)V

    .line 27
    iput-object p2, p0, Lflyme/support/v7/util/ListViewProxyImpl;->mContext:Landroid/content/Context;

    .line 28
    iget-object v1, p0, Lflyme/support/v7/util/ListViewProxyImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->MzListViewProxy:[I

    invoke-static {v1, v2, v3, p3, p4}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v0

    .line 30
    .local v0, "a":Landroid/support/v7/internal/widget/TintTypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lflyme/support/v7/util/ListViewProxyImpl;->mDividerPaddingStart:I

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lflyme/support/v7/util/ListViewProxyImpl;->mDividerPaddingEnd:I

    .line 32
    return-void
.end method


# virtual methods
.method public getDividerPadding(I)[I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 36
    iget-object v4, p0, Lflyme/support/v7/util/ListViewProxyImpl;->mAbsList:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v0, v2

    .line 37
    .local v0, "isRtl":Z
    :goto_0
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 38
    .local v1, "padding":[I
    if-eqz v0, :cond_1

    .line 39
    iget v4, p0, Lflyme/support/v7/util/ListViewProxyImpl;->mDividerPaddingEnd:I

    aput v4, v1, v3

    .line 40
    iget v3, p0, Lflyme/support/v7/util/ListViewProxyImpl;->mDividerPaddingStart:I

    aput v3, v1, v2

    .line 45
    :goto_1
    return-object v1

    .end local v0    # "isRtl":Z
    .end local v1    # "padding":[I
    :cond_0
    move v0, v3

    .line 36
    goto :goto_0

    .line 42
    .restart local v0    # "isRtl":Z
    .restart local v1    # "padding":[I
    :cond_1
    iget v4, p0, Lflyme/support/v7/util/ListViewProxyImpl;->mDividerPaddingEnd:I

    aput v4, v1, v2

    .line 43
    iget v2, p0, Lflyme/support/v7/util/ListViewProxyImpl;->mDividerPaddingStart:I

    aput v2, v1, v3

    goto :goto_1
.end method
