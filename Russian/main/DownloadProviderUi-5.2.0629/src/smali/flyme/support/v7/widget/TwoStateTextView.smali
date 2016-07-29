.class public Lflyme/support/v7/widget/TwoStateTextView;
.super Landroid/widget/TextView;
.source "TwoStateTextView.java"


# instance fields
.field private mCancelSelectALl:Ljava/lang/String;

.field private mCurrentSelectedCount:I

.field private mForceUpdate:Z

.field private mSelectAll:Ljava/lang/String;

.field private mTotalCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/TwoStateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    iput v1, p0, Lflyme/support/v7/widget/TwoStateTextView;->mTotalCount:I

    .line 13
    const v0, 0x7fffffff

    iput v0, p0, Lflyme/support/v7/widget/TwoStateTextView;->mCurrentSelectedCount:I

    .line 17
    iput-boolean v1, p0, Lflyme/support/v7/widget/TwoStateTextView;->mForceUpdate:Z

    .line 29
    invoke-direct {p0}, Lflyme/support/v7/widget/TwoStateTextView;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lflyme/support/v7/widget/TwoStateTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/TwoStateTextView;->mSelectAll:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lflyme/support/v7/widget/TwoStateTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/TwoStateTextView;->mCancelSelectALl:Ljava/lang/String;

    .line 35
    return-void
.end method
